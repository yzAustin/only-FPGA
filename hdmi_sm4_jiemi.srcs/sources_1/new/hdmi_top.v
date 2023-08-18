
module hdmi_top
(
input wire sys_clk , //输入工作时钟,频率25MHz
input wire sys_rst_n , //输入复位信号,低电平有效
input wire key1,
input wire key2,
/*
output wire ddc_scl ,
output wire ddc_sda ,
*/
output wire tmds_clk_p ,
output wire tmds_clk_n , //HDMI时钟差分信号
output wire [2:0] tmds_data_p ,
output wire [2:0] tmds_data_n //HDMI图像差分信号
 );

 ////
 //\* Parameter and Internal Signal \//
 ////
 //wire define
 wire vga_clk ; //VGA工作时钟,频率25MHz
 wire clk_5x ;
 wire locked ; //PLL locked信号
 wire rst_n ; //VGA模块复位信号
 wire [11:0] pix_x ; //VGA有效显示区域X轴坐标
 wire [11:0] pix_y ; //VGA有效显示区域Y轴坐标
 wire [23:0] pix_data; //VGA像素点色彩信息
 wire hsync ; //输出行同步信号
 wire vsync ; //输出场同步信号
 wire [23:0] rgb ; //输出像素信息
 wire rgb_valid;

 //rst_n:VGA模块复位信号
 assign rst_n = (sys_rst_n & locked);
 /*
 assign ddc_scl = 1'b1;
 assign ddc_sda = 1'b1;
*/
 ////
 //\* Instantiation \//
 ////

 //------------- clk_gen_inst -------------
clk_wiz_0 clk_wiz_inst
   (
    // Clock out ports
    .clk_out1(vga_clk),     // output clk_65
    .clk_out2(clk_5x),     // output clk_325
    // Status and control signals
    .resetn(sys_rst_n), // input resetn
    .locked(locked),       // output locked
   // Clock in ports 50mhz
    .clk_in1(sys_clk)      // input clk_in1
);

 //------------- vga_ctrl_inst -------------
 vga_ctrl vga_ctrl_inst
 (
 .vga_clk (vga_clk ), //输入工作时钟,频率25MHz,1bit
 .sys_rst_n (rst_n ), //输入复位信号,低电平有效,1bit
 .pix_data (pix_data ), //输入像素点色彩信息,24bit

 .pix_x (pix_x ), //输出VGA有效显示区域像素点X轴坐标,10bit
 .pix_y (pix_y ), //输出VGA有效显示区域像素点Y轴坐标,10bit
 .hsync (hsync ), //输出行同步信号,1bit
 .vsync (vsync ), //输出场同步信号,1bit
 .rgb_valid (rgb_valid ),
 .rgb (rgb ) //输出像素点色彩信息,16bit
 );

 //------------- vga_pic_inst -------------
 vga_pic vga_pic_inst
 (
 .vga_clk (vga_clk ), //输入工作时钟,频率25MHz,1bit
 .sys_rst_n (rst_n ), //输入复位信号,低电平有效,1bit
 .pix_x (pix_x ), //输入VGA有效显示区域像素点X轴坐标,10bit
 .pix_y (pix_y ), //输入VGA有效显示区域像素点Y轴坐标,10bit
 .key1(key1),
 .key2(key2),
 
 .pix_data (pix_data ) //输出像素点色彩信息,24bit

 );

 //------------- hdmi_ctrl_inst -------------

wire [23:0] new_rgb ;

assign new_rgb = {rgb[23:16],rgb[7:0],rgb[15:8]};

rgb2dvi_0 rgb2dvi__inst (
  .TMDS_Clk_p(tmds_clk_p),    // output wire TMDS_Clk_p
  .TMDS_Clk_n(tmds_clk_n),    // output wire TMDS_Clk_n
  .TMDS_Data_p(tmds_data_p),  // output wire [2 : 0] TMDS_Data_p
  .TMDS_Data_n(tmds_data_n),  // output wire [2 : 0] TMDS_Data_n
  .aRst_n(rst_n),            // input wire aRst_n
  .vid_pData(new_rgb),      // input wire [23 : 0] vid_pData
  .vid_pVDE(rgb_valid),        // input wire vid_pVDE
  .vid_pHSync(hsync),    // input wire vid_pHSync
  .vid_pVSync(vsync),    // input wire vid_pVSync
  .PixelClk(vga_clk),        // input wire PixelClk
  .SerialClk(clk_5x)      // input wire SerialClk
);

endmodule
