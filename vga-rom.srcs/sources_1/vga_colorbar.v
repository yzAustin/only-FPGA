module vga_colorbar(
input   wire        sys_clk     ,
input   wire        sys_rst_n   ,

output  wire        hsync       ,
output  wire        vsync       ,
output  wire  [15:0]rgb         

    );

wire    vga_clk     ; 
wire    locked      ;
wire    rst_n       ;
assign  rst_n = (sys_rst_n && locked);

wire  [9:0]  pix_x      ;
wire  [9:0]  pix_y      ;
wire  [15:0] pix_data   ;


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
