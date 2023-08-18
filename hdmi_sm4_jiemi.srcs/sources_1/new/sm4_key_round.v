module sm4_key_round(
    input	[127:0]		round_din,
    input	[31:0]		round_ckey,
    output	[127:0]		round_dout 
);
 
wire [31:0] word_0,word_1,word_2,word_3;
wire [31:0] transform_din;
wire [31:0] transform_dout;
wire [7:0] sbox_bin0,sbox_bin1,sbox_bin2,sbox_bin3;
wire [7:0] sbox_bout0,sbox_bout1,sbox_bout2,sbox_bout3;
wire [31:0] sbox_wout={sbox_bout0,sbox_bout1,sbox_bout2,sbox_bout3};
 
assign {word_0,word_1,word_2,word_3} = round_din;
assign transform_din = word_1^word_2^word_3^round_ckey;
assign {sbox_bin0,sbox_bin1,sbox_bin2,sbox_bin3}=transform_din;
assign transform_dout = (sbox_wout^{sbox_wout[18:0],sbox_wout[31:19]})^{sbox_wout[8:0],sbox_wout[31:9]};
assign round_dout = {word_1,word_2,word_3,transform_dout^word_0};
 
s_box sbox0(
    .s_in(sbox_bin0),
    .s_out(sbox_bout0)														
);
s_box sbox1(
    .s_in(sbox_bin1),
    .s_out(sbox_bout1)														
);
s_box sbox2(
    .s_in(sbox_bin2),
    .s_out(sbox_bout2)														
);
s_box sbox3(
    .s_in(sbox_bin3),
    .s_out(sbox_bout3)														
);
 
endmodule