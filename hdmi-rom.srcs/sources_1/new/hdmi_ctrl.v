`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/18 20:00:56
// Design Name: 
// Module Name: hdmi_ctrl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hdmi_ctrl
(
input wire clk_1x , //输入系统时钟
input wire clk_5x , //输入5倍系统时钟
input wire sys_rst_n , //复位信号,低有效
input wire [7:0] rgb_blue , //蓝色分量
input wire [7:0] rgb_green , //绿色分量
input wire [7:0] rgb_red , //红色分量
input wire hsync , //行同步信号
input wire vsync , //场同步信号
input wire de , //使能信号

output wire hdmi_clk_p ,
output wire hdmi_clk_n , //时钟差分信号
output wire hdmi_r_p ,
output wire hdmi_r_n , //红色分量差分信号
output wire hdmi_g_p ,
output wire hdmi_g_n , //绿色分量差分信号
output wire hdmi_b_p ,
output wire hdmi_b_n //蓝色分量差分信号
);
////
//\* Parameter and Internal Signal \//
////
wire [9:0] red ; //8b转10b后的红色分量
wire [9:0] green ; //8b转10b后的绿色分量
wire [9:0] blue ; //8b转10b后的蓝色分量
 
//------------- encode_inst0 -------------
encode encode_inst0
(
.clkin (clk_1x ),
.rstin (~sys_rst_n ),
.din (rgb_blue ),
.c0 (hsync ),
.c1 (vsync ),
.de (de ),
.dout (blue )
);

//------------- encode_inst1 -------------
encode encode_inst1
(
.clkin (clk_1x ),
.rstin (~sys_rst_n ),
.din (rgb_green ),
.c0 (hsync ),
.c1 (vsync ),
.de (de ),
.dout (green )
);

//------------- encode_inst2 -------------
encode encode_inst2
(
.clkin (clk_1x ),
.rstin (~sys_rst_n ),
.din (rgb_red ),
.c0 (hsync ),
.c1 (vsync ),
.de (de ),
.dout (red )
);

 u_hdmi_ch0 u_hdmi_ch0
 (
   .data_out_from_device(blue), // input [9:0] data_out_from_device
   .data_out_to_pins_p(hdmi_b_p), // output [0:0] data_out_to_pins_p
   .data_out_to_pins_n(hdmi_b_n), // output [0:0] data_out_to_pins_n
   .clk_in(clk_5x), // input clk_in                            
   .clk_div_in(clk_1x), // input clk_div_in                        
   .io_reset(~sys_rst_n) // input io_reset
);

 u_hdmi_ch1 u_hdmi_ch1
 (
   .data_out_from_device(green), // input [9:0] data_out_from_device
   .data_out_to_pins_p(hdmi_g_p), // output [0:0] data_out_to_pins_p
   .data_out_to_pins_n(hdmi_g_n), // output [0:0] data_out_to_pins_n
   .clk_in(clk_5x), // input clk_in                            
   .clk_div_in(clk_1x), // input clk_div_in                        
   .io_reset(~sys_rst_n) // input io_reset
);

 u_hdmi_ch2 u_hdmi_ch2
 (
   .data_out_from_device(red), // input [9:0] data_out_from_device
   .data_out_to_pins_p(hdmi_r_p), // output [0:0] data_out_to_pins_p
   .data_out_to_pins_n(hdmi_r_n), // output [0:0] data_out_to_pins_n
   .clk_in(clk_5x), // input clk_in                            
   .clk_div_in(clk_1x), // input clk_div_in                        
   .io_reset(~sys_rst_n) // input io_reset
);

 u_hdmi_clk u_hdmi_clk
 (
   .data_out_from_device(10'b11111_00000), // input [9:0] data_out_from_device
   .data_out_to_pins_p(hdmi_clk_p), // output [0:0] data_out_to_pins_p
   .data_out_to_pins_n(hdmi_clk_n), // output [0:0] data_out_to_pins_n
   .clk_in(clk_5x), // input clk_in                            
   .clk_div_in(clk_1x), // input clk_div_in                        
   .io_reset(~sys_rst_n) // input io_reset
);
endmodule
