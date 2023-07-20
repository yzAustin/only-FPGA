`timescale 1ns / 1ns

module tb_vga_ctrl();
reg     sys_clk     ;
reg     sys_rst_n   ;
wire [15:0] pix_data ;

wire    vga_clk ;
wire    locked  ;
wire    rst_n   ;

wire [9:0] pix_x ; //输出有效显示区域像素点X轴坐标
wire [9:0] pix_y ; //输出有效显示区域像素点Y轴坐标
wire       hsync ; //输出行同步信号        
wire       vsync ; //输出场同步信号          
wire [15:0] rgb  ;//输出像素点色彩信息   


initial
    begin
        sys_clk = 1'b1;
        sys_rst_n <= 1'b0;
        #20
        sys_rst_n <= 1'b1;
    end
    
always #10 sys_clk = ~sys_clk;

assign rst_n = (sys_rst_n && locked);

/* always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        pix_data <= 16'h0000;
    else    if((pix_x >= 10'd0 && pix_x <= 10'd639) &&
               (pix_y >= 10'd0 && pix_y <= 10'd479)) 
        pix_data <= 16'hffff;
    else
        pix_data <= 16'h0000; */
       
 clk_wiz_0 clk_wiz_inst
   (
    // Clock out ports
    .clk_out1(vga_clk),     // output clk_out1
    // Status and control signals
    .reset (~sys_rst_n), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(sys_clk));      // input clk_in1

vga_pic  vga_pic_inst
(
    .vga_clk  (vga_clk  ),
    .sys_rst_n(rst_n    ),
    .pix_x    (pix_x    ),
    .pix_y    (pix_y    ),
               
    .pix_data (pix_data )  
    );

vga_ctrl vga_ctrl_inst
(
    .vga_clk     (vga_clk  )  , //输入工作时钟,频率25MHz
    .sys_rst_n   (rst_n)      , //输入复位信号,低电平有效
    .pix_data    (pix_data )  , //输入像素点色彩信息
                  
    .pix_x       (pix_x    )  , //输出有效显示区域像素点X轴坐标
    .pix_y       (pix_y    )  , //输出有效显示区域像素点Y轴坐标
    .hsync       (hsync    )  , //输出行同步信号
    .vsync       (vsync    )  , //输出场同步信号
    .rgb         ( rgb     )    //输出像素点色彩信息
 );
 

    
 
 
endmodule
