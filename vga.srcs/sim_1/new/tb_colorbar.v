`timescale 1ns / 1ns
module tb_colorbar(

    );
reg        sys_clk     ;
reg        sys_rst_n   ;
                        ;
wire        hsync       ;
wire        vsync       ;
wire  [15:0]rgb         ;   
   
initial
    begin
        sys_clk = 1'b1;
        sys_rst_n <= 1'b0;
        #20
        sys_rst_n <= 1'b1;
    end
    
always #10 sys_clk = ~sys_clk;
   
vga_colorbar vga_colorbar_inst(
    .sys_clk   (sys_clk  )  ,
    .sys_rst_n (sys_rst_n)  ,
                
    .hsync     (hsync    )  ,
    .vsync     (vsync    )  ,
    .rgb       (rgb      )  
    );
endmodule
