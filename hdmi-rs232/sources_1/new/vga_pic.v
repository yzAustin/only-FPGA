module vga_pic(
    input   wire        sys_clk  ,//50
    input   wire        vga_clk  ,//65
    input   wire  [23:0]pi_data  ,
    input   wire        pi_flag  ,
    input   wire        sys_rst_n,
    input   wire  [11:0]pix_x    ,
    input   wire  [11:0]pix_y    ,
    
    
    output  wire  [23:0] pix_data   
    );
//parameter define
parameter H_VALID = 12'd1024 , //行有效数据
          V_VALID = 12'd768  ; //场有效数据

parameter H_PIC = 10'd200      , //行有效数据
          V_PIC = 10'd200      , //场有效数据
          PIC_MAX  = 16'd400_00;
          

wire            rd_en   ;
//wire[23:0]      pic_data;
//reg             pic_valid;
reg [15:0]      rd_addr;
reg [15:0]      wr_addr;

assign  rd_en = ((pix_x >= 0) && (pix_x < H_PIC) && (pix_y >= 0) && (pix_y <  V_PIC));

always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        wr_addr <= 16'd0;
    else if((wr_addr == PIC_MAX - 1) &&(pi_flag == 1'b1))
        wr_addr <= 16'd0;
    else if(pi_flag == 1'b1)
        wr_addr <= wr_addr +1 ;

always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rd_addr <= 1'd0;
    else if(rd_addr == PIC_MAX - 1)
        rd_addr <= 1'd0;
    else if(rd_en == 1'd1 && pix_x < H_PIC)
        rd_addr <= rd_addr + 16'd1;
        
wire [23 : 0] doutb;  
assign pix_data = ((pix_x > 0) && (pix_x <= H_PIC) && (pix_y >= 0) && (pix_y <  V_PIC)) == 1 ? doutb : 24'h000000;

blk_mem_gen_0 blk_mem_gen_ints
 (
  .clka (sys_clk),    // input wire clka
  .wea  (pi_flag),      // input wire [0 : 0] wea
  .addra(wr_addr),  // input wire [15 : 0] addra
  .dina(pi_data),    // input wire [23 : 0] dina
  .ena (pi_flag),
  
  .clkb (vga_clk),    // input wire clkb
  .enb  (rd_en),      // input wire enb
  .addrb(rd_addr),  // input wire [15 : 0] addrb
  .doutb(doutb)  // output wire [23 : 0] doutb
);  
 endmodule