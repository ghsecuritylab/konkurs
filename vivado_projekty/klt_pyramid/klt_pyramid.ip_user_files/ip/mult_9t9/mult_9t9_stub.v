// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Dec 16 18:37:27 2018
// Host        : cjasny-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               E:/rzeczy/vivado_projekty/klt/klt.srcs/sources_1/ip/mult_9t9/mult_9t9_stub.v
// Design      : mult_9t9
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *)
module mult_9t9(CLK, A, B, CE, SCLR, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[8:0],B[8:0],CE,SCLR,P[17:0]" */;
  input CLK;
  input [8:0]A;
  input [8:0]B;
  input CE;
  input SCLR;
  output [17:0]P;
endmodule
