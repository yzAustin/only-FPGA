module vga_pic(
    input   wire        vga_clk  ,
    input   wire        sys_rst_n,
    input   wire [11:0]  pix_x    ,
    input   wire [11:0]  pix_y    ,
    input   wire        key1,
    input   wire        key2,
    
    output  wire  [23:0] pix_data   
    );
    
////
//\* Parameter and Internal Signal \//
////
//parameter define
parameter H_VALID = 12'd1024 , //行有效数据
          V_VALID = 12'd768  ; //场有效数据

parameter H_PIC = 10'd160      , //行有效数据
          V_PIC = 10'd160      , //场有效数据
          PIC_MAX  = 16'd256_00;
         
parameter RED =    24'hff0000, //红色
          ORANGE = 24'hFF6100, //橙色
          YELLOW = 24'hffff00, //黄色
          GREEN =  24'h00ff00, //绿色
          CYAN =   24'h00ffff, //青色
          BLUE =   24'h0000ff, //蓝色
          PURPPLE =24'hCC00CC, //紫色
          BLACK =  24'h000000, //黑色
          WHITE =  24'hffffff, //白色
          GRAY =   24'hC0C0C0; //灰色
          
parameter Plaintext_MAX =  12'd1600 ;//PIC_MAX/16 
parameter Ciphertext_MAX = 12'd1600 ;//PIC_MAX/16 

          
wire             fifo1_wr_en   ;
wire             fifo1_rd_en   ;

wire            full_1;
wire            empty_1;

wire            rd_en   ;
reg [15:0]      rom_addr;
//==========================================================================
//==    原图ROM寄存器模块，原图显示模块
//寄存器读允许
assign  rd_en = ((pix_x >= 0) && (pix_x < H_PIC) && (pix_y >= 0) && (pix_y <  V_PIC));
//寄存器读地址，该寄存器预存数据原图COE文件
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rom_addr <= 1'd0;
    else if(rom_addr == PIC_MAX - 1)
        rom_addr <= 1'd0;
    else if(rd_en == 1'd1 && pix_x < H_PIC)
        rom_addr <= rom_addr + 16'd1;
        
wire [23 : 0] douta;

 
blk_mem_gen_0 rom_lena (
  .clka (vga_clk ),    // input wire clka
  .ena  (rd_en   ),      // input wire ena
  .addra(rom_addr),  // input wire [15 : 0] addra
  .douta(douta   )  // output wire [23 : 0] douta   1 clock
);


//==========================================================================
//==    灰度化，耗费0clk，灰度图显示模块
wire [23 : 0] gray;
wire [7:0] grayscale;
wire [7:0] o_fifo_gray;
assign grayscale = (douta[23:16]*76 + douta[15:8]*150 + douta[7:0]*30) >> 8;
assign gray = {o_fifo_gray,o_fifo_gray,o_fifo_gray} ;
//==========================================================================
assign  fifo1_wr_en = ((pix_x > 0) && (pix_x <= H_PIC) && (pix_y >= 0) && (pix_y <  V_PIC));
assign  fifo1_rd_en = ((pix_x > H_PIC) && (pix_x <= H_PIC+H_PIC) && (pix_y >= 0) && (pix_y <  V_PIC));

fifo_generator_0 fifo_gray_data(
  .clk(vga_clk),      // input wire clk
  .rst(~sys_rst_n),      // input wire rst
  .din(grayscale),      // input wire [7 : 0] din
  .wr_en(fifo1_wr_en),  // input wire wr_en
  .rd_en(fifo1_rd_en),  // input wire rd_en
  .dout(o_fifo_gray),    // output wire [7 : 0] dout
  .full(),    // output wire full
  .empty()  // output wire empty
);

//==========================================================================
//==    SM4加密模块
reg [4:0]   cnt_gray;
reg [10 : 0] wr_plaintext_addr;
reg [10 : 0] rd_plaintext_addr;
reg wr_plaintext_en;
wire rd_plaintext_en;
reg  [127 : 0] i_plaintext;
wire [127 : 0] o_plaintext;

reg [2:0] res_vld_cnt;
reg [1:0]   cmd       ;
wire[31:0] m4_ciphertext;
reg[127:0]  i_ciphertext;
wire res_vld      ;
localparam IDLE     = 3'd0;
localparam KEYEXP   = 3'd1;
localparam ENCRYPT  = 3'd2;
localparam DECRYPT  = 3'd3; 
reg [1:0] state_r;
wire state_is_idle      = (state_r==IDLE    );
wire state_is_decrypt   = (state_r==DECRYPT );
wire state_is_encrypt   = (state_r==ENCRYPT );

reg encrypt_done;
 
reg encrypt_ready;
reg decrypt_ready;
wire [31:0] m4_jiemi   ;
wire    res_vld_1       ;
reg [1:0]  cmd_1        ;
reg [2:0] res_vld_cnt_1 ;
//===============密文储存ram=========

wire        wr_ciphertext_en    ;
wire        rd_ciphertext_en    ;
reg [12:0] wr_ciphertext_addr   ;
reg [12:0] rd_ciphertext_addr   ;
wire [127:0]  o_ciphertext_128bit   ;
wire [127:0]  jiemi_ciphertext_128bit   ;
reg [127:0]  temp_ciphertext_128bit   ;
reg rd_ciphertext_en_reg;
wire [23:0]ciphertext_24bit;

//======  8bit拼接128bit计数cnt ============
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_gray <= 1'd0;
    else if(cnt_gray == 15)
        cnt_gray <= 1'd0;
    else if(fifo1_rd_en == 1'd1 )
        cnt_gray <= cnt_gray + 1'd1;
//======    8bit拼接128bit        ===========     
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        i_plaintext <= 1'd0; 
    else if(fifo1_rd_en == 1'd1 )
        i_plaintext = {i_plaintext[119:0],o_fifo_gray};
//======    8bit拼接128bit写地址   ===========  
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        wr_plaintext_addr <= 1'd0;
    else if((wr_plaintext_addr == Plaintext_MAX - 1) &&(wr_plaintext_en == 1'b1))
    begin
        wr_plaintext_addr <= 1'd0;
    end
    else if(wr_plaintext_en == 1'b1)
        wr_plaintext_addr <= wr_plaintext_addr + 12'd1;
//======    8bit拼接128bit写使能   ===========  
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        wr_plaintext_en <= 1'b0; 
    else if(cnt_gray == 15)
        wr_plaintext_en <= 1'b1;
    else
        wr_plaintext_en <= 1'b0;        
//======    8bit拼接128bit读使能   ===========  
assign rd_plaintext_en = ((encrypt_ready == 1) || (decrypt_ready == 1))&& (state_is_idle == 1)?1:0;
//======    8bit拼接128bit读地址   ===========        
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rd_plaintext_addr <= 1'd0;
    else if((rd_plaintext_addr == Plaintext_MAX) && ((res_vld_cnt == 5) || (res_vld_cnt_1 == 5)))
        rd_plaintext_addr <= 1'd0;
    else if(rd_plaintext_en == 1'b1 && (cmd == 0 || cmd_1 == 0))
        rd_plaintext_addr <= rd_plaintext_addr + 12'd1;   

RAM_128x2048_plaintext plaintext_inst (
  .clka(vga_clk),    // input wire clka
  .wea(wr_plaintext_en),      // input wire [0 : 0] wea
  .addra(wr_plaintext_addr),  // input wire [10 : 0] addra
  .dina(i_plaintext),    // input wire [127 : 0] dina
  .clkb(vga_clk),    // input wire clkb
  .enb(rd_plaintext_en),      // input wire enb
  .addrb(rd_plaintext_addr),  // input wire [10 : 0] addrb
  .doutb(o_plaintext)  // output wire [127 : 0] doutb
);


//======    加密开始信号RAM写满加密开始  ===========        
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        encrypt_ready <= 1'd0; 
    else if(encrypt_done == 1)
        encrypt_ready <= 1'd0; 
    else if(wr_plaintext_addr == Plaintext_MAX - 1)//写满了
        encrypt_ready <= 1'd1;
    else
        encrypt_ready <= encrypt_ready;
        
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)        
        encrypt_done <= 1'd0;
    else if ((rd_plaintext_addr == Plaintext_MAX) && (res_vld_cnt == 2))
        encrypt_done <= 1'd1;
//========= 解密开始信号 =============       
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)        
        decrypt_ready<= 1'd0;
    else if((wr_ciphertext_addr == Ciphertext_MAX - 1) &&(wr_ciphertext_en == 1'b1))
        decrypt_ready <= 1'd1;
     
//========== cnt输出计数 ===============
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        res_vld_cnt  <= 1'b0;
    else if(res_vld_cnt == 5)
        res_vld_cnt  <= 1'b0;
    else if(res_vld == 1)
        res_vld_cnt <= res_vld_cnt+1;

//============= 加密 ==================
  
always @(posedge vga_clk,negedge sys_rst_n) begin
    if(~sys_rst_n)
        state_r <= IDLE;
    else begin
        case(state_r)
        IDLE:            if((encrypt_ready == 1)||(decrypt_ready == 1))
                            state_r <= KEYEXP;
                            
        KEYEXP:         if((res_vld == 1)&&(encrypt_ready == 1))
                            state_r <= ENCRYPT; 
                        else if((res_vld_1 == 1)&&(decrypt_ready == 1))
                            state_r <= DECRYPT; 
        ENCRYPT:        if(res_vld_cnt == 5)
                            state_r <= IDLE;  
        DECRYPT:        if(res_vld_cnt_1 == 5)
                            state_r <= IDLE;  
                    
        endcase
    end   
end 
//============ 出写命令判断 ==========
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cmd  <= 1'b0;
    else if((state_r == IDLE) && (encrypt_ready == 1))
        cmd  <= 1;
    else if((state_r == KEYEXP)&&(res_vld == 1))
        cmd <= 2;
    else
        cmd <= 0;

sm4_top hdmi_data_sm4_encrypt(
     .clk       (vga_clk)       ,
     .rst_n   (sys_rst_n)       ,
     .cmd       (  cmd  )       ,    //00:pause 01:轮密钥准备 10:加密 11:解密
     .sm4_din   (o_plaintext)   ,
     .sm4_key   (o_plaintext)   ,
     .sm4_dout  (m4_ciphertext) ,
     .res_vld   (res_vld)
);
//===============密文显示模块===============
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        i_ciphertext <= 0;
    else if((res_vld_cnt >= 1) && (res_vld_cnt<5) && (res_vld))
        i_ciphertext <= {i_ciphertext[95:0],m4_ciphertext};

//===============写密文储存ram=========
assign wr_ciphertext_en = res_vld_cnt == 5 ;

always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        wr_ciphertext_addr <= 1'd0;
    else if((wr_ciphertext_addr == Ciphertext_MAX - 1) &&(wr_ciphertext_en == 1'b1))
    begin
        wr_ciphertext_addr <= 1'd0;
    end
    else if(wr_ciphertext_en == 1'b1)
        wr_ciphertext_addr <= wr_ciphertext_addr + 12'd1;
//===============读密文储存ram=========        
assign  rd_ciphertext_en = (pix_x >= H_PIC*2-1) && (pix_x < H_PIC*3-1) && (pix_y >= 0) && (pix_y <  V_PIC) && ((pix_x+1) % 16 == 0);
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rd_ciphertext_en_reg <= 0 ;
    else 
        rd_ciphertext_en_reg <= rd_ciphertext_en;
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rd_ciphertext_addr <= 1'd0;
    else if((rd_ciphertext_addr == Ciphertext_MAX - 1) &&(rd_ciphertext_en == 1'b1))
        rd_ciphertext_addr <= 1'd0;
    else if(rd_ciphertext_en == 1'b1)
        rd_ciphertext_addr <= rd_ciphertext_addr + 12'd1; 
     
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        temp_ciphertext_128bit<=0;
    else if (rd_ciphertext_en_reg == 1)
        temp_ciphertext_128bit <= o_ciphertext_128bit;
    else
        temp_ciphertext_128bit <= temp_ciphertext_128bit<<8;

RAM_128x2048_Ciphertext RAM_Ciphertext_hdmi (
  .clka(vga_clk),              // input wire clka
  .wea(wr_ciphertext_en),      // input wire [0 : 0] wea
  .addra(wr_ciphertext_addr),  // input wire [12 : 0] addra
  .dina(i_ciphertext),      // input wire [127 : 0] dina
  .clkb(vga_clk),              // input wire clkb
  .enb(rd_ciphertext_en),      // input wire enb
  .addrb(rd_ciphertext_addr),  // input wire [12 : 0] addrb 
  .doutb(o_ciphertext_128bit)   // output wire [127 : 0] doutb没数据
);
RAM_128x2048_Ciphertext RAM_Ciphertext_jiemi (
  .clka(vga_clk),              // input wire clka
  .wea(wr_ciphertext_en),      // input wire [0 : 0] wea
  .addra(wr_ciphertext_addr),  // input wire [12 : 0] addra
  .dina(i_ciphertext),      // input wire [127 : 0] dina
  .clkb(vga_clk),              // input wire clkb
  .enb(rd_plaintext_en),      // input wire enb
  .addrb(rd_plaintext_addr),  // input wire [12 : 0] addrb 
  .doutb(jiemi_ciphertext_128bit)   // output wire [127 : 0] doutb没数据
);
assign ciphertext_24bit = {temp_ciphertext_128bit[127:120],temp_ciphertext_128bit[127:120],temp_ciphertext_128bit[127:120]};

//============= 解密命令 ============
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cmd_1  <= 1'b0;
    else if((state_r == IDLE) && (decrypt_ready == 1))
        cmd_1 <= 1;
    else if((state_r == KEYEXP)&&(res_vld_1 == 1) )
        cmd_1 <= 3;
    else
        cmd_1 <= 0;
//========== cnt输出计数 ===============
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        res_vld_cnt_1  <= 1'b0;
    else if(res_vld_cnt_1 == 5)
        res_vld_cnt_1  <= 1'b0;
    else if(res_vld_1 == 1)
        res_vld_cnt_1 <= res_vld_cnt_1 + 1;
//==============  解密模块  ==========
sm4_top hdmi_data_sm4_decrypt(
     .clk       (vga_clk)             ,
     .rst_n   (sys_rst_n)             ,
     .cmd       (  cmd_1)             ,    //00:pause 01:轮密钥准备 10:加密 11:解密
     .sm4_din(jiemi_ciphertext_128bit),
     .sm4_key   (o_plaintext)         ,
     .sm4_dout  (m4_jiemi)            ,
     .res_vld   (res_vld_1)
);
reg [127:0] i_jiemi_data;
wire [127:0] o_jiemi_data;
reg [127:0] temp_jiemi_data;
//============== 解密后数据显示模块 ======
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        i_jiemi_data <= 0;
    else if((res_vld_cnt_1 >= 1) && (res_vld_cnt_1<5) && (res_vld_1))
        i_jiemi_data <= {i_jiemi_data[95:0],m4_jiemi};
//============== 解密后数据显示模块 ======
wire wr_jiemi_en;
reg  [11:0] wr_jiemi_addr;
wire rd_jiemi_en;
reg rd_jiemi_en_reg;

reg  [11:0] rd_jiemi_addr;
wire [23:0] jiemitext_24bit;
assign wr_jiemi_en = res_vld_cnt_1 == 5 ;

//============== 解密后数据写地址 ========
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        wr_jiemi_addr <= 1'd0;
    else if((wr_jiemi_addr == Ciphertext_MAX - 1) &&(wr_jiemi_en == 1'b1))
    begin
        wr_jiemi_addr <= 1'd0;
    end
    else if(wr_jiemi_en == 1'b1)
        wr_jiemi_addr <= wr_jiemi_addr + 12'd1;
//===============读密文储存ram=========        
assign  rd_jiemi_en = (pix_x >= H_PIC*3-1) && (pix_x < H_PIC*4-1) && (pix_y >= 0) && (pix_y <  V_PIC) && ((pix_x+1) % 16 == 0);
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rd_jiemi_en_reg <= 0 ;
    else 
        rd_jiemi_en_reg <= rd_jiemi_en;
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rd_jiemi_addr <= 1'd0;
    else if((rd_jiemi_addr == Ciphertext_MAX - 1) &&(rd_jiemi_en == 1'b1))
        rd_jiemi_addr <= 1'd0;
    else if(rd_jiemi_en == 1'b1)
        rd_jiemi_addr <= rd_jiemi_addr + 12'd1; 
     
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        temp_jiemi_data<=0;
    else if (rd_jiemi_en_reg == 1)
        temp_jiemi_data <= o_jiemi_data;
    else
        temp_jiemi_data <= temp_jiemi_data<<8;        
assign jiemitext_24bit = {temp_jiemi_data[127:120],temp_jiemi_data[127:120],temp_jiemi_data[127:120]};
        
RAM_128x2048_plaintext Ram_jiemi_data (
  .clka(vga_clk),    // input wire clka
  .wea(wr_jiemi_en),      // input wire [0 : 0] wea
  .addra(wr_jiemi_addr),  // input wire [10 : 0] addra
  .dina(i_jiemi_data),    // input wire [127 : 0] dina
  .clkb(vga_clk),    // input wire clkb
  .enb(rd_jiemi_en),      // input wire enb
  .addrb(rd_jiemi_addr),  // input wire [10 : 0] addrb
  .doutb(o_jiemi_data)  // output wire [127 : 0] doutb
);

//===============按键消抖模块======未启用
/*
wire key2_flag;
key_filter key_filter_2
(
    .sys_clk    (vga_clk) ,
    .sys_rst_n  (sys_rst_n) ,
    .key_in     (key2) ,
    
    .key_flag   (key2_flag)
    );
*/
//==========================================================================
//==    组合逻辑数据显示模块
assign pix_data = ((pix_x > 0) && (pix_x <= H_PIC) && (pix_y >= 0) && (pix_y <  V_PIC)) == 1 ? douta : //RGB888彩图显示
                    ((pix_x > H_PIC) && (pix_x <= H_PIC*2) && (pix_y >= 0) && (pix_y <  V_PIC) && (key1 == 1))  == 1 ? gray ://灰度图显示
                        ((pix_x > H_PIC*2) && (pix_x <= H_PIC*3) && (pix_y >= 0) && (pix_y <  V_PIC) && (key1 == 1) && (key2 == 1))  == 1 ?  ciphertext_24bit: //加密图显示
                            ((pix_x > H_PIC*3) && (pix_x <= H_PIC*4) && (pix_y >= 0) && (pix_y <  V_PIC) && (key1 == 1) && (key2 == 1))  == 1 ? jiemitext_24bit:24'h000000 ;//解密图显示
endmodule
