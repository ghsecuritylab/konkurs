-makelib ies_lib/xil_defaultlib -sv \
  "E:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../klt.srcs/sources_1/ip/delayLineBRAM/sim/delayLineBRAM.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

