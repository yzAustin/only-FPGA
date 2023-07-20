// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jul  3 16:13:12 2023
// Host        : LAPTOP-GC2Q33N2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Fpga_project/rom_vga/project_1.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "7" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.264701 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16384" *) 
  (* C_READ_DEPTH_B = "16384" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16384" *) 
  (* C_WRITE_DEPTH_B = "16384" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module blk_mem_gen_0_bindec
   (ena_array,
    ena,
    addra);
  output [2:0]ena_array;
  input ena;
  input [1:0]addra;

  wire [1:0]addra;
  wire ena;
  wire [2:0]ena_array;

  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(ena),
        .I1(addra[0]),
        .I2(addra[1]),
        .O(ena_array[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[1]),
        .I1(addra[0]),
        .I2(ena),
        .O(ena_array[1]));
  LUT3 #(
    .INIT(8'h40)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(addra[0]),
        .I1(ena),
        .I2(addra[1]),
        .O(ena_array[2]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (douta,
    addra,
    ena,
    clka);
  output [15:0]douta;
  input [13:0]addra;
  input ena;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
  wire [2:0]ena_array;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_8 ;

  blk_mem_gen_0_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:12]),
        .ena(ena),
        .ena_array(ena_array));
  blk_mem_gen_0_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[7].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[5].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .DOADO({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .DOPADOP(\ramloop[6].ram.r_n_8 ),
        .addra(addra[13:12]),
        .clka(clka),
        .douta(douta[15:7]),
        .ena(ena));
  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[0]),
        .ena(ena));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[2:1]),
        .ena(ena));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[4:3]),
        .ena(ena));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[6:5]),
        .ena(ena));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .\douta[14] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\douta[15] (\ramloop[4].ram.r_n_8 ),
        .ena_array(ena_array[0]));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .\douta[14] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\douta[15] (\ramloop[5].ram.r_n_8 ),
        .ena_array(ena_array[1]));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.DOADO({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .DOPADOP(\ramloop[6].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[2]));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra),
        .clka(clka),
        .\douta[14] ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\douta[15] (\ramloop[7].ram.r_n_8 ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_0_blk_mem_gen_mux
   (douta,
    addra,
    ena,
    clka,
    DOPADOP,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    DOADO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 );
  output [8:0]douta;
  input [1:0]addra;
  input ena;
  input clka;
  input [0:0]DOPADOP;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [7:0]DOADO;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [1:0]addra;
  wire clka;
  wire [8:0]douta;
  wire ena;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ;
  wire [1:0]sel_pipe;

  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[10]_INST_0 
       (.I0(DOADO[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [3]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [3]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [3]),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[11]_INST_0 
       (.I0(DOADO[4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [4]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [4]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [4]),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[12]_INST_0 
       (.I0(DOADO[5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [5]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [5]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [5]),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[13]_INST_0 
       (.I0(DOADO[6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [6]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [6]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [6]),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[14]_INST_0 
       (.I0(DOADO[7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [7]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [7]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [7]),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[15]_INST_0 
       (.I0(DOPADOP),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[7]_INST_0 
       (.I0(DOADO[0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [0]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [0]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [0]),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[8]_INST_0 
       (.I0(DOADO[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [1]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [1]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [1]),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[9]_INST_0 
       (.I0(DOADO[2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 [2]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 [2]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 [2]),
        .O(douta[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 
       (.I0(addra[0]),
        .I1(ena),
        .I2(sel_pipe[0]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 
       (.I0(addra[1]),
        .I1(ena),
        .I2(sel_pipe[1]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ),
        .Q(sel_pipe[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra);
  output [0:0]douta;
  input clka;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [0:0]douta;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0
   (douta,
    clka,
    ena,
    addra);
  output [1:0]douta;
  input clka;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1
   (douta,
    clka,
    ena,
    addra);
  output [1:0]douta;
  input clka;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2
   (douta,
    clka,
    ena,
    addra);
  output [1:0]douta;
  input clka;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3
   (\douta[14] ,
    \douta[15] ,
    clka,
    ena_array,
    addra);
  output [7:0]\douta[14] ;
  output [0:0]\douta[15] ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [7:0]\douta[14] ;
  wire [0:0]\douta[15] ;
  wire [0:0]ena_array;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[14] (\douta[14] ),
        .\douta[15] (\douta[15] ),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4
   (\douta[14] ,
    \douta[15] ,
    clka,
    ena_array,
    addra);
  output [7:0]\douta[14] ;
  output [0:0]\douta[15] ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [7:0]\douta[14] ;
  wire [0:0]\douta[15] ;
  wire [0:0]ena_array;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[14] (\douta[14] ),
        .\douta[15] (\douta[15] ),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6
   (\douta[14] ,
    \douta[15] ,
    clka,
    addra,
    ena);
  output [7:0]\douta[14] ;
  output [0:0]\douta[15] ;
  input clka;
  input [13:0]addra;
  input ena;

  wire [13:0]addra;
  wire clka;
  wire [7:0]\douta[14] ;
  wire [0:0]\douta[15] ;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[14] (\douta[14] ),
        .\douta[15] (\douta[15] ),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra);
  output [0:0]douta;
  input clka;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [0:0]douta;
  wire ena;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hEEE21DFFFFFFFFFFFFFFFF0064F0347FFFFFFFFFFFFFFFFDEFE0F9FFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFDFDFFFD00A3FFFFFFFFFFFFFFD24B8FCD4C3FFFFFFFFFFFFFFF6BD),
    .INIT_02(256'h4FFFFFFFC083FFFFFFFFFFF027FFFFFFFC76FFFFFFFFFFFFD7C7FFFFFF513FFF),
    .INIT_03(256'h87FFFFFFF3FB3E67BFFFFEE790FFFFFFFF1FBB81FFFFFFF86FFFFFFFFFFFFFE2),
    .INIT_04(256'h4FE3DFFFED6F5FE9FFFFFFFF82FEE8FFFEF2DB7E7FFFFFFF3E5FE8AFFFFFFBFE),
    .INIT_05(256'h77FFA5FFFFFFFEFFF73FFFFE9F3FEBFFFFFFFC077F29FFFBCFC0FE55FFFFFFF6),
    .INIT_06(256'hF9FFFCAC3B1F88BFFFFF7FFFEF37FFD8FC040FC57FFF8FFFFFFC5FFEEE3FF7F6),
    .INIT_07(256'h13BDFFFF83FFFFE19FFF82DE01127FFFF7DFFFFCB3FFF066F9F740FFFFBFFFFD),
    .INIT_08(256'hFFEBFFFFBB04000065BFFFE7FFFF1BFFFC86030402DBFFF83FFFFBBFFFFA0800),
    .INIT_09(256'hEE080000FD2F87FFDDFFFF4DDB8E004BB7CEFE3FFFFFFFF43020000A85FFFFD7),
    .INIT_0A(256'h27BFF3CCFFF01ED8C000067C147FFFDF3FFDDBEF8F0000CFF1625FF96EFFC54B),
    .INIT_0B(256'hE799C000007CDADFF7FA861A3C0208200001D8326C7FE0B7FCA03220000037EF),
    .INIT_0C(256'h4AC1F93D54057BFFEF46204D655CBFD3E201522FE57F60017EC1C1F0FE3AA799),
    .INIT_0D(256'hB13FFDD91004C8006CFE78DBD033FFDA1AB009C1065FC7C94FEFFF35DDB20026),
    .INIT_0E(256'h02C22BEFFB57FBDFFCFF2AD5A00CFC30FDD8FE0266E3B6FAC3C619BFEFD5BFCD),
    .INIT_0F(256'hFFF9CC00BA000011070FFFFA67FFE2603728201450653FFF527FFF0B839C600D),
    .INIT_10(256'h0002D1E25FFF4FFFF04000002000000E07FFE98FFFAC800820100020F39FFE88),
    .INIT_11(256'hEC2FFFE000044DD6C043C12FFF90FFF0000082D3BC083C34FFFA8FFF30000910),
    .INIT_12(256'h672C6C00041CFFEA9FFF80000A0558C0A1C3FFFEB0FFF800006055A4203C37FF),
    .INIT_13(256'h0FFF8FFFF21F3C61AE82C3D3C7FFFAFFFF36419BB39F6000393FFE2FDFE40442),
    .INIT_14(256'hC03EC2582C3BD70FFECBFFF93FDD782471572E94EFE1DFFF003DEA6B2B1A8938),
    .INIT_15(256'h1DFECDA5EF9373F5E6E04F3980996EDF6CF5B56E1C6E9C9E546DD0E2FF1FE6C7),
    .INIT_16(256'h392F18E90A0683CBE9B84716530BE703C47C7D70C4DFAEDF02B77D305AA4CD67),
    .INIT_17(256'hB281329E3AD95DF9933FA0BCC71BA293CB3E8607EAC778AE3E4ED1551E3B5342),
    .INIT_18(256'h77F1D3206A80608225037F7CD07F5A2C08400008020053BFA537FFA210D2949F),
    .INIT_19(256'h0090E951AF138B1E9DE6B8410000034B23F67B763EAF35360000000A715727E5),
    .INIT_1A(256'h087C7BEF882C210F264A201AF3070A4DF66610D002356A9FEC3F730DFE8A8050),
    .INIT_1B(256'h8490049908677C64FF7FD7C90911004912883A1AD7FFFE9DC0C9E0F4C856ABF7),
    .INIT_1C(256'hEAFBDFFDAFF83C180606771EDDFEEDFFDE9BA1D636A08766DDE1DC9FFA75DE90),
    .INIT_1D(256'h9FAED8522639A3CAFE6FFBB3C5E76038AF18E9397E61FFA1BF1FD3A8B7A745E3),
    .INIT_1E(256'hE7C7EFDFFFFDE41FCE792A4C0779FEFDFFFFB7D7FAEECC2623DBFF3EC7FFC0F7),
    .INIT_1F(256'hDEBEA3F95D0E327FFBF43FFFFF99E03EF30C0857F17FA9FFFFC29FDE23E92B5E),
    .INIT_20(256'h73FA7E731FFFFFAF1F833FC8BD9FA7E9D5FFFFF9B7F1DFEEC96AFF7C7EBFFFFF),
    .INIT_21(256'hFFFFEE64C2C7FFDFFF3FF8F1FFFFFD536750FFFFFC9FFDE3BFFFFF896FF0FFFF),
    .INIT_22(256'h86982FA3D9FFFFFFFFF5A9E7503196365ED9FFFFFFFFE99CE7EF9CFDEFFBAFBF),
    .INIT_23(256'hEFFFFFF7FB6C1FEE792F42C5FEFFFFFFFF18FF7B6187F7BD7DFFFFFFFFC5787C),
    .INIT_24(256'h5DF3E5DDFA50F00F1FFFFFFF443F1E7A7F8FAFBC3DFFFFFFA5C3F4F38E720A3B),
    .INIT_25(256'hFFFFFFFFFFFFFF9B120205D99FFFFFFFFFFFFFFDBCBC3C0D40FDFCF9FFFFFFFB),
    .INIT_26(256'hFFFFCF7B0CE3FFFFFFFFFFFFFFFFF0317DB0E7FFFFFFFFFFFFFFFF39ED1D9C0F),
    .INIT_27(256'h000000000000000000000000000000000000000000000000000000000000FFFF),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0
   (douta,
    clka,
    ena,
    addra);
  output [1:0]douta;
  input clka;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA4FAAB1BFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'h1BFF934C042FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88A9500001D2FFFFF),
    .INIT_02(256'hFFFFFFFE70E22ABFFFFFA61015FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE87AAB),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFF9C022FFFFFFFFFFFFCD1BBFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFF45ABFFFFFFFFFFFFFFFFFFFFFFFFFEC34BFFFFFFFFFFFFFFEE5AFFFFFFFF),
    .INIT_05(256'hE7FFFFFFFFFFFFFFDBF96DFFFFFFFFFFFFFFFFFFFFFFFFED5E9BFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFF51EBFDEFFFFFFFFFFFFFFE7FF852FFFFFFFFFFFFFFFFFFFFFFE11EB),
    .INIT_07(256'h6AFFFFFFFFFFFFFFFFFFFF809BFFEEFFFFFFFFFFFFFFDCFFF2A7FFFFFFFFFFFF),
    .INIT_08(256'hFFFFFF69DBBFFF8A2FFFFFFFFFFFFFFFFFFA44BFFF9447FFFFFFFFFF692CFFFF),
    .INIT_09(256'hEFFFFFA52FFFFFFFFFFE597AAFFFF8BBFFFFFFFFFFFFFFFFF417FFFF1127FFFF),
    .INIT_0A(256'hFFFFFFFFFFFF00FFFFFFF2B7FFFFFFFFFE5ADD5FFFFE6DFFFFFFFFFFFFFFFFCC),
    .INIT_0B(256'h61FFFFFFFF1FFFFFFFFFFFFFFAC7FFFFFFEBFF2FFFFFFFFF82BE6FFFFFBB7FFF),
    .INIT_0C(256'hFFFFFE45BFFFFFF4FFFFFFF8CBFFFFFFFFFFFFEB1FFFFFFFB2FFFFFFFFFFFFE9),
    .INIT_0D(256'hFFFDFFFFFFFE3BFFED01A93F0FFFA2FFFFFFFEF2FFFFFFFFFFFFFBBFFFFFFE63),
    .INIT_0E(256'hFFE76FFFFFFFFFFDB7FFFFFFFD7FE76089007773AFFFFFFFFFFFBCBFFFFFFFFF),
    .INIT_0F(256'hAAA5771FFFFFFFFFF93BFFFFFFFFFBCFFFFFFFFFFF2D9956AAA97F51FFFFFFFF),
    .INIT_10(256'hFFFF7AD6AAA5AAAAAAA576FFFFFFFFFE07FFFFFFFFFEBFFFFFFFFFF3756AAAAA),
    .INIT_11(256'hFFFFFF2EFFFFFFFFFA09AA9AAAAAAAAAAA59FFFFFFFFFF06FFFFFFFFECBFFFFF),
    .INIT_12(256'h25FFFFFFFFE1BFFFFFFEA3FFFFFFFFD995AAA6AAAAAAAAAAA55FFFFFFFFFA7FF),
    .INIT_13(256'h5656AA6AAAAAAAA67FF6FBFFF1AFFFFFFE8FFFFFFFFF225559656A56AAAAAAA5),
    .INIT_14(256'hFFFFFFF8CA6555556A55AAAAAAAAA4CFFF6FEBFA4FFFFFFAEBFFFFFFFF159565),
    .INIT_15(256'hCDFE92FFFFE6A96FFFFFE26AA956596A5AAAAAAAAAA9F7FE4E6CF91BFFFFE6A8),
    .INIT_16(256'hAAAAAAAA96BFDA8AFF5AFFFF8B2424FFFFFD66AAA5A6A6AAAAAAAAAAAA7DFF88),
    .INIT_17(256'h56956669AAAAAAAAAAAAAAAAAFFE7AFFA4FFFF6A14EFFFFDA15AAAA6AA6AA6AA),
    .INIT_18(256'hFFAA2CF2AFF2A55556AB947596AAAAAAAAAAA94FF88FFFD6BFFF6EBE049FFC19),
    .INIT_19(256'hAA6BFFAFFFFC3FFF9F2D8BEFFD65555557F0DA96A6AAAAAAAAA9AFFDAFFFE4BF),
    .INIT_1A(256'hAA4865AAAAAAAAAAB2FFAFFFF5AFFC9FEC4C23BD9555A5994359757AAAAAAAAA),
    .INIT_1B(256'hAA2AA55555595AA79C5AAA9AAAAAAA9AFF47FFFA5FFAEFF0A58B9AA555555956),
    .INIT_1C(256'hFFFD1FF27FFFFFFA6A9656A56597F066EA75AA9AAAAAAB7FB7FFFF7FFEBFF0A6),
    .INIT_1D(256'hAAAAAAAAA47FFFFFFE0BEAFFFFFFFF9A555A5555A666599A4BEAAAAAAAA6BFFB),
    .INIT_1E(256'hA595A66AA6AAA99AD7AAAAAA4FFFFFFE7BD5FFFFFFF32A656AA5695A96AAAA54),
    .INIT_1F(256'hFFFFFFF05A5AAAAA6566AAAAAAAAAA07AAAAA91FFFFFFE83E7FFFFFFF16696AA),
    .INIT_20(256'hAA37FFFFFF4ABAFFFFFFD85A6AAAAA6AA6AAA9AAAAAAA2AAAAA51FFFFFFFCF99),
    .INIT_21(256'hAAAAAAAAAAAAAAAA9FFFFFFF86AEFFFFFFE59AAAAAAAAAAAA6AAAAAAAAAAAAAA),
    .INIT_22(256'hAAAAAAAA6AA65AAAA55AAAAAAAAAAA87FFFFFF9267FFFFFFCDAAAAAAAA69A9AA),
    .INIT_23(256'hFFA1EFFFFFFF9AAAAAAAAA9A98040591DAAAAAAAAAAAB3FFFFFFA12BFFFFFFC6),
    .INIT_24(256'hAAAAAAAAB2FFFFFFBCA3FFFFFF76AAAAAAAA96AA94056B5AAAAAAAAAAA92FFFF),
    .INIT_25(256'h969592E8AB1AAAAAAAAAAAA7FFFFFFBC67FFFFFF0EAAAAAAAA66A694056B1AAA),
    .INIT_26(256'hFFFF15969AA969656592FCAB56AAAAAAA56AA6FFFFFFFC67FFFFFF0AAAAA9AA6),
    .INIT_27(256'hB7FFFFFFB067FFFFFF16A402E555455450012BD105555BD00AA6FFFFFFBC67FF),
    .INIT_28(256'hAB17943AA440AAB7FFFFFFF067FFFFFF1AA0005AB1654A50566A1AA50FA9400A),
    .INIT_29(256'h023FFFFCBFFBEEBFC8FFFABB40EA93FEEFFFA163FFFFFF0DAB015AB0517E515A),
    .INIT_2A(256'h8EAFFFFE3FE99802556FFBB500055AB83E954040AAB3FCEBFF9DA3FFFEFF72AB),
    .INIT_2B(256'hCF40AA5BFFA0BFB2EBFFF27FD1AB013FFC3CBFFFFFFF1803FFFF50AA83FEA6FF),
    .INIT_2C(256'hBADED6745C0B73CF40EA37FA9E3F7626EFDFFFDD9B01334210BCFF30D21C4473),
    .INIT_2D(256'h7FD7A801DCD032BAEEEBB46C1DD96B50AA0FF687FF3AB2EF23BFF5AB0233422C),
    .INIT_2E(256'hF3A0BE679DFBFF4FF86805334220B6A6AAF45C0433CF80E90FFFB2FEF28EF1DC),
    .INIT_2F(256'h65A66AAAA5A43FEEC7BFEFBFFFFFEFF8805744977150D5AFC3AF5843CCD1C37F),
    .INIT_30(256'hAAAAAAAAAAAAAA6AAAAAAAAAA53FFFFFFECFD9FFFFFFF1EAAAAA59AA699A6955),
    .INIT_31(256'hE3BFFFFBFF9AAAAAAAAAAAAAA6AAAAAAAAAAAAA67FEFFFFCEFECFFFF8FFA6AAA),
    .INIT_32(256'hAAA8FFE0FFF72FEC3FFFABFEC6AAAAAAAAAAAAAAAAAAAAAAAAAA97FFCBFFF9DF),
    .INIT_33(256'hAAAAAAAAAAAAAAAA6FFFF5AFFFFFF86FFCB7FFD6AAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_34(256'hFFC8A6AAAAAAAAAAAAAAAAAAAAAAA94BFFFF0BEEBFF91F9238FFB9AAAAAAAAAA),
    .INIT_35(256'hFBACFFFEFBEFFFFFFE6AAAAAAAAAAAAAAAAAAAAAAAA86FF4FFCBDCFFFCEB6BF8),
    .INIT_36(256'hB8AAAA94FFFFDF5F72FFFE73FFFFDFFFCAAAAA2AAAAAAAAAAAAFAAA6A6FFF9BF),
    .INIT_37(256'hAC38A9AAAAAAABACEAAA75FFCFFAFFB3FFFE46FFFE8BFD06AAAAC9AAAAAAAAAA),
    .INIT_38(256'hD0BF97FFFFE96AABAB5066AAAA951FEAA8A3FF0FFFFECFFFFFA0FFEDF3FFD9AA),
    .INIT_39(256'hFF9FFFF32FFFFFE83EF3FFFFF59AAAA4B7DAAA96C127AAA2BFFD0FFFFAFFFFFF),
    .INIT_3A(256'h736FA26AAAE4FFD6DBFFEF7FFFFFF5AF7FFEFFFD06AAAC45699E7975FAAA92FF),
    .INIT_3B(256'hB7FFCE1BAAAF85A846A6AAA79BFF9AA3FFAEFFFFFFFB7BEFFF9BFFADAAAAA476),
    .INIT_3C(256'hFFFFFFFE16FFC15BFFFBFAAAAA5AAE96AAAA77BFFFFFFB3F32FFFFFFFE57FFC6),
    .INIT_3D(256'h8BFFFBFFF9F9DFFFFFFFFFB5BFEDBFFFFFA59AAAAAA6AAAAA7D5FFF6FFFA3EF7),
    .INIT_3E(256'h2D45AAAAAA559CFFFFFAFFFFF82FFFFFFFFFE53F3FFFFFFFFF6D6AAAAAAAA94E),
    .INIT_3F(256'hFC07FFFFC5FFFFFF3777EADD232BFFFFFB3FFFC0BFFFFFFFFFF51FDAFFE4FFFF),
    .INIT_40(256'hFC07FFFFFFFFFFFECDFFFF394FFFFFC41C143B8BFFFFFFFF6FFF01FFFFFFFFFF),
    .INIT_41(256'hFFFFFFE3FFFFE3F00FFFFFFFFFFFFFAFBFFEC97FFFFFFFF9006EBFFFF9FFFF8A),
    .INIT_42(256'hD2FFE83FFFFFFFFFFFFEF7BFFFEE802FFFFFFFFFFFFFF8EFECE6BF03FFFFFFFF),
    .INIT_43(256'hFFFFFFFFFF69FF0BFE67F8BFFFFFFFF9AAF87FFFFED5BFFFFFFFFFFFFFFDEAF6),
    .INIT_44(256'hEFFF99AFFFFFFFFFFFFFFFFFAABFBFFCF7FBBFDFBFE7F4ABFD2FFFFB57FFFFFF),
    .INIT_45(256'h39FF7FFE95FE3F6FFED6BFFFFFFFFFFFFFFFFFE24BFFEBEAFEFE3F2BEEC6FBFF),
    .INIT_46(256'hFFFFD53FF77BFF74FF7FF2F8FFE87FE552FFFFFFFFFFFFFFFFFFFE98FFE7FAFD),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFF15BFF6FFFAFFF7FF269FFFDFBB59FFFFFFFFFFFFFFFFF),
    .INIT_48(256'hF87FFFB03BFFFBFFFFFFFFFFFFFFFFFFFF41EFFFFF8FFF4FF668FFFFFB15FFFF),
    .INIT_49(256'hC31FFFFFFFDBFDFFFFA207BFFFFFFFFFFFFFFFFFFFFFFFFFDC1FFFFFCFFF4FFA),
    .INIT_4A(256'hFFFFFFFFFFFFFFDFCABFBFFFFFFFFFADC03BFFFFFFFFFFFFFFFFFFFFFFFFFFF9),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA0126BFFFFFFE88FC8BFFFFFFFFFFFFFFF),
    .INIT_4C(256'h55556AF2DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6800860543E4EAD2FFF),
    .INIT_4D(256'hFFFFFFFFFFFFE939556C6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF125),
    .INIT_4E(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1
   (douta,
    clka,
    ena,
    addra);
  output [1:0]douta;
  input clka;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hAAAAA95156FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA555555556FFFFFF),
    .INIT_02(256'hFFFFFFFFEA5AFFFFFFFFFE955BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9555),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFAAAFFFFFFFFFFFFFF556FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFE56FFFFFFFFFFFFFFFFFFFFFFFFFFFA9BFFFFFFFFFFFFFFFF956FFFFFFFF),
    .INIT_05(256'hEFFFFFFFFFFFFFFFFFFE57FFFFFFFFFFFFFFFFFFFFFFFFFAABFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFEABFFFBFFFFFFFFFFFFFFD5FFE5BFFFFFFFFFFFFFFFFFFFFFFFEABF),
    .INIT_07(256'h96FFFFFFFFFFFFFFFFFFFFFABFFFF7FFFFFFFFFFFFFFF7FFFD5FFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFEBE66FFFFF5BFFFFFFFFFFFFFFFFFFFABFFFFFAFBFFFFFFFFFFFE56BFFF),
    .INIT_09(256'hBFFFFFFD7FFFFFFFFFFEBF66FFFFFE5FFFFFFFFFFFFFFFFFFEAFFFFFA95FFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFEBFFFFFFFD9FFFFFFFFFFFAF5ABFFFFF97FFFFFFFFFFFFFFFFF6),
    .INIT_0B(256'hFBFFFFFFF9BFFFFFFFFFFFFFFE6FFFFFFFF6FAFFFFFFFFFFEBD6FFFFFFE5FFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFE5BFFFFFFFF6FFFFFFFFFFFFFF9BFFFFFFFE7FFFFFFFFFFFFF5),
    .INIT_0D(256'hFF97FFFFFFFF9FFFFAAAAA95BFFFFFFFFFFFFF9BFFFFFFFFFFFFE5FFFFFFFFDB),
    .INIT_0E(256'hFFF9BFFFFFFFFFFF5FFFFFFFFFFFFEAFA5555AE9BFFFFFFFFFFFE6FFFFFFFFFF),
    .INIT_0F(256'h00001EBFFFFFFFFFFEAFFFFFFFFFFD7FFFFFFFFFFFEB9000000006EBFFFFFFFF),
    .INIT_10(256'hFFFFEE00000000000001EBFFFFFFFFFFAFFFFFFFFFF5BFFFFFFFFFFEE4000000),
    .INIT_11(256'hFFFFFFD7FFFFFFFFFEF0000000000000001EBFFFFFFFFFEBFFFFFFFFE6FFFFFF),
    .INIT_12(256'h7BFFFFFFFFFAFFFFFFFF5FFFFFFFFFFB400000000000000002EFFFFFFFFFEAFF),
    .INIT_13(256'h000000000000000EFFFDFFFFFEBFFFFFFE6FFFFFFFFFEC000000000000000000),
    .INIT_14(256'hFFFFFFFB4000000000000000000003BFFDBFFFFEBFFFFFFD7FFFFFFFFEE00000),
    .INIT_15(256'h66FFAFFFFFF5FEBFFFFFED0000000000000000000000AFFFBE77FFAFFFFFF9BF),
    .INIT_16(256'h000000000EFFF5EBFFEBFFFFE6FB9BFFFFA400000000000000000000002BFFED),
    .INIT_17(256'h000000000000000000000003BFF5DBFFEBFFFFD7AA65BFFFA000000000000000),
    .INIT_18(256'hFF5FA62BFFFB00000004014000000000000001FFFDEFFFFAFFFF9BA55FBFFEC0),
    .INIT_19(256'h003BFF7FFFFAFFFE6FE5A6BFE9000000000A0000000000000000AFFEBFFFFAFF),
    .INIT_1A(256'h00519000000000001FFFAFFFFEBFFE7FF9FAFFD8000000001800000000000000),
    .INIT_1B(256'hFFA0000000000000024000000000000EFFEFFFFEBFFD7FF97AABB00000000000),
    .INIT_1C(256'hFFFFAFF9FFFFFFFEC00000000000090000000000000006FFEAFFFEAFF9BFFFFF),
    .INIT_1D(256'h0000000002BFFFFFFFAFF5FFFFFFFD800000000000040000514000000003BFFF),
    .INIT_1E(256'h000000000000000000000000FFFFFFFF9FF6FFFFFFFE40000000000000000006),
    .INIT_1F(256'hFFFFFFFA000000000000000000000058000000EFFFFFFFAFE6FFFFFFFB000000),
    .INIT_20(256'h006FFFFFFFEBD7FFFFFFF9000000000000000000000004000000AFFFFFFFABE7),
    .INIT_21(256'h00000000000000003BFFFFFFEBD7FFFFFFEC0000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000003BFFFFFFEBDBFFFFFFE800000000000000),
    .INIT_23(256'hFFEB9BFFFFFFE40000000000015555550000000000002BFFFFFFEBDBFFFFFFE8),
    .INIT_24(256'h000000001BFFFFFFE79FFFFFFFE40000000000015555554000000000002BFFFF),
    .INIT_25(256'h00015401154000000000001BFFFFFFE79FFFFFFFF00000000000015555554000),
    .INIT_26(256'hFFFFF00000000000015401154000000000001BFFFFFFE79FFFFFFFF000000000),
    .INIT_27(256'h1BFFFFFFEB9FFFFFFFF00554000000015555550000000015501BFFFFFFE79FFF),
    .INIT_28(256'h55A0AA955515001BFFFFFFEB9FFFFFFFF00555555AAAA5555555AAAAA5555550),
    .INIT_29(256'h54400001000000001100000015002BFFBFFFEB9FFFFFFFF00054555AAA055555),
    .INIT_2A(256'hE79BFFFDFFE40154555555055555555195555515002BFF2FFFE79FFFFFFFE400),
    .INIT_2B(256'h1015003BFEFDBFDB9BFFFBFFE80054400141000000005154000015003BFFD7FF),
    .INIT_2C(256'h000000010154441015006FFCBA5FDBDBFFEFFFE8005444555501004515515544),
    .INIT_2D(256'h7FFC015400010000000001010000001500AFFF5FFFDBDBF55FFFEC0054445551),
    .INIT_2E(256'hFFFD7F9FE7FFFFBFFA015444555500055551015544101500EFFFE6FF9FE7FBF5),
    .INIT_2F(256'h000000000002BFF6BFFF5FE6FFFFFFFB155455555555155569555554111514EF),
    .INIT_30(256'h00000000000000000000000003BFFFFFFF6FF6FFFFFFFF000000000000000000),
    .INIT_31(256'hF9FFFFFBFEC00000000000000000000000000006FFFFFFFF6FF6FFFFEFFE8000),
    .INIT_32(256'h001BFF97FFFDBFFAFFFFF7FFA0000000000000000000000000000DFFEFFFFE7F),
    .INIT_33(256'h000000000000000037FFFD7FF9BFFEBFFF4AFFB0000000000000000000000000),
    .INIT_34(256'hFFFD00000000000000000000000000AFFFFFDFF5FFFEBFA5FEFFE80000000000),
    .INIT_35(256'hEFE7FFFF5FFFFFFFFB00000000000000000000000001EFFFFFFBF6FFFF6FDFFE),
    .INIT_36(256'h0100000EFFFFEBEFDBFFFF9FFFFFFFFE800000400000000000000000037FFABF),
    .INIT_37(256'h014100000000000100002BFFFFFEBF9FFFFFEBFFFFDFFFE00000100000000000),
    .INIT_38(256'hFAFFF5FFFFED0000004500000000400000AFFFBFFFFF6FFFFFEBFFFE2FFFB400),
    .INIT_39(256'hFFDFFFFDBFFFFFFAFF4FFFFFFB4000050504000014400002AFFFAFFFFE6FFFFF),
    .INIT_3A(256'h05041400003BFFFFDFFFF5FFFFFFFEBFBFFF7FFEE00001160400144400000EBF),
    .INIT_3B(256'hFBFFF7400000140218000001EFFFEA9BFFE6FFFFFFFEAFFFFEEFFFA800000404),
    .INIT_3C(256'hFFFFFFFFEBFF55ABFFFDA0000000000000000EBFFFFFF5FFDBFFFFFFFFAFFFFF),
    .INIT_3D(256'hBFFFE7FFFFFE6FFFFFFFFFEAFF7FAFFFFF9E00000000000000BBFFFFFFFDFF5F),
    .INIT_3E(256'h9B9000000006FBFFFFF9FFFFFABFFFFFFFFFFAFFBFFFFFFFF5E000000000001B),
    .INIT_3F(256'hFFAFFBFFAFBFFFF9AE940016FEFFFFFFFDBFFFFAFFFFFFFFFFFEBFEAFFEBFFFF),
    .INIT_40(256'hFFAFFFFFFFFFFFFFA7FFFFEFBFFFFFFAABFFEABFFFFFFFFF6FFFEBFFFFFFFFFF),
    .INIT_41(256'hFFFFFFFAFFFFEFFEBFFFFFFFFFFFFFE5FFFFAEFFFFFFFFFFFFFFFFFFFFFFFFDB),
    .INIT_42(256'hFBFFFEFFFFFFFFFFFFFFFDFFFFFFFAFFFFFFFFFFFFFFFA7FE6BAFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFF97FFEFFFFDFFFFFFFFFFFFFBFEFFFFFFABFFFFFFFFFFFFFFFE5FFF),
    .INIT_44(256'h7FFFFABFFFFFFFFFFFFFFFFFE5BFEFFFAAFDFEBFFFFFFBFEFFBFFFFEAFFFFFFF),
    .INIT_45(256'hFDFFDFFBEFFFFFBFFFAAFFFFFFFFFFFFFFFFFFFD6FFFFFF7FEFEBFDFFBFBFEFF),
    .INIT_46(256'hFFFFE5BFFEDFFFB7FFDFFFAFFFBFBFFEAFFFFFFFFFFFFFFFFFFFFF57FFFFEBFF),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFD5BFFEFFFA7FFDFFFBFFFEBFFEABFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFEAAFFFFFFFFFFFFFFFFFFFFFFFFF95BFFFFF9FFFEFFEFFFFFFFEABFFFF),
    .INIT_49(256'h54BFFFFFFFAFFFFFFFFEAAFFFFFFFFFFFFFFFFFFFFFFFFFFF55BFFFFBFFFEFFE),
    .INIT_4A(256'hFFFFFFFFFFFFFFF416FFFFFFFFFFFFFFAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF955AFFFFFFFFFFA56BFFFFFFFFFFFFFFFF),
    .INIT_4C(256'h5555555ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5556AFFFEAA556FFFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFEAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE95),
    .INIT_4E(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2
   (douta,
    clka,
    ena,
    addra);
  output [1:0]douta;
  input clka;
  input ena;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFF24C4FBFFFEFFFFFFFFFFFFFFFFF),
    .INIT_01(256'h78A76897833FFFBFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFF5BE4E94E455DFBEFB),
    .INIT_02(256'hFFFFBFFF9794DFFFFFFFF81045EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAE40),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFEDE43FFFFFFAEBFFFBD6EBFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFBFFB4DBFFFFFFFFFFFFFFFFFFFFFFFFFA2C57FFFFFFEFFFFFFFE4C7FFFFFFFF),
    .INIT_05(256'hD3FFFFFFFFFFFFFFC3F539FFFFFFFFFFFFFFFFFFFFFFFFEC27C7FFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFBF1BFFFF7FFFBFFFFFFFFFFB5BF6ABFFFFFFFFFFFFFFFFFFFFFFE09FF),
    .INIT_07(256'h13FFFFFFFFFFFFFFFFFEBFAD9FFFFFFFEFFFFFFFFFFDA5EFF907FFFFFFFFFFFF),
    .INIT_08(256'hFFFFFE3C68FFBFDAFFFFFFFFFFFFFFFFFFFBC9FBEFC617FFFFFFEFFFFA63BFFF),
    .INIT_09(256'h3FFFFD8B3FEFFFFFFFF8BCD0FFFFFF26FFFFFFFFFFFFFFFAE73BFFFF5CB6FFFF),
    .INIT_0A(256'hFFFFFFFFFFFB0CFFFFFFF4C3FEFFFFFFEAFEE21FFFFE4FFBFFFFFFFFFFFFBFF7),
    .INIT_0B(256'h63EFFFFFF9EFFFFFFFFFFFFFFFEEBFFBFFFFF55FFFFFFEFFAFC59FFBFFDEBFFF),
    .INIT_0C(256'hFFFEBC317EFFFD00BEFFFFFBC2FFFFFFFFFFFFF74EFFEFFFEDFFFFFFFFFFAFE3),
    .INIT_0D(256'hFF49FFFFFFFDEBEFB50503E16AFFC1FFFFFFBEBBFFFFFFFFFFFFF97FFFFFFF37),
    .INIT_0E(256'hFFF6EFFFFFFFEFFEDFEFFFFFFEFFFE6F647C0CEF6FEEFEFFFFFFCBFFFFFFFFFB),
    .INIT_0F(256'h5CE72D4FFFDFFFFFFE1FFFFFFFFFBC27FFFFFFFFEFBCB1555A4435026FFFFFFF),
    .INIT_10(256'hFFFF310C1AA55969B94F21FFFFFFFFEE0FFFFFFFFBF73EFFFFFFFFFA8A2FFE69),
    .INIT_11(256'hFFFFFFDEFFEFFFEBFCF8A1459A5655A6B983BFBEFFFFFF4BFFFFFFFFFCAFFFFF),
    .INIT_12(256'h31FFFBFFFBF66FBFFFFF3BFFFFFFFFEB31405155559A6A99A16FFFFFFFFEE5FF),
    .INIT_13(256'h57A5ABAAAA55A92BFEEAFBFFFABBFFFFFF9FFFFFFFFF43668925A955AA6A95A4),
    .INIT_14(256'hFFFFFEF39FDA88946A5A6AA9AAAAE86FFEFFFFFEEEFFFFF8AFFEFBFFFC019575),
    .INIT_15(256'h8FFF0BFFFFCAFCEFFFFFCBEA546748155B5AAAAAA96ACBFD3C3FFEEFFFFFFEFC),
    .INIT_16(256'hAAAAA5A6B9BEDEC7FE4BFEFFD8F4C3FFFF70A6419394959A56AAAAA5ABA0FFFB),
    .INIT_17(256'h91A04B05995A555AA6AAAAB87FF5AAFFE5FEFF7799913FEFF599516A56695555),
    .INIT_18(256'hFFDB339BFFFBE41456E6DC2992655A55AAA97BAFFBEFFBE0FEFF4F0BC17FFD6D),
    .INIT_19(256'hFE75FF3AFFF2FFFF0B25333FF924515554EEABA6A56965A6AAB46BFD7AFFF7FF),
    .INIT_1A(256'hEDD315AEA5A4AAAF2FFF1EBEFA3FFD2FF5C9B6F4C1555549EACE5A152A566DAA),
    .INIT_1B(256'hEF71355545495A721D4A3FDAAAAAAA5BFF53FFFD5FF6EBF03CD74D5A55555940),
    .INIT_1C(256'hBFFC0FFB7FEFFFFDC4565A551547B3489A4D9A9EAAAA85BFCCFFFE7FF3BFF1F7),
    .INIT_1D(256'hB99DF965A4ADFFFFFFBFFDEFBFEFBF0A145A551A56DDD4858DFA57EAAA7B7FF3),
    .INIT_1E(256'h954AE619A56AA89948AAA9B90BFFFFFF27DFFEFFFFF29A115A941D5A94A6A90C),
    .INIT_1F(256'hFFFFFFEB9AA556956A666A99695A74A2AAAABB9BFFFFFF7FCCFFFFFFF8A6D55A),
    .INIT_20(256'hBE03FFFFFFABA3FFFFFFF1996955656A96AB99AAA6EBC7AAAAB9FBFFFFFF7FDC),
    .INIT_21(256'hF3AFF9ADA6AAEAB25BFFFFFFFBE3FFFFFFC1E9A95555965956695AA69E1AABEA),
    .INIT_22(256'hAAA9569569967BFFDA99B9A9AAEAAF43FFFFFFC72BFFFFFFC8EAA955556458AF),
    .INIT_23(256'hFFD04BFFFFFFE15AA55A5A9AA91AB2D5ABAAAAAAAA981FFFFFFFF23BFFFFFFD5),
    .INIT_24(256'hEEAA6A6A4FFFFFFFEE87FFFFFF8556A96A5A96AE3BB72C66AAA6AA5A9BCFFFFF),
    .INIT_25(256'h96AD2AEDF12A5AAAAAFAAA43FFFFFFFD0FFFFFFF8955A5AA5A66BA76772D6A99),
    .INIT_26(256'hFFFFC4D7DFFEBEBA9E7428B0ACFFFF8FFABB6AFFFFFFFC87FBFFFE3A656456A6),
    .INIT_27(256'h53FFFFFFFCC7FFFFFF863CBA500FD3A33BAA70776AF0F77ACE46FFFFFFFC87EF),
    .INIT_28(256'hCCA78B6E231E5A7FFFFBFFDED7FFFFFF3AB7EB5DE7A1383F6D6552EDB768CFB9),
    .INIT_29(256'hD381A8550B3BEFD2DC3943C4188D67FD6FFFF85FFFFAFF99A2A326E44B6C4B61),
    .INIT_2A(256'hF7BBEFBD7FC99DB8A1E1B5C37C2C56374764D65BDA2FFE5FFFDAE7FFFC3FAE48),
    .INIT_2B(256'h345F1FFBFDFD7FFB03FFFE3F94B8E3BDB080FF96BF1A274E70FA7B5F7BFCC9FF),
    .INIT_2C(256'hDBA034F47AF5B0E61E650FF8879FAB67FFEFFF809DE0A130301FCD67E9F75A15),
    .INIT_2D(256'h7FDD5AE2293344C8B13CB56DC8A7BFEF190FECF7FF23CFD4DBBFFCDDF5B4FC34),
    .INIT_2E(256'hFFA4FECFF3F3FF1FE365B570B0E9C35D8A4D3AF0EA4A15870FFFE9EFE7E3FBF9),
    .INIT_2F(256'h9F4FBCC00377BBF7AFBFFFF1FFFBFFE69F6B5CFC8D14DDF8572C979CD496C4CF),
    .INIT_30(256'hDEEAB6BCFBE02F6EAEEFEAEC817FDFFFFC7FEFFFFFFFFEFF31FCA2E3F370C323),
    .INIT_31(256'hFEEFFFE7FF4E6E5AB9999BF9B7BAEAAE9ABA67A7BFFFFFFCBFE0FFFF63FF2AFA),
    .INIT_32(256'h996AFFA1AFFA3FF72BFFEBFEA6665AAEA966FAAABEAA9AAABAAB76FF8FEFBC0F),
    .INIT_33(256'hAAAAEAAAA9AB66A73BEFB6EFF6BFF7EEFCC1FFC78E96AA97AAFAAAABFA9A77EB),
    .INIT_34(256'hFFB7F6AA9ABAFFAAAAA96AB6AE9EA762FDFBF3F63FFC4F0AFAFFE7EDA59ABA5A),
    .INIT_35(256'hF7EBEFFF8FCAFF6FE0DEBAAA6DA7AAAAA96EBADD6EAA0BF2FFF3FDEFFE8F36BE),
    .INIT_36(256'hCFEEABDCFFFE932F6FFFFFB3FFFFDBF91EFEA577FE96AAA5A5EAB643337FF07A),
    .INIT_37(256'hE4236DAAAFAAD941B6AF74FFDFF97FE6FFFF3BFFFF6BFC8ABAA901A7A5BFBA94),
    .INIT_38(256'hC3FEE5EFFFFCEB86F02878E9DBA62FD9AA5BFFEFFBFDCFFFFBC0FFEF3FFF9BAB),
    .INIT_39(256'hEF6DEFF8AFFFFFFA7FC7FFFFF2FAEA055881EB8327E82AE59FF92FFFFEDFFFFF),
    .INIT_3A(256'hB9AA41A6EDA0FFD9D3BFF73FFFFFF52FBFBFBFFC9F9EFA1845E5846ADA7A7A7F),
    .INIT_3B(256'hEFFFEB86BBDA8E3F3706A98C3BFFF636FFF8FFFFFFFACFFEFF1FBEE4786CC7B3),
    .INIT_3C(256'hFFFEFFFFCFFB8B4EFFEB4CB9AA5EB8D3AE5ACD7FFFFFB5AF16BFFFFFFF4FFFEF),
    .INIT_3D(256'h3FFFCBFFFCFFDBFFFFFFEFD1FA3E3FFFBF94CB9BE2E286A5AE72FFE8FFFE7FE3),
    .INIT_3E(256'h5560595650002BFFFF60FFFFA4BBFFFFFFFFEEEABFFFFFFEFC33EEFBAEEBB5E4),
    .INIT_3F(256'hBCF7EFFF3D3FFBF7CDA8284B4E0FFFFFFFEFBF83FFFFFFFFFFB5FBF9FFEFFFFE),
    .INIT_40(256'hFF5AABFFFFFFFFFFBBEFFFED0BFFFFC71CD47C56EFFFFFF7FFFFFCFFFFFFFFFF),
    .INIT_41(256'hBFFFFFC8FEEFD3B25EFFFFFFFFFFFFE4BBEDEE7FAFBFFFFC9F9FFFBEFCFBFFDD),
    .INIT_42(256'hF7FEFB5FEFFFFFFFFFF6F6BFBFCEDABAEFFFFFFFFFFFE8BFAC7EFF47FFFFFFFF),
    .INIT_43(256'hFFFFFFFFBBBAFF73FDB6F0FBEFFBFFFE6FFB3BFFFEB7FFBFFFFFFFFFFFFD86FA),
    .INIT_44(256'hEFFFD85FFFFFFFFFFFFFFFEFD47BEFFD68BF2E3D27C6F2FCFAEFFFF813FBFFFF),
    .INIT_45(256'h32FF3FFBF1FDBFEFFFC0FFFFFFFFFFFFFFFFFFF4CFFFC6F7BFEAFB2FEBEAFFFF),
    .INIT_46(256'hFFEFEC3FFBF7BFB8BB0FFEDEFE2A7FFAD2FFFFFFFFFFFFFFFFFFFC7CFFEFFAFC),
    .INIT_47(256'hFEAFFBFFFFFFFFFFFFFDF3FF96FF27FFDFFFBFFFEFFBE7DFFFFE6FFFFFFFEFFF),
    .INIT_48(256'hBABEFFC21FFBDA5656AAFFFFFFFFFFAFFF90EFF7FFEEE79FF15EFFFFFE6DFFEE),
    .INIT_49(256'h2D3AFFFFEED7FEFBFFB980BEFF906AA6AAFFFFFFFFFFFFFFCFF3FFFF0BFE6FE4),
    .INIT_4A(256'hFFFFFFFFFFFFFFDD98FBFFFFFFFFFFFE559FFFFFEABE6AABFFFFFFFFFFBFBFF9),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEBBA9AFFFFFFFFACFCCFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hA01795552FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFA3D51EEC0C19B12EEFF),
    .INIT_4D(256'hFFFFFFFFFFFFEEB26B307BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFA56),
    .INIT_4E(256'h00000000000000000000000000000000000000000000000000000000FFFFFFFF),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[14] ,
    \douta[15] ,
    clka,
    ena_array,
    addra);
  output [7:0]\douta[14] ;
  output [0:0]\douta[15] ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [7:0]\douta[14] ;
  wire [0:0]\douta[15] ;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFF03FFFFFFFFFFFFFFFFFFFFC003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFE7FFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFE),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFEFFF7FFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFBFFFFFFFFFFFFFF7FE),
    .INITP_0C(256'hF7FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFF7FFFFFFFFFFFFFFFFEFFFFFFFBFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFBFFFFFFFEFFFFFFFFFFFFFFFF7FFFFFFFEFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFEEDCDBCBCACABACACCDDDFEFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'h8B5917070707F6F6E6E6E6D6D5C5C5B5C5E6286ABCFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'h5A6A8B9C9C9C9C8B8B6A4918E6C5C5D5D5E6076ADEFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFEE9B59483828281839),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFEE9C5A07D6D6E6F75AEEFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEAC6A6969496AACDDFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFAC38E6E6F617ACFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFDD9B8A7A6AACDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFAC28F607079BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFCD9BAB8BBCEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFFFFFDE49070727ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hAC9BCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDAC),
    .INIT_16(256'hFFCEDFFFFFFFFF6A071728DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFF7BDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEACABBCDDFFFFFF),
    .INIT_19(256'hFFFFFFFFFF4917177AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE60739),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC9BABDDFFFFFFFFFFFFCDACFF),
    .INIT_1C(256'hFFFFDD382828DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7AEEFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFDD8A9BBCFFFFFFFFFFFFFFFFFF59FFFFFFFFFF),
    .INIT_1F(256'h7B2828ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEFFFF7AD5177A8AACFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFAB9B9BEEFFFFFFFFFFFFFFFFFFFF8B6AFFBD5AFFFFFFFFFF),
    .INIT_22(256'h59FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFF9C6BFFFF7A59AB48EEFFFFFFFFEFFFFFFFFFEE3838),
    .INIT_24(256'hFFFFFF7A8BABFFFFFFFFFFFFFFFFFFFF6A8B7A07E607DEFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFF8C7BFFFFEE06DD49CDFFFFFFFFFFFFFFFFFFFFFF593949FFFF),
    .INIT_27(256'hBDFFFFFFFFFFFFEFFFFFFFFFEEFFEEF6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD6A7A),
    .INIT_29(256'hFFFFFFFF8B8BFFFF3817EE9B6BDEFFFFFFFFFFFFFFFFFFFF8B4938FEFFFFFFFF),
    .INIT_2A(256'hFFFFEFFFFFFFFFFFFFFFCDF79B18DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD5A7ADEFFFFFFFF),
    .INIT_2C(256'hFF4959FFFF496ABDDEDEFFFFFFFFFFFFFFFFFFFFFFAC4859DEFFFFFFFFFFFFFF),
    .INIT_2D(256'hFFFFFFFFFFFF17BCFFFF9C9CBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC597AFEFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hEEFF7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD4949EEFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFFACD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF08E6),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C496AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD596AFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFEFCEBDBECEEFFFFFFFFFFFFFFFFFFFFF9C18498BEE),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFAC495AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1749FF),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFCD597AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'hFFFECC8A6969799ABBAB9B9A7948484859BCFFFFFFFFFFFFFFFFEEFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFCD3949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5928FFFFFFFFFFFF),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFBD7A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFBD997866554545576A8D9FCFDEC79387BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'h3849EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDECDFFFFFFFFFFEEAC7ABBFDFC),
    .INIT_3B(256'hFFFFFFFFFFFFAC7A9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE),
    .INIT_3C(256'h5252525242322202E20388FCFE8A59DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBBFCFEEB66131222324242),
    .INIT_3E(256'hFFFFFF9B9BDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3949CDFFFF),
    .INIT_3F(256'h52524243322222110297FDDC49CEFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCCFEFC9531425252525262626262726252),
    .INIT_41(256'h9B9BEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF59489CFFFFFFFFFFFFFF),
    .INIT_42(256'h525252424222E135FECC5AFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFFFFFFFFFFFFFFFFFECBFFFB3432719282828272727262627272626262625242),
    .INIT_44(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B486AFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_45(256'h42423212E156FF9AACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE8B9BFF),
    .INIT_46(256'hFFFFFFACFDFC5342728292929282828282827272727262626262625252524242),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFEE2838FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'h3212E2CAFE7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC9BCDFFFFFFFF),
    .INIT_49(256'h973172A292929292928282928272727272726262626262625252424242425242),
    .INIT_4A(256'hFFFFFFFFFFFFFFFF4938CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEABFE),
    .INIT_4B(256'h45FE9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BABFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hA292929292928272727272727272626252526262525252424242424232322202),
    .INIT_4D(256'hFFFFFF9B386AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDCCFD42629292A2),
    .INIT_4E(256'hEEFFFFFFFFFFCD07FFFFFFFFFFFFFFFFFFFFFE9BACFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'h9292828272727272727272625252525252525252424242423242322202F2FEAB),
    .INIT_50(256'h48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACFDFB3282A2A2A2A292A29282),
    .INIT_51(256'hFFFFFF186AFFFFFFFFFFFFFFFFFFFFAC9BFEFFFFFFFFFFFFFFFFFFFFFFFFFF28),
    .INIT_52(256'h8282827272726262626252525252525242424232324242323212D1FDDDDEFFFF),
    .INIT_53(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BFDE83182A291A2A2A2A292928292929282),
    .INIT_54(256'h8BDDFF7BC6FF28CDFFFFFFFFABBCFFFFFFFFFFFFFFFFFFFFFFFF7A389BFFFFCE),
    .INIT_55(256'h7272626262625252525252524242423232323232323222D1FCDDEEFFFFFFFFEF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFF8BFDB7519292A2A2A2A292A2A292A29282A29282828272),
    .INIT_57(256'h285A597AFFFFFFFFCDACEEFFFFFFFFFFFFFFFFFFFFFF2748FFFFFF7B6AFFFFFF),
    .INIT_58(256'h6262625252525242424232323232424232322222D1FCDDFFFFFFFFFFFF59FFD5),
    .INIT_59(256'hFFFFFFFFACECD85282A292A2A2B2A2B2A2A29281929282829282727272726262),
    .INIT_5A(256'hFFFFFFFFFFACACFFFFFFFFFFFFFFFFFFFF6A38CDDDFF8BEE59F77BCDFFFFFFFF),
    .INIT_5B(256'h5252524242423232323242323232322212D1FEBCFFFFFFFFFFEE1738FF5AACFF),
    .INIT_5C(256'hAAFA3192A2A2A2A2A2B2B2B2A292929292928282727272727272626262626262),
    .INIT_5D(256'hFFBCACFFFFFFFFFFFFFFFFFFFF1728FF6A8B9B7A48AC39189CFFFFFFFFFFFFCD),
    .INIT_5E(256'h4242424242323232323232322212E2FFBCFFFFFFFFFF4928FF499BFFFFFFFFFF),
    .INIT_5F(256'hA2A292A2A2A2A2A2929362938292826263637272728272626262626262525252),
    .INIT_60(256'hFFFFFFFFFFFFFFFF8B28ACFFBDEE8A5816F6FFCD7BDEFFFFFFFFFF69FD1192A2),
    .INIT_61(256'h423232323232323222220245FEDDFFFFFFFFFFD5FF59FFFFFFFFFFFFFFFEACBD),
    .INIT_62(256'hA2A2A2A2A2A3F7A4827262B6C784627282726272626262626252525242424242),
    .INIT_63(256'hFFFFFFFF2728FFEE5ACC7A8AE5DD59FFFFFFFFFFFFFF59FE327292A2A2B2A2A2),
    .INIT_64(256'h32323232222212E2DBBBFFFFFFFFFF5A9CFFFFFFFFFFFFFFFFFFAC9BFFFFFFFF),
    .INIT_65(256'hA29282A49485FAFA846272726262627252525262625252425252424242422232),
    .INIT_66(256'h288BFFFFBDAC5917AC5928BCBDFFFFFFFFBCFC765292A292A2A2A2A2A2A2A2A2),
    .INIT_67(256'h22322212E2FE9BFFFFFFFFFF08FFFFFFFFFFFFFFFFFFDE9BDDFFFFFFEFFFFFBC),
    .INIT_68(256'h4296EA6552627262528452423274736252524242425242424242322232323222),
    .INIT_69(256'hFFFFCDE6FEDEDD7AEEFFBDFFFF58FC328292929292A2A2A2A2A2A2A2A2929272),
    .INIT_6A(256'hF277DCEEFFFFFFFF8C9CFFFFFFFFFFEFFFFFFF9B9CFFFFFFFFFFFF4928EEFFFF),
    .INIT_6B(256'h82827273D6854465FBB752525242424242424242423222333232222232322222),
    .INIT_6C(256'h08FF7A8B9B397BFF8BFE32628292829292A2A2A2A2A29292A292928272625363),
    .INIT_6D(256'hFFFFFFFFEF5ADEFFFFFFFFFFFFFFFFAC9BFFFFFFFFFFFF1738FFFFFFFFFF5AD6),
    .INIT_6E(256'h533254FA86125252533232323232424242422222323222223232222222D1FE7A),
    .INIT_6F(256'hFFFFFFFF59EA42828292828292A29292A2A29292A29282829292829383724294),
    .INIT_70(256'hFFBD6A8CFFFFFFFFFFFFFFCD9BDDFFFFFFFFBD278BFFFFFFFFFFBDCDFFFFEEFF),
    .INIT_71(256'h846352421244221233333232422232222222323232322222320257CCEEFFFFFF),
    .INIT_72(256'hFD236282828282929292829292A2929292928282929272939484FA9542635253),
    .INIT_73(256'hFFFFFFFFFFFFFFFF9BACFFFFFFFF5917DEFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B),
    .INIT_74(256'hA66543D8C72232423232222222223232323232323222C1FE8BFFFFFFFFFFFFFF),
    .INIT_75(256'h82829282928282829292929292928282929282725253A6435262625262525263),
    .INIT_76(256'hFFFFFFFFAB9AFFFFFFFF1728FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58FB327292),
    .INIT_77(256'h32424232423242222222323232323232222202A98AFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'h92828282828292929292827272828282726252636272727262525252423285F9),
    .INIT_79(256'hBC8AFFFFFFDE177AFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDEC6462727272829292),
    .INIT_7A(256'h53221154222232323232323222222203FEBDFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'h8282929292828272828272827282726262726262525252526252321242324242),
    .INIT_7C(256'hFF9C17BDFFFFFFFFFFFFFFFFFFFFFFFFFFFF59FE217262728282829282828282),
    .INIT_7D(256'h2222222232323222222222E1FD6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD8ADDFF),
    .INIT_7E(256'h828272727272727272726262626262625252525252524232324232435454FA44),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF69B932627272727282828282828282828282),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[14] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[15] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4
   (\douta[14] ,
    \douta[15] ,
    clka,
    ena_array,
    addra);
  output [7:0]\douta[14] ;
  output [0:0]\douta[15] ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [7:0]\douta[14] ;
  wire [0:0]\douta[15] ;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFF7FFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FF),
    .INITP_03(256'hFFFFFFFFFFFFFFFDFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFD7F7FFFFFFFFFFEFFFFFFFDFFF7FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hF7F7FEFFFFFFFFEFFFFFFFFFFF7F7FDFFFFEFFFFFFFFFFFFFFF7F7F7FFFFFFFF),
    .INITP_06(256'h7FFFED7FFBDF2A77FFFBFFFF3FEFFFFFFFFDFFFF7FFEF7FFFFFEFEFFFFFFFFFF),
    .INITP_07(256'hFFFFCDFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFEFFDFFFFE),
    .INITP_08(256'hFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFF23),
    .INITP_09(256'hFFFFFFFF7FE7FFFFFBFDFFFFFFFFFFFFFFF9FFFFFFFFDFFFFFFFFFFFFFBFFFFF),
    .INITP_0A(256'hFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFBFFFFDFFEFFFFF),
    .INITP_0B(256'hFFFFFFFFFF7FFFFFFFFFFBFDFFFFFFFFDFFBFFFFFFFFFFFFBFFFFFFFFFFFDFFF),
    .INITP_0C(256'hFBFFFFFFFBFFFBFF7FFFFFFDFFFFFFFFFFDFFF7FFBFFFFBFEFFFFFFFFFFF7FFF),
    .INITP_0D(256'hFFFBFFFFFFFDFFFBFFFFFFFFFFFEFFEFF7FFEFFFBFFFFFFFFFFFDFFFEFEEFFBF),
    .INITP_0E(256'hFFDFFFFFFFFFFFFFFF3FFFFFCFFFFEFFFFFFFF8FFFCFFFFFFF7FFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFC7FF3FFFFFFFFFFFFFFFFFFFE7FFFE7),
    .INIT_00(256'h2222322222222202A979FFFFFFFFFFFFFFFFFFFFFFFFFFFFEE8ABCFFFF6A17EF),
    .INIT_01(256'h7272727272726262626262526252525252524242423232322213550222322222),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFDDDC454262727272727282828282828282828282828282),
    .INIT_03(256'h2222220225DCEEFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A9BFFFF2818FFFFFFFFFF),
    .INIT_04(256'h7262626252526252625242424242424242323232222222223232222222223232),
    .INIT_05(256'hFFFFFFFFFF8BFEF2426272726272727282828282827282827272727272728272),
    .INIT_06(256'hE2FE9BFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7AFFFF1739FFFFFFFFFFFFFFFFFF),
    .INIT_07(256'h4232434242424232424242423232323242423232323222222222323222222302),
    .INIT_08(256'hFF59FC0252627262626272728282727272727272727272727272726262525252),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF8B6AFFFF176AFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'h23232222323242423232323232323222323222222222323232222212E2FD7AFF),
    .INIT_0B(256'h5262626262627272727272727272727262727272726262524232332313131323),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFF9B6AFFEE178BFFFFFFFFFFFFFFFFFFFFFFFFFFFF69C922),
    .INIT_0D(256'h643242423232323222323232323222222222323232222213E2EB69FFFFFFFFFF),
    .INIT_0E(256'h6262727272726262727272726262726262525285866666564646575777676676),
    .INIT_0F(256'hFFFFFFFFFFAC6AFFDD28ACFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A974262626262),
    .INIT_10(256'h3232423232222222222222223232222232322222F1BA69FFFFFFFFFFFFFFFFFF),
    .INIT_11(256'h726262627272627272726262625232A788574736263637474858689976223232),
    .INIT_12(256'hFFAC69FEBC28BDFFFFFFFFFFFFFFFFFFFFFFFFFFCEBC65526262626252626272),
    .INIT_13(256'h32223222222222223232222232323222028869FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'h7272626262726262625212876837372636464747585848796622323232324232),
    .INIT_15(256'hBC28CDFFFFFFFFFFFFFFFFFFFFFFFFFFBDED3352626262625252627272626262),
    .INIT_16(256'h22322222222232323232222212777AFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC69FE),
    .INIT_17(256'h62626262625222875837460334130335F3785979662232323232323232222222),
    .INIT_18(256'hFFFFEFFFFFFFFFFFFFFFFFFFADFD125262626262627262626262627262626262),
    .INIT_19(256'h020202120212222212668AFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC69FEAB28DEFF),
    .INIT_1A(256'h5253127758373614352424561478598A76122223222222222212121212231212),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFACFE12426242323232224242425252524252525242525252),
    .INIT_1C(256'h3636122212778AFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC69FEAB28DEFFFFFFFFFF),
    .INIT_1D(256'h38271615262626474768598A25F2E2F2E2F2F2F2F2F2F3F3F2F2F32404462626),
    .INIT_1E(256'hFFFFFFFF9CFE125252325637364646142413132313132222120213122212F336),
    .INIT_1F(256'h02777AFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC59FEAB28DEFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'h2737475858687989BAEBFCFCFCFCFBFBDAB9A998887767574616160616351222),
    .INIT_21(256'hADFD1252522236061616264667678798A8C9EAFAFBFCFCFBFBE9986848271626),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFEFFFFFAC59FEAB38DEFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'h888998BACAFBF345FCFCFBDACAA9888868675735E336161604133232027769FF),
    .INIT_24(256'h52321425263656F26757788898B9DAFBFBFCDBFB1344B8785747363647576868),
    .INIT_25(256'h9CFFFFFFFFFFFFFFFF9B59FFAC28CDFFFFFFFFFFFFFFFFFFFFFFFFFFCDFD2342),
    .INIT_26(256'h2546345646352525252515040415F415F346162724233222F2A949FFFFFFFFFF),
    .INIT_27(256'h3626551235050515253535465646364634553424150404040404141414252535),
    .INIT_28(256'hFFFFFFFFFF7B49FFBC28BDFFFFFFFFFFFFFFFFDEEFFFFFFFEEDC444242432335),
    .INIT_29(256'hDABAA9989877676746364625E336062613332222F2EB48FFFFFFFF9C948BFFFF),
    .INIT_2A(256'h6656677787A8A9B9C9D9A9B93365775646353536465666676767888899B93465),
    .INIT_2B(256'hFF7A49FFCD38ACFFFFFFFFFFFFFFFFF7BDFFFFFFFFAB76224232333526364503),
    .INIT_2C(256'h3524251514140414E346162614232212E2FC59FFFFFFFFEFFF18E6FFFFFFFFFF),
    .INIT_2D(256'h4555565676665666335434242414142424343434353535353666346556463535),
    .INIT_2E(256'hDE399CFFFFFFFFFFFFFF38FFCEFFFFFFFF8AB91242422325262646F245343445),
    .INIT_2F(256'h15351425F336161614232222D1FD8BFFFFFFFF9CFFFFBCC57BFFFFFFFF5949FF),
    .INIT_30(256'h6697667644545454443444345544555544765587558644756656773567254615),
    .INIT_31(256'hFFDEFFFFFF49FFFFFFFFFFFFFF7AFCF242422325262646F355346645776566A8),
    .INIT_32(256'hF33616161433221225CCCDFFFFFFFF848BDEBC7AC518FFFFFF596AFFFF288BFF),
    .INIT_33(256'h4354223233123403340203240254F25502125475656587356624461514351424),
    .INIT_34(256'hA4F7ACFFDEFFFFFFFFABFDE2424223252626460355446645866565B866A75576),
    .INIT_35(256'h142332029959FFFFFFFFCDFF17D5EEFFFFFFFFFFEE599CFFFF2949FFFFEF1808),
    .INIT_36(256'h4312240325F304150334F26512335465F1F244F234F224F2F2230223F2462626),
    .INIT_37(256'hD6FFFFFFFFDDFD142222232516165602340234F25502E265F255022343543243),
    .INIT_38(256'hFD39FFFFFFFFFFFFFFACC58BFFFFFFFFCC59BDFFFF3939FFFFFF18CDFFCD28B5),
    .INIT_39(256'h67787888A9B902650212446575859765754455343455233403462626241312F1),
    .INIT_3A(256'hFFFF9B88022213351636660265447655867566A865A775653344123233137677),
    .INIT_3B(256'hFFFFACFFFFDEBDB5E6FFFFFFAB49EEFFFF6A49FEFFFFEFFFFFFFFFFF5ABDFFFF),
    .INIT_3C(256'hA9DAC9B7A7A7B8C98686A77586556545344534351456465634454414FD9CFFFF),
    .INIT_3D(256'h135444554656764476558676B79696D986C875867676555544666677878798A9),
    .INIT_3E(256'h7B9CCDFFFFFFFFFF6948FFFFFFAC49CDFFFFFFFFFFFFFFFFFFEEFFFFFFFF8BFD),
    .INIT_3F(256'h022302022323121212120203021303030303F3F20302E28859FFFFFFFFEE186A),
    .INIT_40(256'h030213231212122312222322221233221212130213020303F2F303F2F3F20312),
    .INIT_41(256'hFFFFFFFF598AFFEFFFDE48ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDFE03021212),
    .INIT_42(256'h221222223222221222222222222212132213C2FE49FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'h3232322232323232223222323232222322222222221223131312222212222222),
    .INIT_44(256'h59BCFFFFFFFF496AFFFFFFFFFFFFFFFFDE28EFFFFFFFFF9BBAF2122232221222),
    .INIT_45(256'h323232222222223232322222220236ABCDFFFFFFFFEEFFFFFFFFFFFFFFFFFFBD),
    .INIT_46(256'h3232323232324232423232322222323232321222222222223222323232222222),
    .INIT_47(256'hFFFF7A59FEFFFFFFFFFFFFFFFFFF5AFFFFFFFFBCFFD222323232323232423232),
    .INIT_48(256'h222222223232323222E1FE28FFFFFFFFFF29FFFFFFFFFFFFFFFFFF7B49FFFFFF),
    .INIT_49(256'h3232323232323232222222323222222222322222222222323232222232323222),
    .INIT_4A(256'hCDFFFFFFFFFFFFFFFFFF07FFFFFFFFFFCC99F232323222323232323222323232),
    .INIT_4B(256'h223232220256ABBDFFFFFFFF7BF7C6ADFFFFFFFFFFFFFF495AFFFFFFFFFFBD59),
    .INIT_4C(256'h3232323222222222223222222222222222222232323232322232223232222222),
    .INIT_4D(256'hFFFFFFBD07B55A9CFFFFFFFFBCFFE21232223232323232322222322232323232),
    .INIT_4E(256'hC2FE48FFFFFFFFFFFFFFDED6E6EEFFFFFFFFCD59ACFFFFFFFFFFFF597AFFFFFF),
    .INIT_4F(256'h2222222222222222322232322222222222223232322222322232222232323222),
    .INIT_50(256'hACFFFF39FFFFFFFFFFCCDBD12222322232323232222222222232223222222222),
    .INIT_51(256'hFFFFFFFFFFFFFFFFACB4FFFFFFFF6A59FFFFFFFFFFFFFF7B6AFFFFFF7C6BC507),
    .INIT_52(256'h222222222222323222223222222222322222222232323222323232F1AA69FFFF),
    .INIT_53(256'hFFFFFFFFFFEDFF04022222322232323232222222222222222222222222222222),
    .INIT_54(256'hFFFFFFFFFFAC6BFFFFEE697AFFFFFFFFFFFFFFCD6ABDFFFFCE07FFFFFFFFEE39),
    .INIT_55(256'h222232323232322222222222222232223232322212221224FE7BFFFFFFFFDEAC),
    .INIT_56(256'hFFFFACFFD1123222222222223232322212223222222222323232323222222222),
    .INIT_57(256'hFF8BDEFFFF9B59EDFFFFFFFFFFFFFFFF7A7BFFFFFFDEFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'h323222122212333322322232324312222302D2FE38FFFFFFFFFF7B5A5AFFFFFF),
    .INIT_59(256'hFCD1222222222222323222126512123222223222323232322222222222223232),
    .INIT_5A(256'hFF5969FFFFFFFFFFFFFFFFFFBC7ADEFFFFFFFFFFFFFFFFFFFFBDFFFFFFFFFFBC),
    .INIT_5B(256'h1234F265122232323232222222C1FD49FFFFFFFFFFFFFFFFFF397BFFDE39FFFF),
    .INIT_5C(256'h2222222222222223244513122222223232323232222222222232222232322223),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFF8A9BFFFFFFFFFFFFFFFFFFFFC5FFFFFFFFFFEEED99F132),
    .INIT_5E(256'h2322223232223222D1FB7ACEFFFFFFFFFFBDFFFFFFFFEE5A7BFFFFFFAB69CDFF),
    .INIT_5F(256'h2222335545340354332212123232222222222222223222223222224413031445),
    .INIT_60(256'hFFFFFFFFFFAC9BEEFFFFFFFFFFFFFF6AA5ACACFFFFFFFFFFACFE660122222222),
    .INIT_61(256'h322222E1DBABBCFFFFFFFFFF38ACFFFFFFFFFFFFFFFFFFFF696AFFFFFFFFFFFF),
    .INIT_62(256'h1202142566F255551222021322223232322232322212121255F2342323333232),
    .INIT_63(256'hFFFF9BABFFFFFFFFFFEED618FFFFFFFFFFFFFFFFFF8AFE46F132222212232323),
    .INIT_64(256'hABACFFFFFFFFEFCE4959FFFFFFFFFFFFFFFFFF9B69CDFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'hF32466A84312980312222222221212223465650244230244131222322212D1EB),
    .INIT_66(256'hEEFFFFDE18A5CDFFFFFFFFFFFFFFFFFFFFFF6AFE66E112222212123333235625),
    .INIT_67(256'hFFFFFFFFFFC5FFFFFFFFFFFFFFFFFE6A7AFFFFFFFFFFFFFFFFFFFFFFFFFFCCAB),
    .INIT_68(256'h123397F22212441302B8A7F2662476F2234422221222222202D1FD9BACFFFFFF),
    .INIT_69(256'h5AFFFFFFFFFFFFEE07FFFFFFFFFFFF6AFD99D1222222323232222445034566EA),
    .INIT_6A(256'hFFE6FFFFFFFFFFFFFFFF7A69DEFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BACFFFFFF),
    .INIT_6B(256'h123355A8F223C8441387451312222232322212F203FE6ABEFFFFFFFFFFBDBDFF),
    .INIT_6C(256'hFFFFFF8BFF6ADEFFFFFFFFFF7AABFCE20222322222220203122376E122438612),
    .INIT_6D(256'hFFFFFFFFFFBC7AACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDABCDFFFFFFDEFFFF),
    .INIT_6E(256'h0254FA1223231222223232323212E188FF79FFFFFFFFFFFFEE596A6A7BF649FF),
    .INIT_6F(256'hFFFF59FFFFFFFFFFFFBC48FE25E21232323222222212333322758512231213C8),
    .INIT_70(256'hFF6A6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCACEEFFFFFFFFFFFFCDEEFF),
    .INIT_71(256'h2232323222222212F124FDEC9BFFFFFFFFFFFFFFFFFFFFFFFFFF0728ACFFFFFF),
    .INIT_72(256'hFFFFFFFFFFFFFF17DCECF2F21222222232322222121222121212441322120222),
    .INIT_73(256'hFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFEAC9BFFFFFFFFFF28D6B5E65A6A7AFF),
    .INIT_74(256'h2212D1F3DCFE8BFEFFFFFFFFFFFFCDFFFFFFFFFFFFFFFFF7ADFFFFFF8A8ADEFF),
    .INIT_75(256'hFFFFFFFF8B17FEAAE2F222323232222222222312222212222233222232322222),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFCDACBCFFFFFFFF08FFFFBD6B7BFFFFFFFFFFFF),
    .INIT_77(256'hACCDFFFFFFFFFFFFFF9CF6FFFFFFFFFFFFFFFFCEFFFFFF8B8ABCFFFFFFFFFFFF),
    .INIT_78(256'hFFFF2828FEDA14E1F1221212221212222232323222222232222202F2D135FCFF),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFFFFABABDDFFFFFF39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'hFFFFFFFFFFFF7B18FFFFFFFFFFFFFFFFFFFFBD7B8BFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7B(256'h5927CCFE9914D2E2F20212122232322212120202E2C246AAFFFECCEDFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFF9B7AFEFFFFFF395A7BFFFFFFFFFF7B6ACDFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFF2849FFFFFFFFFFFFFFFFEE7B6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'h48CCFDFCB97735240302F203245687C9FDFFFDCCBDFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFEE7A7AFFFFFFFF8BFFFFFFFFFFBD59FFFF9CFFFFFFFFFFFFFFFFFF8C28),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[14] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[15] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFDFFFFDFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'h8FFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFF9FFFBFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFF83FFFFFFF),
    .INITP_07(256'h000000000000000000000000000000000000000000000000000000000000FFFF),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hE68BFFFFFFFFFFFFEE7A7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'h597AABDDEDFEFEFEEDDCBBBCACCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hCD7A6AFFFFFFFFFFFFFFFFFFCDBCFFFF7BCEFFFFFFFFFFFFFFFFFFFFFFCD7A58),
    .INIT_03(256'hFFFFFFEE7B7BEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hADADBDBDDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEFFFFFFFFFFFFFFFFFFB56ADE),
    .INIT_05(256'hFFFFFFFFFFFFFFFFBC49FF6ADEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDECE),
    .INIT_06(256'h7BDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC6A6A),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFEF5ABDFFFFFFFFFFFFFFFFFF7BBDFFFFFFFF8B),
    .INIT_08(256'hFF7B38399CFF9BACFFFFFFFF9CADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B6A59FFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFEFDEFFFFFF49FFFFFFFFFFFFFFFFFFEFFFFFFFEE8B8BEEFFFFFF),
    .INIT_0B(256'hFFEE6AFFFFFFFFFFFFFFFF499CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B5939FFFFFFFFEEFF),
    .INIT_0D(256'hFFFF8BFFFFFFFF59DEFFFFFFFFFFFFFFFFFFFFFFEDAB7BEEFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFDEFFFF28FFFFEFADDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B3828EEFFFFFFFFCD59FFFF),
    .INIT_10(256'hFFFFFFCD59FFFFFFFFFFFFFFFFFFFFCDBC9BFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hBDCD8BACFFFFFF18EFFFFF8B8CCDFFFFEFFFFFFFFFDFCEFFFFFF8BFEFFFFFFAD),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC2828ACFFFFFFFF9CFFFFFFFFFFBD),
    .INIT_13(256'h07FFFFFFFFFFFFFFFFFFBCACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFF7BFFFFFF7A28FFFFFFBD07EEFFFFDE9CFFFFDD9BFFFFFFFF9CFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD28275AFFFFFFFFFFFFFFFFFFFFFFFF28FF),
    .INIT_16(256'hFFFFFFFFEDACBCBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hADFFFFC5FFFFFFFFFF28FFFFFFFFACFFFF7AFFDEFFFFFFEFBDFFFFFF49EEFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFF282717CEFFFFFFFFFFDECDFFFFAC8BFFFFFFFFBE),
    .INIT_19(256'hABBCEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFF29FFFFFFFFACFFACBDFFBDFFFFFFFF8CFFFFBD5AFFFFFFFFFFFFBC),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFF7AF6075AFFFFFFFFFFCE9CFE38FFFFFFFFFFFF5AFFE6BD),
    .INIT_1C(256'hFFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hEE39FFFFFFFFACFF6AFFFFCDFFFFFFFFFF9C8BCDFFFFFFFFFFCD9BABCCFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFDD07F6F69CFFFFFFFFFFDE7BFFFFFFFFFFFF6B8B28FFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFDE8BEEFFFFBDFFFFFFFFFFFFFFFFFFFFFFDD9B9B9BEEFFFFFFFFFFFFFFEF),
    .INIT_21(256'hFFFFFFFF6AE6F617BCFFFFFFFFFFFFFFFFFFFFFF6AC5FFFFFFFFFFFFEE39FFFF),
    .INIT_22(256'hEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFCDCEFFFFFFFFFFFFFFFFBD7B9B8BDDFFFFFFFFFFFFFFEFDEFFEFEFEFEF),
    .INIT_24(256'hFFFF48E5D5F69CFFFFFFFFFFFFFFFFFF8CADFFFFFFFFFFFFDE49FFFFFFFFFF7B),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFEBC8A8B8BCDFFFFFFFFFFFFFFFFFFEFEFEFEFFFFFFFFFFFFFFF),
    .INIT_27(256'h18C5D5C55AFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B5ADEFFFFFFFFDEFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE),
    .INIT_29(256'hAC6A7A8A8ADDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hC5C5077BEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE38C5),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hC5F659ACFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEBC7B5959596AABEE),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BE6C5C5),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hE6E618497A8BBCCDCDDECECECDAD9C8B6A49383839495A8BDDFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE8B18D5D5E6),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hF6F6070707070717172828282828498BBDEEFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD6A39F7E6E6),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_36(256'h9B9B9BABACCCDDEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEDDBCAC9B),
    .INIT_38(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6
   (\douta[14] ,
    \douta[15] ,
    clka,
    addra,
    ena);
  output [7:0]\douta[14] ;
  output [0:0]\douta[15] ;
  input clka;
  input [13:0]addra;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ;
  wire [13:0]addra;
  wire clka;
  wire [7:0]\douta[14] ;
  wire [0:0]\douta[15] ;
  wire ena;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\douta[14] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\douta[15] }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h80)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[13]),
        .I1(addra[12]),
        .I2(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    addra,
    ena,
    clka);
  output [15:0]douta;
  input [13:0]addra;
  input ena;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "7" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.264701 mW" *) 
(* C_FAMILY = "kintex7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "16384" *) (* C_READ_DEPTH_B = "16384" *) (* C_READ_WIDTH_A = "16" *) 
(* C_READ_WIDTH_B = "16" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "16384" *) (* C_WRITE_DEPTH_B = "16384" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) 
(* C_XDEVICEFAMILY = "kintex7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  assign dbiterr = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_0_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_1_synth
   (douta,
    addra,
    ena,
    clka);
  output [15:0]douta;
  input [13:0]addra;
  input ena;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta),
        .ena(ena));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
