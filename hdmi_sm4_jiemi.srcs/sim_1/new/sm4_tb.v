module sm4_tb();
reg clk,rst_n;
reg [127:0] sm4_din;
reg [1:0] cmd;
wire [31:0] sm4_dout;
wire res_vld;
 
initial begin
clk=0;rst_n=0;
sm4_din=128'h0123456789abcdeffedcba9876543210;
cmd=0;
#10 rst_n=1;
#10 cmd=1;
#10 cmd=0;
wait(res_vld);
#10 cmd=2;
#10 cmd=0;
wait(res_vld);
#75 sm4_din=128'h681edf34d206965e86b3e94f536e4246;
#10 cmd=3;
#10 cmd=0;
wait(res_vld);
end
 
always #5 clk=~clk;
 
sm4_top u_sm4_top(
    .clk(clk),
	.rst_n(rst_n),
    .cmd(cmd),    //00:pause 01:key_exp 10:encrypt 11:decrypt
    .sm4_din(sm4_din),
    .sm4_dout(sm4_dout),
    .res_vld(res_vld)
);
endmodule