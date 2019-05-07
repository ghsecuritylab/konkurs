// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue May  7 01:55:04 2019
// Host        : N-5CD6281M34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top mainBlockDesign_deconcat_0_0 -prefix
//               mainBlockDesign_deconcat_0_0_ mainBlockDesign_deconcat_0_0_stub.v
// Design      : mainBlockDesign_deconcat_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "deconcat,Vivado 2018.2" *)
module mainBlockDesign_deconcat_0_0(SW, SW0, SW1, SW2, SW3)
/* synthesis syn_black_box black_box_pad_pin="SW[3:0],SW0,SW1,SW2,SW3" */;
  input [3:0]SW;
  output SW0;
  output SW1;
  output SW2;
  output SW3;
endmodule
