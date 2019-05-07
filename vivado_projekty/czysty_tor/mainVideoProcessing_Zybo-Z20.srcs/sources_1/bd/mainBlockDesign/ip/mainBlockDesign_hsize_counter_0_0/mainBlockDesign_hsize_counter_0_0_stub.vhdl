-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue May  7 01:55:05 2019
-- Host        : N-5CD6281M34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/konkurs/vivado_projekty/czysty_tor/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_hsize_counter_0_0/mainBlockDesign_hsize_counter_0_0_stub.vhdl
-- Design      : mainBlockDesign_hsize_counter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mainBlockDesign_hsize_counter_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    de : in STD_LOGIC;
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    counter : out STD_LOGIC_VECTOR ( 11 downto 0 );
    max : out STD_LOGIC_VECTOR ( 11 downto 0 );
    state : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end mainBlockDesign_hsize_counter_0_0;

architecture stub of mainBlockDesign_hsize_counter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,de,hsync,vsync,counter[11:0],max[11:0],state[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hsize_counter,Vivado 2018.2";
begin
end;
