//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sun Apr 28 18:16:22 2019
//Host        : N-5CD6281M34 running 64-bit major release  (build 9200)
//Command     : generate_target mainBlockDesign.bd
//Design      : mainBlockDesign
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mainBlockDesign,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mainBlockDesign,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mainBlockDesign.hwdef" *) 
module mainBlockDesign
   (hdmi_rx_clk_n,
    hdmi_rx_clk_p,
    hdmi_rx_data_n,
    hdmi_rx_data_p,
    hdmi_rx_ddc_scl_i,
    hdmi_rx_ddc_scl_o,
    hdmi_rx_ddc_scl_t,
    hdmi_rx_ddc_sda_i,
    hdmi_rx_ddc_sda_o,
    hdmi_rx_ddc_sda_t,
    hdmi_rx_hpd,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_data_n,
    hdmi_tx_data_p,
    sys_clock);
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_rx CLK_N" *) input hdmi_rx_clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_rx CLK_P" *) input hdmi_rx_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_rx DATA_N" *) input [2:0]hdmi_rx_data_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_rx DATA_P" *) input [2:0]hdmi_rx_data_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_rx_ddc SCL_I" *) input hdmi_rx_ddc_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_rx_ddc SCL_O" *) output hdmi_rx_ddc_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_rx_ddc SCL_T" *) output hdmi_rx_ddc_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_rx_ddc SDA_I" *) input hdmi_rx_ddc_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_rx_ddc SDA_O" *) output hdmi_rx_ddc_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_rx_ddc SDA_T" *) output hdmi_rx_ddc_sda_t;
  output [0:0]hdmi_rx_hpd;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_N" *) output hdmi_tx_clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_P" *) output hdmi_tx_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx DATA_N" *) output [2:0]hdmi_tx_data_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx DATA_P" *) output [2:0]hdmi_tx_data_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN mainBlockDesign_sys_clock, FREQ_HZ 125000000, PHASE 0.000" *) input sys_clock;

  wire [23:0]KLT_bs_0_pixel_out;
  wire clk_wiz_0_clk_out1;
  wire dvi2rgb_0_DDC_SCL_I;
  wire dvi2rgb_0_DDC_SCL_O;
  wire dvi2rgb_0_DDC_SCL_T;
  wire dvi2rgb_0_DDC_SDA_I;
  wire dvi2rgb_0_DDC_SDA_O;
  wire dvi2rgb_0_DDC_SDA_T;
  wire dvi2rgb_0_PixelClk;
  wire [23:0]dvi2rgb_0_vid_pData;
  wire hdmi_rx_1_CLK_N;
  wire hdmi_rx_1_CLK_P;
  wire [2:0]hdmi_rx_1_DATA_N;
  wire [2:0]hdmi_rx_1_DATA_P;
  wire rgb2dvi_0_TMDS_CLK_N;
  wire rgb2dvi_0_TMDS_CLK_P;
  wire [2:0]rgb2dvi_0_TMDS_DATA_N;
  wire [2:0]rgb2dvi_0_TMDS_DATA_P;
  wire rgb2ycbcr_0_de_out;
  wire rgb2ycbcr_0_h_sync_out;
  wire rgb2ycbcr_0_v_sync_out;
  wire [7:0]split_rgb_0_r_out;
  wire sys_clock_1;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;

  assign dvi2rgb_0_DDC_SCL_I = hdmi_rx_ddc_scl_i;
  assign dvi2rgb_0_DDC_SDA_I = hdmi_rx_ddc_sda_i;
  assign hdmi_rx_1_CLK_N = hdmi_rx_clk_n;
  assign hdmi_rx_1_CLK_P = hdmi_rx_clk_p;
  assign hdmi_rx_1_DATA_N = hdmi_rx_data_n[2:0];
  assign hdmi_rx_1_DATA_P = hdmi_rx_data_p[2:0];
  assign hdmi_rx_ddc_scl_o = dvi2rgb_0_DDC_SCL_O;
  assign hdmi_rx_ddc_scl_t = dvi2rgb_0_DDC_SCL_T;
  assign hdmi_rx_ddc_sda_o = dvi2rgb_0_DDC_SDA_O;
  assign hdmi_rx_ddc_sda_t = dvi2rgb_0_DDC_SDA_T;
  assign hdmi_rx_hpd[0] = xlconstant_0_dout;
  assign hdmi_tx_clk_n = rgb2dvi_0_TMDS_CLK_N;
  assign hdmi_tx_clk_p = rgb2dvi_0_TMDS_CLK_P;
  assign hdmi_tx_data_n[2:0] = rgb2dvi_0_TMDS_DATA_N;
  assign hdmi_tx_data_p[2:0] = rgb2dvi_0_TMDS_DATA_P;
  assign sys_clock_1 = sys_clock;
  mainBlockDesign_KLT_bs_0_0 KLT_bs_0
       (.enable_tracking(xlconstant_1_dout),
        .pixel_in(split_rgb_0_r_out),
        .pixel_out(KLT_bs_0_pixel_out),
        .reset_position(xlconstant_2_dout),
        .rx_de(rgb2ycbcr_0_de_out),
        .rx_hsync(rgb2ycbcr_0_h_sync_out),
        .rx_pclk(dvi2rgb_0_PixelClk),
        .rx_vsync(rgb2ycbcr_0_v_sync_out));
  mainBlockDesign_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1));
  mainBlockDesign_dvi2rgb_0_0 dvi2rgb_0
       (.PixelClk(dvi2rgb_0_PixelClk),
        .RefClk(clk_wiz_0_clk_out1),
        .SCL_I(dvi2rgb_0_DDC_SCL_I),
        .SCL_O(dvi2rgb_0_DDC_SCL_O),
        .SCL_T(dvi2rgb_0_DDC_SCL_T),
        .SDA_I(dvi2rgb_0_DDC_SDA_I),
        .SDA_O(dvi2rgb_0_DDC_SDA_O),
        .SDA_T(dvi2rgb_0_DDC_SDA_T),
        .TMDS_Clk_n(hdmi_rx_1_CLK_N),
        .TMDS_Clk_p(hdmi_rx_1_CLK_P),
        .TMDS_Data_n(hdmi_rx_1_DATA_N),
        .TMDS_Data_p(hdmi_rx_1_DATA_P),
        .aRst(1'b0),
        .pRst(1'b0),
        .vid_pData(dvi2rgb_0_vid_pData),
        .vid_pHSync(rgb2ycbcr_0_h_sync_out),
        .vid_pVDE(rgb2ycbcr_0_de_out),
        .vid_pVSync(rgb2ycbcr_0_v_sync_out));
  mainBlockDesign_rgb2dvi_0_0 rgb2dvi_0
       (.PixelClk(dvi2rgb_0_PixelClk),
        .TMDS_Clk_n(rgb2dvi_0_TMDS_CLK_N),
        .TMDS_Clk_p(rgb2dvi_0_TMDS_CLK_P),
        .TMDS_Data_n(rgb2dvi_0_TMDS_DATA_N),
        .TMDS_Data_p(rgb2dvi_0_TMDS_DATA_P),
        .aRst(1'b0),
        .vid_pData(KLT_bs_0_pixel_out),
        .vid_pHSync(rgb2ycbcr_0_h_sync_out),
        .vid_pVDE(rgb2ycbcr_0_de_out),
        .vid_pVSync(rgb2ycbcr_0_v_sync_out));
  mainBlockDesign_split_rgb_0_0 split_rgb_0
       (.pixel_in(dvi2rgb_0_vid_pData),
        .r_out(split_rgb_0_r_out));
  mainBlockDesign_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  mainBlockDesign_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  mainBlockDesign_xlconstant_0_2 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule
