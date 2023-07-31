module vga_ctrl(
input wire vga_clk , //输入工作时钟,频率25MHz
input wire sys_rst_n , //输入复位信号,低电平有效
input wire [23:0] pix_data , //输入像素点色彩信息

output wire [9:0] pix_x , //输出有效显示区域像素点X轴坐标
output wire [9:0] pix_y , //输出有效显示区域像素点Y轴坐标
output wire hsync , //输出行同步信号
output wire vsync , //输出场同步信号
output wire [23:0] rgb, //输出像素点色彩信息
output wire rgb_valid
 );
`include "video_define.v"
//640x480 25.175Mhz
`ifdef  VIDEO_640_480
 parameter  H_SYNC  = 10'd96  ; //行同步
 parameter  H_BACK  = 10'd40  ; //行时序后沿
 parameter  H_LEFT  = 10'd8   ; //行时序左边框
 parameter  H_VALID = 10'd640 ; //行有效数据
 parameter  H_RIGHT = 10'd8   ; //行时序右边框
 parameter  H_FRONT = 10'd8   ; //行时序前沿
 parameter  H_TOTAL = 10'd800 ; //行扫描周期
 parameter  V_SYNC  = 10'd2   ; //场同步
 parameter  V_BACK  = 10'd25  ; //场时序后沿
 parameter  V_TOP   = 10'd8   ; //场时序上边框
 parameter  V_VALID = 10'd480 ; //场有效数据
 parameter  V_BOTTOM= 10'd8   ; //场时序下边框
 parameter  V_FRONT = 10'd2   ; //场时序前沿
 parameter  V_TOTAL = 10'd525 ; //场扫描周期
`endif


//1920x1080 148.5Mhz
`ifdef  VIDEO_1920_1080
 parameter  H_SYNC  = 10'd44   ; //行同步
 parameter  H_BACK  = 10'd148   ; //行时序后沿
 parameter  H_LEFT  = 1'd0    ; //行时序左边框
 parameter  H_VALID = 16'd1920 ; //行有效数据
 parameter  H_RIGHT = 1'd0   ; //行时序右边框
 parameter  H_FRONT = 10'd88   ; //行时序前沿
 parameter  H_TOTAL = 16'd2200 ; //行扫描周期
 parameter  V_SYNC  = 10'd5    ; //场同步
 parameter  V_BACK  = 10'd36   ; //场时序后沿
 parameter  V_TOP   = 1'd0     ; //场时序上边框
 parameter  V_VALID = 10'd1080 ; //场有效数据
 parameter  V_BOTTOM= 10'd0  ; //场时序下边框
 parameter  V_FRONT = 10'd4   ; //场时序前沿
 parameter  V_TOTAL = 10'd1125 ; //场扫描周期
`endif


reg     [9:0]   cnt_h   ;
reg     [9:0]   cnt_v   ;

wire        rgb_data_req;
 
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_h <= 10'd0;
    else    if(cnt_h == H_TOTAL - 1)
        cnt_h <= 10'd0;
    else
        cnt_h <= cnt_h +1'b1;

always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_v <= 10'd0;
    else    if((cnt_v == V_TOTAL - 1) && (cnt_h == H_TOTAL - 1))
        cnt_v <= 10'd0;
    else    if(cnt_h == H_TOTAL - 1)
        cnt_v <= cnt_v +1'b1;
    else
        cnt_v <= cnt_v;

assign rgb_valid = ((cnt_h >= H_SYNC + H_BACK + H_LEFT) //144
                    &&(cnt_h < H_SYNC + H_BACK + H_LEFT + H_VALID) //784
                    &&(cnt_v >= V_SYNC + V_BACK + V_TOP)
                    &&(cnt_v < V_SYNC + V_BACK + V_TOP + V_VALID))
                    ? 1'b1 : 1'b0 ;
assign rgb_data_req = ((cnt_h >= H_SYNC + H_BACK + H_LEFT - 2) //142
                    &&(cnt_h < H_SYNC + H_BACK + H_LEFT + H_VALID - 1 ) //783
                    &&(cnt_v >= V_SYNC + V_BACK + V_TOP)
                    &&(cnt_v < V_SYNC + V_BACK + V_TOP + V_VALID))
                    ? 1'b1 : 1'b0 ;

assign pix_x = (rgb_data_req == 1'b1) ? (cnt_h - (H_SYNC + H_BACK + H_LEFT - 2) ) : 10'h3ff;
assign pix_y = (rgb_data_req == 1'b1)? (cnt_v - (V_SYNC + V_BACK + V_TOP)) : 10'h3ff; 

assign hsync = (cnt_h <= H_SYNC - 1'b1) ? 1'b1 : 1'b0 ;

assign vsync = (cnt_v <= V_SYNC - 1'b1) ? 1'b1 : 1'b0 ;

assign rgb = (rgb_valid == 1'b1) ? pix_data : 24'h0000;


endmodule
