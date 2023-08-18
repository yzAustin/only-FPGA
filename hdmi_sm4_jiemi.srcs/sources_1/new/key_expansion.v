module key_expansion(
    input clk,rst_n,
    input [127:0] mkey,
    input key_exp_start,
    input [4:0] ikey_n,
    output [31:0] ikey,
    output key_exp_done
);
localparam FK0 = 32'ha3b1bac6;
localparam FK1 = 32'h56aa3350;
localparam FK2 = 32'h677d9197;
localparam FK3 = 32'hb27022dc;
 
reg state_is_idle;
reg ram_ikey_wea;
reg [4:0] exp_counter;
reg [127:0] round_din_r;
wire [31:0] round_key_r;
wire [4:0] ram_ikey_addr;
wire [127:0] round_dout;
wire key_exp_trigger = state_is_idle&key_exp_start;
 
assign key_exp_done = ~state_is_idle&exp_counter==5'd31;
assign ram_ikey_addr = state_is_idle?ikey_n:exp_counter;
always @(posedge clk,negedge rst_n) begin
    if(~rst_n)state_is_idle<=1'b1;
    else if(key_exp_trigger)
        state_is_idle<=1'b0;
	 else if(key_exp_done)
		  state_is_idle<=1'b1;
	 else state_is_idle<=state_is_idle;
end
 
always @(posedge clk,negedge rst_n) begin
    if(~rst_n)ram_ikey_wea<=1'b0;
    else if(key_exp_trigger)
        ram_ikey_wea<=1'b1;
	 else if(key_exp_done)ram_ikey_wea<=1'b0;
	 else ram_ikey_wea<=ram_ikey_wea;
end
always @(posedge clk,negedge rst_n) begin
    if(~rst_n)exp_counter<=5'd0;
    else if(~state_is_idle)
        exp_counter<=exp_counter+1'b1;
end
always @(posedge clk,negedge rst_n) begin
    if(~rst_n)round_din_r<=128'd0;
    else if(key_exp_trigger)
		round_din_r<=mkey^{FK0,FK1,FK2,FK3};
	 else if(~state_is_idle)round_din_r<=round_dout;
    else round_din_r<=round_din_r;
end
 
get_cki u_cki(
	.round_cnt(exp_counter),
	.cki(round_key_r)
);
 
sm4_key_round u_key_round(
    .round_din(round_din_r),
    .round_ckey(round_key_r),
    .round_dout(round_dout) 
);
 
ram_ikey #(
	.DP(32),
    .AW(5),
    .DW(32)
) u_ram_ikey(
	.clk(clk),
	.din(round_dout[31:0]),
	.addr(ram_ikey_addr),
	.wea(ram_ikey_wea),
	.dout(ikey)
);
 
endmodule