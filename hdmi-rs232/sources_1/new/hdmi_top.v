module hdmi_top(
input   wire    sys_clk,
input   wire    sys_rst_n,
input   wire    rx, 


output wire tmds_clk_p ,
output wire tmds_clk_n , //HDMI时钟差分信号
output wire [2:0] tmds_data_p ,
output wire [2:0] tmds_data_n //HDMI图像差分信号
);

wire        clk_50m ; 

wire   [7:0]po_data ;
wire        po_flag ;
reg   [1:0] data_cnt;
reg   [23:0]pi_data ;
reg         pi_flag ;

 wire vga_clk ; //VGA工作时钟,频率65MHz
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

always@(posedge clk_50m or negedge sys_rst_n)
    if(sys_rst_n == 1'b0) 
        data_cnt <= 0;
    else if(po_flag == 1'b1)
        data_cnt <=  data_cnt + 1;
    else if(data_cnt == 3)
        data_cnt <= 0;
    else
        data_cnt <= data_cnt;
        
always@(posedge clk_50m or negedge sys_rst_n)
    if(sys_rst_n == 1'b0) 
        pi_data <= 0;
    else if(po_flag == 1'b1)
        pi_data <= {pi_data[15:0],po_data};
    else
        pi_data <= pi_data;

always@(posedge clk_50m or negedge sys_rst_n)
    if(sys_rst_n == 1'b0) 
        pi_flag <= 0;
    else if(data_cnt == 3) 
        pi_flag <= 1;
    else
        pi_flag <= 0;
/*
assign pi_data = {po_data[7:5],5'b00000,po_data[4:2],5'b00000,po_data[1:0],6'b000000};
*/
assign rst_n = (sys_rst_n && locked)  ; 

parameter   UART_BPS    =   'd9600      ,
            CLK_FREQ    =   'd50_000_000;
            
uart_rx 
#(
    .UART_BPS(UART_BPS),
    .CLK_FREQ(CLK_FREQ)   
    
)
uart_rx_inst
(
    .sys_clk  (clk_50m),
    .sys_rst_n(rst_n),
    .rx       (rx),
            
    .po_data  (po_data),
    .po_flag  (po_flag)
    );

clk_wiz_0 clk_wiz_inst
(
    // Clock out ports
    .clk_50m(clk_50m),     // output clk_50m
    .clk_65m(vga_clk),     // output clk_65m
    .clk_325m(clk_5x),     // output clk_325m
    // Status and control signals
    .resetn(sys_rst_n), // input resetn
    .locked(locked),       // output locked
   // Clock in ports
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
 .rgb (rgb ) //输出像素点色彩信息,24bit
 );
 
vga_pic vga_pic_inst(
    .sys_clk   (clk_50m  ),//50
    .vga_clk   (vga_clk  ),//65
    .pi_data   (pi_data  ),
    .pi_flag   (pi_flag  ),
    .sys_rst_n (rst_n    ),
    .pix_x     (pix_x    ),
    .pix_y     (pix_y    ),
               
    . pix_data (pix_data)  
    );

wire [24:0] new_rgb ;
assign new_rgb = {rgb[23:16],rgb[7:0],rgb[15:8]};

rgb2dvi_0 rgb2dvi_inst (
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
