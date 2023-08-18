`timescale 1ns / 1ns
///////////////////////////////////////////////////////////////////
module hdmi_tb();
    
wire tmds_clk_p ;
wire tmds_clk_n ;
wire [2:0] tmds_data_p ;
wire [2:0] tmds_data_n ;

 //reg define
 reg sys_clk   ;
 reg sys_rst_n ;
 wire key1;
 wire key2;
 ////
 //\* Clk And Rst \//
 ////

 //sys_clk,sys_rst_n初始赋值
initial
    begin
    sys_clk = 1'b1;
    sys_rst_n <= 1'b0;
    #200
    sys_rst_n <= 1'b1;
    end

 //sys_clk：产生时钟
 always #20 sys_clk <= ~sys_clk ;
assign key1 = 1 ;
assign key2 = 1 ;

 ////
 //\* Instantiation \//
 ////

 //------------- hdmi_colorbar_inst -------------
 hdmi_top hdmi_top_inst
 (
 .sys_clk (sys_clk ), //输入工作时钟,频率25MHz
 .sys_rst_n (sys_rst_n ), //输入复位信号,低电平有效
 .key1(key1),
 .key2(key2),
 
 .tmds_clk_p (tmds_clk_p ),
 .tmds_clk_n (tmds_clk_n ), //HDMI时钟差分信号
 .tmds_data_p (tmds_data_p),
 .tmds_data_n (tmds_data_n) //HDMI图像差分信号
 );
endmodule
