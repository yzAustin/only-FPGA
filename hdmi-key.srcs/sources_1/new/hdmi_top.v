module hdmi_top
(
input wire sys_clk , //输入工作时钟,频率50MHz
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
 wire [24:0] pix_data; //VGA像素点色彩信息
 wire hsync ; //输出行同步信号
 wire vsync ; //输出场同步信号
 wire [24:0] rgb ; //输出像素信息
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
    .clk_65m(vga_clk),     // output clk_65
    .clk_325m(clk_5x),     // output clk_325
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
 .key1(key1), //加密按钮
 .key2(key2), //解密按钮
 
 .pix_data (pix_data ) //输出像素点色彩信息,24bit

 );

 //------------- hdmi_ctrl_inst -------------
 /*
 hdmi_ctrl hdmi_ctrl_inst
 (
 .clk_1x (vga_clk ), //输入系统时钟
 .clk_5x (clk_5x ), //输入5倍系统时钟
 .sys_rst_n (rst_n ), //复位信号,低有效
 .rgb_blue (rgb[7:0]), //蓝色分量
 .rgb_green(rgb[15:8] ), //绿色分量
 .rgb_red  (rgb[23:16] ), //红色分量
 .hsync (hsync ), //行同步信号
 .vsync (vsync ), //场同步信号
 .de (rgb_valid ), //使能信号
 .hdmi_clk_p (tmds_clk_p ),
 .hdmi_clk_n (tmds_clk_n ), //时钟差分信号
 .hdmi_r_p (tmds_data_p[2] ),
 .hdmi_r_n (tmds_data_n[2] ), //红色分量差分信号
 .hdmi_g_p (tmds_data_p[1] ),
 .hdmi_g_n (tmds_data_n[1] ), //绿色分量差分信号
 .hdmi_b_p (tmds_data_p[0] ),
 .hdmi_b_n (tmds_data_n[0] ) //蓝色分量差分信号
 );
*/
wire [24:0] new_rgb ;
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
