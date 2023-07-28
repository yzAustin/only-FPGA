`timescale 1ns / 1ns
module HDMI_RS232_TB();
    
    
wire tmds_clk_p ;
wire tmds_clk_n ;
wire [2:0] tmds_data_p ;
wire [2:0] tmds_data_n ;

 //reg define
reg sys_clk   ;
reg sys_rst_n ;


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
always #20 sys_clk = ~sys_clk ;
 ////
 //\* Instantiation \//
 ////

 //------------- hdmi_colorbar_inst -------------
 hdmi_top hdmi_top_inst
 (
 .sys_clk (sys_clk ), //输入工作时钟,频率25MHz
 .sys_rst_n (sys_rst_n ), //输入复位信号,低电平有效
 .rx(rx),
 
 .tmds_clk_p (tmds_clk_p ),
 .tmds_clk_n (tmds_clk_n ), //HDMI时钟差分信号
 .tmds_data_p (tmds_data_p),
 .tmds_data_n (tmds_data_n) //HDMI图像差分信号
 );
reg            rx       ;

initial
    begin
        #200
        rx_bit(8'd0);
        rx_bit(8'd1);
        rx_bit(8'd2);
        rx_bit(8'd3);
        rx_bit(8'd4);
        rx_bit(8'd5);
        rx_bit(8'd6);
        rx_bit(8'd7);  
    end

 
task    rx_bit
(
    input   [7:0]   data
);
    integer i ;

for(i = 0; i<10 ;i = i+1)
    begin
    case(i)
        0:rx    <= 1'd0;
        1:rx    <= data[0];
        2:rx    <= data[1];
        3:rx    <= data[2];
        4:rx    <= data[3];
        5:rx    <= data[4];
        6:rx    <= data[5];
        7:rx    <= data[6];
        8:rx    <= data[7];
        9:rx    <= 1'b1;
    endcase
    #(5208 * 20);
    end
endtask
   
endmodule
