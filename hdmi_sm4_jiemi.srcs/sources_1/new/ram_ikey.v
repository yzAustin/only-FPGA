module ram_ikey #(
	parameter DP = 32,
    parameter AW = 8,
    parameter DW = 32
)(
	input clk,
	input [DW-1:0] din,
	input [AW-1:0] addr,
	input wea,
	output [DW-1:0] dout
);
reg [DW-1:0] mem_r [0:DP-1];
reg [AW-1:0] addr_r;
 
always @(posedge clk)
    if(~wea)addr_r<=addr;
 
always @(posedge clk)
    if(wea)
		mem_r[addr] <= din;
 
assign dout=mem_r[addr_r];
 
endmodule