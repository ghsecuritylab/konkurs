vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/xbip_utils_v3_0_9
vlib activehdl/xbip_pipe_v3_0_5
vlib activehdl/xbip_bram18k_v3_0_5
vlib activehdl/mult_gen_v12_0_14
vlib activehdl/c_reg_fd_v12_0_5
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_5
vlib activehdl/xbip_addsub_v3_0_5
vlib activehdl/c_addsub_v12_0_12

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap xbip_utils_v3_0_9 activehdl/xbip_utils_v3_0_9
vmap xbip_pipe_v3_0_5 activehdl/xbip_pipe_v3_0_5
vmap xbip_bram18k_v3_0_5 activehdl/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 activehdl/mult_gen_v12_0_14
vmap c_reg_fd_v12_0_5 activehdl/c_reg_fd_v12_0_5
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_5 activehdl/xbip_dsp48_addsub_v3_0_5
vmap xbip_addsub_v3_0_5 activehdl/xbip_addsub_v3_0_5
vmap c_addsub_v12_0_12 activehdl/c_addsub_v12_0_12

vlog -work xil_defaultlib  -sv2k12 \
"E:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../klt_ddc.srcs/sources_1/ip/rgb2ycbcr_0/src/mult_gen_0/sim/mult_gen_0.vhd" \

vcom -work c_reg_fd_v12_0_5 -93 \
"../../../ipstatic/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_5 -93 \
"../../../ipstatic/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_12 -93 \
"../../../ipstatic/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../klt_ddc.srcs/sources_1/ip/rgb2ycbcr_0/src/c_addsub_0/sim/c_addsub_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../klt_ddc.srcs/sources_1/ip/rgb2ycbcr_0/sim/modul_puz.v" \
"../../../../klt_ddc.srcs/sources_1/ip/rgb2ycbcr_0/sim/puz.v" \
"../../../../klt_ddc.srcs/sources_1/ip/rgb2ycbcr_0/sim/rgb2ycbcr.v" \
"../../../../klt_ddc.srcs/sources_1/ip/rgb2ycbcr_0/sim/rgb2ycbcr_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

