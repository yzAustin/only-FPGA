module vga_pic(
    input   wire        vga_clk  ,
    input   wire        sys_rst_n,
    input   wire [11:0]  pix_x    ,
    input   wire [11:0]  pix_y    ,
    input   wire         key1      ,
    input   wire         key2      ,
    
    output  wire  [23:0] pix_data   
    );
    
////
//\* Parameter and Internal Signal \//
////
//parameter define
parameter H_VALID = 12'd1024 , //行有效数据
          V_VALID = 12'd768  ; //场有效数据

parameter H_PIC = 10'd200      , //行有效数据
          V_PIC = 10'd200      , //场有效数据
          PIC_MAX  = 16'd400_00;
          
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


wire            a_rd_en   ;
wire            b_rd_en   ;

wire             fifo1_wr_en   ;
wire             fifo2_wr_en   ;
wire             fifo3_wr_en   ;
wire             fifo1_rd_en   ;
wire             fifo2_rd_en   ;
wire             fifo3_rd_en   ;

//wire[23:0]      pic_data;
//reg             pic_valid;
reg [15:0]      a_rom_addr;
reg [15:0]      b_rom_addr;
reg [15:0]      wr_addr;

 
assign  a_rd_en = ((pix_x >= 0) && (pix_x < H_PIC) && (pix_y >= 0) && (pix_y <  V_PIC));
assign  b_rd_en = ((pix_x >= 200) && (pix_x < H_PIC+200) && (pix_y >= 0) && (pix_y <  V_PIC) && key1);

assign  fifo1_wr_en = ((pix_x > 0) && (pix_x <= H_PIC) && (pix_y >= 0) && (pix_y <  V_PIC) && key1 );
assign  fifo1_rd_en = ((pix_x > 200) && (pix_x <= H_PIC+200) && (pix_y >= 0) && (pix_y <  V_PIC) && key1);

assign  fifo2_wr_en = ((pix_x > 200) && (pix_x <= H_PIC+200) && (pix_y >= 0) && (pix_y <  V_PIC) && key1 && key2 );
assign  fifo3_wr_en = ((pix_x > 200) && (pix_x <= H_PIC+200) && (pix_y >= 0) && (pix_y <  V_PIC) && key1 && key2 );
assign  fifo2_rd_en = ((pix_x > 400) && (pix_x <= H_PIC+400) && (pix_y >= 0) && (pix_y <  V_PIC) && key1 && key2 );
assign  fifo3_rd_en = ((pix_x > 400) && (pix_x <= H_PIC+400) && (pix_y >= 0) && (pix_y <  V_PIC) && key1 && key2 );

                
       
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        a_rom_addr <= 1'd0;
    else if(a_rom_addr == PIC_MAX - 1)
        a_rom_addr <= 1'd0;
    else if(a_rd_en == 1'd1 && pix_x < H_PIC)
        a_rom_addr <= a_rom_addr + 16'd1;

always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        b_rom_addr <= 1'd0;
    else if(b_rom_addr == PIC_MAX - 1)
        b_rom_addr <= 1'd0;
    else if(b_rd_en == 1'd1 && pix_x < H_PIC+200)
       b_rom_addr <= b_rom_addr + 16'd1;
/*       
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        wr_addr <= 1'd0;
    else if(wr_addr == PIC_MAX - 1)
        wr_addr <= 1'd0;
    else if(wr_en == 1'd1 && pix_x < H_PIC)
        wr_addr <= wr_addr + 16'd1;
*/

        
wire [23 : 0] a_douta;
wire [23 : 0] b_douta;

 
dog_24x65536 dog_24x65536_inst (
  .clka (vga_clk ),    // input wire clka
  .ena  (a_rd_en ),      // input wire ena
  .addra(a_rom_addr),  // input wire [15 : 0] addra
  .douta(a_douta   )  // output wire [23 : 0] douta   1 clock
);

cat_24x65536 cat_24x65536_inst (
  .clka (vga_clk ),    // input wire clka
  .ena  (b_rd_en ),      // input wire ena
  .addra(b_rom_addr),  // input wire [15 : 0] addra
  .douta(b_douta   )  // output wire [23 : 0] douta   1 clock
);
wire [23 : 0] key_data;
assign key_data = dout ^ b_douta;

wire [23 : 0] new1_pix_data;
wire [23 : 0] new2_pix_data;


assign pix_data = ((pix_x > 0) && (pix_x <= H_PIC) && (pix_y >= 0) && (pix_y <  V_PIC)) == 1 ? a_douta : new1_pix_data; //原图

assign new1_pix_data = ((pix_x > 200) && (pix_x <= H_PIC+200) && (pix_y >= 0) && (pix_y <  V_PIC))&& key1 == 1 ?key_data : new2_pix_data;//加密图

assign new2_pix_data = ((pix_x > 400) && (pix_x <= H_PIC+400) && (pix_y >= 0) && (pix_y <  V_PIC))&& key1 && key2 == 1 ? dout_1 ^ dout_2 :24'h000000;
/*
key_24x65536 key_24x65536_inst (
  .clka(vga_clk),    // input wire clka
  .wea(wr_en),      // input wire [0 : 0] wea
  .addra(wr_addr),  // input wire [15 : 0] addra
  .dina(key_data),    // input wire [23 : 0] dina
  .clkb(vga_clk),    // input wire clkb
  .enb(enb),      // input wire enb
  .addrb(addrb),  // input wire [15 : 0] addrb
  .doutb(doutb)  // output wire [23 : 0] doutb
);
*/
wire  full_0 ;
wire  full_1 ;
wire  full_2 ;
wire empty_0 ;
wire empty_1 ;
wire empty_2 ;


wire[23 : 0] dout;
wire[23 : 0] dout_1;
wire[23 : 0] dout_2;

scfifo_24x512 scfifo_24x512_inst1 (
  .clk(vga_clk),      // input wire clk
  .rst(~sys_rst_n),      // input wire rst
  .din(a_douta),      // input wire [23 : 0] din
  .wr_en(fifo1_wr_en),  // input wire wr_en
  .rd_en(fifo1_rd_en),  // input wire rd_en
  .dout(dout),    // output wire [23 : 0] dout
  .full(full_0  ),    // output wire full
  .empty(empty_0)  // output wire empty
);

scfifo_24x512_1 scfifo_24x512_1 (
  .clk(vga_clk   ),      // input wire clk
  .rst(~sys_rst_n),      // input wire rst
  .din(b_douta),      // input wire [23 : 0] din
  .wr_en(fifo2_wr_en),  // input wire wr_en
  .rd_en(fifo2_rd_en),  // input wire rd_en
  .dout(dout_1),    // output wire [23 : 0] dout
  .full(full_1 ),    // output wire full
  .empty(empty_1)  // output wire empty
);

scfifo_24x512_2 scfifo_24x512_2 (
  .clk(vga_clk   ),      // input wire clk
  .rst(~sys_rst_n),      // input wire rst
  .din(key_data),      // input wire [23 : 0] din
  .wr_en(fifo3_wr_en),  // input wire wr_en
  .rd_en(fifo3_rd_en),  // input wire rd_en
  .dout(dout_2),    // output wire [23 : 0] dout
  .full(full_2),    // output wire full
  .empty(empty_2)  // output wire empty
);        
endmodule
