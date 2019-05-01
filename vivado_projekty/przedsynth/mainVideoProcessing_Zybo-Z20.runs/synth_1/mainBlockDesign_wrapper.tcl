# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.cache/wt [current_project]
set_property parent.project_path C:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zybo-z7-20:part0:1.0 [current_project]
set_property ip_repo_paths {
  c:/konkurs/2018.2_IP/vivado-library
  c:/konkurs/IP_repo/vivado-library
  c:/konkurs/KLT_bs
  c:/konkurs/IP_repo/rgb2ycbcr
  c:/konkurs/KLT_van
  c:/konkurs/IP_repo/bbox21
  c:/konkurs/IP_repo/split_rgb
} [current_project]
set_property ip_output_repo c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/hdl/mainBlockDesign_wrapper.v
add_files C:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/mainBlockDesign.bd
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_dvi2rgb_0_0/src/dvi2rgb.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_dvi2rgb_0_0/src/dvi2rgb_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_clk_wiz_0_0/mainBlockDesign_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_clk_wiz_0_0/mainBlockDesign_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_clk_wiz_0_0/mainBlockDesign_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_rgb2dvi_0_0/src/rgb2dvi.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_rgb2dvi_0_0/src/rgb2dvi_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_rgb2dvi_0_0/src/rgb2dvi_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_KLT_van_0_0/src/frame_delay_sim/frame_delay_sim_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_KLT_van_0_0/src/delayLineBRAM/delayLineBRAM_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_system_ila_0_0/bd_0/ip/ip_0/bd_ebcc_ila_lib_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_system_ila_0_0/bd_0/bd_ebcc_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/ip/mainBlockDesign_system_ila_0_0/mainBlockDesign_system_ila_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/sources_1/bd/mainBlockDesign/mainBlockDesign_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/constrs_1/imports/digilent-xdc-master/Zybo-Z7-Master.xdc
set_property used_in_implementation false [get_files C:/konkurs/vivado_projekty/przedsynth/mainVideoProcessing_Zybo-Z20.srcs/constrs_1/imports/digilent-xdc-master/Zybo-Z7-Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top mainBlockDesign_wrapper -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef mainBlockDesign_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file mainBlockDesign_wrapper_utilization_synth.rpt -pb mainBlockDesign_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
