-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue May  7 00:51:52 2019
-- Host        : N-5CD6281M34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/konkurs/vivado_projekty/czysty_tor/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_klt_pyramid_tracker_0_0/mainBlockDesign_klt_pyramid_tracker_0_0_stub.vhdl
-- Design      : mainBlockDesign_klt_pyramid_tracker_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mainBlockDesign_klt_pyramid_tracker_0_0 is
  Port ( 
    rx_pclk : in STD_LOGIC;
    rx_de : in STD_LOGIC;
    rx_hsync : in STD_LOGIC;
    rx_vsync : in STD_LOGIC;
    pixel_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    set_x0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    set_y0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    reset : in STD_LOGIC;
    enable : in STD_LOGIC;
    point_x0_L0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    point_y0_L0 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    uppx_L0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    centerpx_L0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    downpx_L0 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end mainBlockDesign_klt_pyramid_tracker_0_0;

architecture stub of mainBlockDesign_klt_pyramid_tracker_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rx_pclk,rx_de,rx_hsync,rx_vsync,pixel_in[7:0],set_x0[11:0],set_y0[10:0],reset,enable,point_x0_L0[11:0],point_y0_L0[10:0],uppx_L0[7:0],centerpx_L0[7:0],downpx_L0[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "klt_pyramid_tracker,Vivado 2018.2";
begin
end;
