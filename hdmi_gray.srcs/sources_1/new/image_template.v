`define TEMPLATE_3X3
module image_template
(
	input   wire				i_clk,
	input   wire				i_rst_n,
	input	wire				i_en,
	input	wire [7:0]			i_data,
	output	reg 				o_en,
	`ifdef TEMPLATE_3X3
	output  reg [7:0]			o_temp_11,
	output  reg [7:0]			o_temp_12,
	output  reg [7:0]			o_temp_13,	
	output  reg [7:0]			o_temp_21,
	output  reg [7:0]			o_temp_22,
	output  reg [7:0]			o_temp_23,		
	output  reg [7:0]			o_temp_31,
	output  reg [7:0]			o_temp_32,
	output  reg [7:0]			o_temp_33
	`endif
);
parameter  H_ACTIVE = 200;                              
parameter  V_ACTIVE = 200;  
 
reg  [10:0]	h_cnt;
reg  [10:0]	v_cnt;
 
wire [7:0]	fifo_1_in;
wire 		fifo_1_wr_en;
wire 		fifo_1_rd_en;
wire [7:0]	fifo_1_out;
 
wire [7:0]	fifo_2_in;
wire 		fifo_2_wr_en;
wire 		fifo_2_rd_en;
wire [7:0]	fifo_2_out;

always@(posedge i_clk or negedge i_rst_n) 
begin
    if(!i_rst_n)
	begin
        h_cnt <= 11'd0;
    end
    else if(i_en)
	begin
		if(h_cnt == H_ACTIVE - 1'b1)
			h_cnt <= 11'd0;
		else 
			h_cnt <= h_cnt + 11'd1;
    end
end
 
always@(posedge i_clk or negedge i_rst_n) 
begin
    if(!i_rst_n)
	begin
        v_cnt <= 11'd0;
    end
    else if(h_cnt == H_ACTIVE - 1'b1)
	begin
		if(v_cnt == V_ACTIVE - 1'b1)
			v_cnt <= 11'd0;
		else 
			v_cnt <= v_cnt + 11'd1;
    end
end
 
 
assign fifo_1_in	= i_data;
assign fifo_1_wr_en	= (v_cnt < V_ACTIVE - 1) ? i_en : 1'b0;
assign fifo_1_rd_en	= (v_cnt > 0) ? i_en : 1'b0;
 
assign fifo_2_in	= fifo_1_out;
assign fifo_2_wr_en	= (fifo_1_rd_en && v_cnt != V_ACTIVE-1)?1'b1:1'b0 ; //最后一行不写入了
assign fifo_2_rd_en	= (v_cnt > 1) ? i_en : 1'b0;
 
 
fifo_generator_1 u_fifo_1(
	.clk		(i_clk			), 
	.rst		(~i_rst_n		), 
	.din 		(fifo_1_in		),
	.wr_en		(fifo_1_wr_en	),
	.rd_en		(fifo_1_rd_en	),
	.dout 		(fifo_1_out		),
	.full 		(				),
	.empty		(				) 
);
 
fifo_generator_2 u_fifo_2(
	.clk		(i_clk			), 
	.rst		(~i_rst_n		), 
	.din 		(fifo_2_in		),
	.wr_en		(fifo_2_wr_en	),
	.rd_en		(fifo_2_rd_en	),
	.dout 		(fifo_2_out		),  
	.full 		(				),
	.empty		(				)
);
 
`ifdef TEMPLATE_3X3
always@(posedge i_clk or negedge i_rst_n) 
begin
    if(!i_rst_n) 
	begin
		o_temp_11	<= 8'd0;
		o_temp_12	<= 8'd0;
		o_temp_13	<= 8'd0;
		
		o_temp_21	<= 8'd0;
		o_temp_22	<= 8'd0;
		o_temp_23	<= 8'd0;
		
		o_temp_31	<= 8'd0;
		o_temp_32	<= 8'd0;
		o_temp_33	<= 8'd0;
    end
	else
	begin
		o_temp_11	<= o_temp_12;
		o_temp_12	<= o_temp_13;
		o_temp_13	<= fifo_2_out;
		
		o_temp_21	<= o_temp_22;
		o_temp_22	<= o_temp_23;
		o_temp_23	<= fifo_1_out;
		
		o_temp_31	<= o_temp_32;
		o_temp_32	<= o_temp_33;
		o_temp_33	<= i_data;	
	end
end
 


always@(posedge i_clk or negedge i_rst_n) 
begin
    if(!i_rst_n) 
	begin
		o_en	<= 1'b0;
    end
	else if((v_cnt > 1)&&(h_cnt > 1)&&(v_cnt <= V_ACTIVE-1)&&(h_cnt <= H_ACTIVE-1)&&(i_en == 1))
	begin
		o_en	<= 1'b1;
	end
	else
	begin
		o_en	<= 1'b0;
	end	
end
`endif
 
endmodule