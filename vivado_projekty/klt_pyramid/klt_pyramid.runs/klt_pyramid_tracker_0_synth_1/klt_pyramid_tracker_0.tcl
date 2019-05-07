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
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL-1065} -limit 10000
set_param project.vivado.isBlockSynthRun true
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.cache/wt [current_project]
set_property parent.project_path C:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zybo:part0:2.0 [current_project]
set_property ip_repo_paths {
  c:/konkurs/PYRAMID_TRACKER
  c:/konkurs/IP_repo/hsize_counter
  c:/konkurs/KLT_bsyncpar
  c:/konkurs/KLT_1648
  c:/konkurs/KLT_van
  c:/konkurs/KLT_sim
  c:/konkurs/IP_repo/bbox21
  c:/konkurs/KLT
  c:/konkurs/IP_repo/klt_1650
  c:/konkurs/IP_repo/split_rgb
  c:/konkurs/IP_repo/klt_tracker_w10b2_v2
  c:/konkurs/IP_repo/rgb2ycbcr
} [current_project]
set_property ip_output_repo c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.srcs/sources_1/ip/klt_pyramid_tracker_0/klt_pyramid_tracker_0.xci

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir C:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.runs/klt_pyramid_tracker_0_synth_1 -new_name klt_pyramid_tracker_0 -ip [get_ips klt_pyramid_tracker_0]]

if { $cached_ip eq {} } {
close [open __synthesis_is_running__ w]

synth_design -top klt_pyramid_tracker_0 -part xc7z010clg400-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix klt_pyramid_tracker_0_ klt_pyramid_tracker_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ klt_pyramid_tracker_0_stub.v
 lappend ipCachedFiles klt_pyramid_tracker_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ klt_pyramid_tracker_0_stub.vhdl
 lappend ipCachedFiles klt_pyramid_tracker_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ klt_pyramid_tracker_0_sim_netlist.v
 lappend ipCachedFiles klt_pyramid_tracker_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ klt_pyramid_tracker_0_sim_netlist.vhdl
 lappend ipCachedFiles klt_pyramid_tracker_0_sim_netlist.vhdl
set TIME_taken [expr [clock seconds] - $TIME_start]

 config_ip_cache -add -dcp klt_pyramid_tracker_0.dcp -move_files $ipCachedFiles -use_project_ipc  -synth_runtime $TIME_taken  -ip [get_ips klt_pyramid_tracker_0]
}

rename_ref -prefix_all klt_pyramid_tracker_0_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef klt_pyramid_tracker_0.dcp
create_report "klt_pyramid_tracker_0_synth_1_synth_report_utilization_0" "report_utilization -file klt_pyramid_tracker_0_utilization_synth.rpt -pb klt_pyramid_tracker_0_utilization_synth.pb"

if { [catch {
  file copy -force C:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.runs/klt_pyramid_tracker_0_synth_1/klt_pyramid_tracker_0.dcp c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.srcs/sources_1/ip/klt_pyramid_tracker_0/klt_pyramid_tracker_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.srcs/sources_1/ip/klt_pyramid_tracker_0/klt_pyramid_tracker_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.srcs/sources_1/ip/klt_pyramid_tracker_0/klt_pyramid_tracker_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.srcs/sources_1/ip/klt_pyramid_tracker_0/klt_pyramid_tracker_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.srcs/sources_1/ip/klt_pyramid_tracker_0/klt_pyramid_tracker_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force C:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.runs/klt_pyramid_tracker_0_synth_1/klt_pyramid_tracker_0.dcp c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.srcs/sources_1/ip/klt_pyramid_tracker_0/klt_pyramid_tracker_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force C:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.runs/klt_pyramid_tracker_0_synth_1/klt_pyramid_tracker_0_stub.v c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.srcs/sources_1/ip/klt_pyramid_tracker_0/klt_pyramid_tracker_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.runs/klt_pyramid_tracker_0_synth_1/klt_pyramid_tracker_0_stub.vhdl c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.srcs/sources_1/ip/klt_pyramid_tracker_0/klt_pyramid_tracker_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.runs/klt_pyramid_tracker_0_synth_1/klt_pyramid_tracker_0_sim_netlist.v c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.srcs/sources_1/ip/klt_pyramid_tracker_0/klt_pyramid_tracker_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.runs/klt_pyramid_tracker_0_synth_1/klt_pyramid_tracker_0_sim_netlist.vhdl c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.srcs/sources_1/ip/klt_pyramid_tracker_0/klt_pyramid_tracker_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir C:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.ip_user_files/ip/klt_pyramid_tracker_0]} {
  catch { 
    file copy -force c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.srcs/sources_1/ip/klt_pyramid_tracker_0/klt_pyramid_tracker_0_stub.v C:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.ip_user_files/ip/klt_pyramid_tracker_0
  }
}

if {[file isdir C:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.ip_user_files/ip/klt_pyramid_tracker_0]} {
  catch { 
    file copy -force c:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.srcs/sources_1/ip/klt_pyramid_tracker_0/klt_pyramid_tracker_0_stub.vhdl C:/konkurs/vivado_projekty/klt_pyramid/klt_pyramid.ip_user_files/ip/klt_pyramid_tracker_0
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
