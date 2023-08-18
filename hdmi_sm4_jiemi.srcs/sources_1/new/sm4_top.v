module sm4_top(
    input clk       ,
    input rst_n     ,
    input [1:0] cmd ,    //00:pause 01:key_exp 10:加密 11:解密
    input [127:0] sm4_din,
    input [127:0] sm4_key,
    output [31:0] sm4_dout,
    output reg res_vld
);
localparam IDLE     = 3'd0;
localparam KEYEXP   = 3'd1;
localparam ENCRYPT  = 3'd2;
localparam DECRYPT  = 3'd3;
localparam STRES    = 3'd4;
localparam OUTPUT   = 3'd5;
 
reg [2:0] state_r;
 
wire state_is_idle      = (state_r==IDLE    );
wire state_is_decrypt   = (state_r==DECRYPT );
 
reg [1:0] counter;
reg [4:0] ikey_en,ikey_de;
reg [127:0] sm4_round_din;
wire [127:0] sm4_round_dout;
wire [31:0] ikey;
wire key_exp_done;
wire key_exp_start = state_is_idle&cmd==2'b01;
wire [4:0] ikey_n = (state_is_decrypt|cmd==2'b11)?ikey_de:ikey_en;
 
assign sm4_dout = sm4_round_din[127:96];
 
always @(posedge clk,negedge rst_n) begin
if(~rst_n)begin
    state_r<=IDLE;
    counter<=2'd0;
    ikey_en<=5'd0;
    ikey_de<=5'd31;
    sm4_round_din<=128'd0;
    res_vld<=1'b0;
end
else begin
    case (state_r)
    IDLE:begin
        res_vld<=1'b0;
        sm4_round_din<=sm4_din;
        case (cmd)
        2'b00:state_r<=IDLE;
        2'b01:state_r<=KEYEXP;
        2'b10:begin
            ikey_en<=ikey_en+1'b1;
            state_r<=ENCRYPT;
        end
        2'b11:begin
            ikey_de<=ikey_de-1'b1;
            state_r<=DECRYPT;
        end
        default: state_r<=IDLE;
        endcase
    end
    KEYEXP:begin
        if(key_exp_done)begin
            res_vld<=1'b1;
            state_r<=IDLE;
        end
    end
    ENCRYPT:begin
        sm4_round_din<=sm4_round_dout;
        ikey_en<=ikey_en+1'b1;
        if(ikey_en==5'd31)
            state_r<=STRES;
    end
    DECRYPT:begin
        sm4_round_din<=sm4_round_dout;
        ikey_de<=ikey_de-1'b1;
        if(ikey_de==5'd0)
            state_r<=STRES;
    end
    STRES:begin
        sm4_round_din<={sm4_round_dout[31:0],sm4_round_dout[63:32],sm4_round_dout[95:64],sm4_round_dout[127:96]};
        res_vld<=1'b1;
        state_r<=OUTPUT;
    end
    OUTPUT:begin
        counter<=counter+1'b1;
        sm4_round_din<={sm4_round_din[95:0],32'd0};
        if(counter==2'd3)begin
            res_vld<=1'b0;
            state_r<=IDLE;
        end
    end
    default: state_r<=IDLE;
    endcase
end
end
 
sm4_encdec_round u_sm4_round(
    .round_din(sm4_round_din),
    .round_key(ikey),
    .round_dout(sm4_round_dout) 
);
 
key_expansion u_key_exp(
    .clk(clk),
    .rst_n(rst_n),
    .mkey(sm4_key),
    .key_exp_start(key_exp_start),
    .ikey_n(ikey_n),
    .ikey(ikey),
    .key_exp_done(key_exp_done)
);
endmodule