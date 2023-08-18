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

wire             fifo1_wr_en   ;
wire             fifo1_rd_en   ;

wire            full_1;
wire            empty_1;

wire            rd_en   ;
//wire[23:0]      pic_data;
//reg             pic_valid;
reg [15:0]      rom_addr;

assign  rd_en = ((pix_x >= 0) && (pix_x < H_PIC) && (pix_y >= 0) && (pix_y <  V_PIC));

always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rom_addr <= 1'd0;
    else if(rom_addr == PIC_MAX - 1)
        rom_addr <= 1'd0;
    else if(rd_en == 1'd1 && pix_x < H_PIC)
        rom_addr <= rom_addr + 16'd1;
        
wire [23 : 0] douta;
wire [23 : 0] gray_data;
wire [23 : 0] gauss_filter_data;
 
blk_mem_gen_0 blk_mem_gen_inst (
  .clka (vga_clk ),    // input wire clka
  .ena  (rd_en   ),      // input wire ena
  .addra(rom_addr),  // input wire [15 : 0] addra
  .douta(douta   )  // output wire [23 : 0] douta   1 clock
);



//==========================================================================
//==    灰度化，耗费0clk
wire [7:0] grayscale;
wire [23:0] gray;
wire [23:0] dout;
assign grayscale = (dout[23:16]*76 + dout[15:8]*150 + dout[7:0]*30) >> 8;
assign gray = {grayscale,grayscale,grayscale} ;
//==========================================================================
assign  fifo1_wr_en = ((pix_x > 0) && (pix_x <= H_PIC) && (pix_y >= 0) && (pix_y <  V_PIC) && key1 );
assign  fifo1_rd_en = ((pix_x > 200) && (pix_x <= H_PIC+200) && (pix_y >= 0) && (pix_y <  V_PIC) && key1);

fifo_generator_0 fifo_generator_inst0(
  .clk(vga_clk),      // input wire clk
  .rst(~sys_rst_n),      // input wire rst
  .din(douta),      // input wire [23 : 0] din
  .wr_en(fifo1_wr_en),  // input wire wr_en
  .rd_en(fifo1_rd_en),  // input wire rd_en
  .dout(dout),    // output wire [23 : 0] dout
  .full(),    // output wire full
  .empty()  // output wire empty
);

//高斯模块
wire o_en   ;
wire fifo3_rd_en   ;
wire fifo3_wr_en   ;

wire [7:0] temp_gauss;
wire [7:0] temp_11;
wire [7:0] temp_12;
wire [7:0] temp_13;
wire [7:0] temp_21;
wire [7:0] temp_22;
wire [7:0] temp_23;
wire [7:0] temp_31;
wire [7:0] temp_32;
wire [7:0] temp_33;
//高斯卷积计算
//gaussian ------------------------------------------
reg     [11:0]              gs_1                    ;
reg     [11:0]              gs_2                    ;
reg     [11:0]              gs_3                    ;
reg     [11:0]              gs                      ;
reg     [7:0] gauss_data;
//==========================================================================
//==    高斯滤波，耗费3clk
//==========================================================================
//clk1，左中右的一列值
//---------------------------------------------------
always@(posedge vga_clk or negedge sys_rst_n)
begin
    if(sys_rst_n == 1'b0)begin
        gs_1 <= 'd0;
        gs_2 <= 'd0;
        gs_3 <= 'd0;
    end
    else begin
        gs_1 <= temp_11     + temp_12 * 2 + temp_13;
        gs_2 <= temp_21 * 2 + temp_22 * 4 + temp_23 * 2;
        gs_3 <= temp_31     + temp_32 * 2 + temp_33;
    end
end

//clk2，相加
//---------------------------------------------------
always @(posedge vga_clk or negedge sys_rst_n)begin
    if(sys_rst_n == 1'b0)begin
        gs <= 'd0;
    end
    else begin
        gs <= gs_1 + gs_2 + gs_3;
    end
end

//clk3，除以16 -> 右移4位 -> 取高8位
//---------------------------------------------------
always @(posedge vga_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
        gauss_data <= 'd0;
    end
    else begin
        gauss_data <= gs[11:4];
    end
end

//------------------------------------------

//取高八位代替除十六
wire temp_wr_en;
wire ram_rd_en;

assign  temp_wr_en = ((pix_x > 200) && (pix_x <= H_PIC+200) && (pix_y >= 0) && (pix_y <  V_PIC) && key1 && key2 );
assign  ram_rd_en = (((pix_x >= 0) && (pix_x < H_PIC-2) && (pix_y >= 200) && (pix_y < V_PIC+198))&& key1 && key2 );
assign  ram_wr_en = (((pix_x >= 200+7) && (pix_x < 405) && (pix_y >= 2) && (pix_y < V_PIC))&& key1 && key2 );



reg [15:0] ram_wr_addr;
reg [15:0] ram_rd_addr;


always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        ram_wr_addr <= 1'd0;
    else if(ram_wr_addr == 16'd39204 - 1)
        ram_wr_addr <= 1'd0;
    else if(ram_wr_en == 1'd1 )
        ram_wr_addr <= ram_wr_addr + 16'd1;

always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        ram_rd_addr <= 1'd0;
    else if(ram_rd_addr == 16'd39204 - 1)
        ram_rd_addr <= 1'd0;
    else if(ram_rd_en == 1'd1 )
        ram_rd_addr <= ram_rd_addr + 16'd1;        
/*
reg   temp_o_en;
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        temp_o_en<= 0;
    else 
        temp_o_en <= o_en;
*/   
blk_mem_gen_1 ram_inst (
  .clka(vga_clk),    // input wire clka
  .wea(ram_wr_en),      // input wire [0 : 0] wea
  .addra(ram_wr_addr),  // input wire [15 : 0] addra
  .dina(gauss_data[7:0]),    // input wire [7 : 0] dina
  .clkb(vga_clk),    // input wire clkb
  .enb(ram_rd_en),      // input wire enb
  .addrb(ram_rd_addr),  // input wire [15 : 0] addrb
  .doutb(temp_gauss)  // output wire [7 : 0] doutb
);
//消耗3个时钟单位
image_template image_template_isnt(
        .i_clk    (vga_clk)  ,
        .i_rst_n  (sys_rst_n)  ,
        .i_en     (temp_wr_en)  ,
        .i_data   (grayscale)  ,
        
        .o_en    (o_en),
        .o_temp_11(temp_11),
        .o_temp_12(temp_12),
        .o_temp_13(temp_13),
        .o_temp_21(temp_21),
        .o_temp_22(temp_22),
        .o_temp_23(temp_23),
        .o_temp_31(temp_31),
        .o_temp_32(temp_32),
        .o_temp_33(temp_33)
);


assign pix_data = ((pix_x > 0) && (pix_x <= H_PIC) && (pix_y >= 0) && (pix_y <  V_PIC)) == 1 ? douta : gray_data;//RGB888彩图显示
assign gray_data = ((pix_x > 200) && (pix_x <= H_PIC+200) && (pix_y >= 0) && (pix_y <  V_PIC))&& key1 == 1 ? gray : gauss_filter_data;//灰度图显示
assign gauss_filter_data = ((pix_x > 0) && (pix_x <= 198) && (pix_y >= 200) && (pix_y <  V_PIC+198)&& key1 && key2 )== 1 ? {temp_gauss,temp_gauss,temp_gauss} :24'h000000;//高斯滤波图显示
endmodule
