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
set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xcvu9p-flgb2104-2-i

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.cache/wt [current_project]
set_property parent.project_path /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions disable [current_project]
read_ip -quiet /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/ip/pcie4_uscale_plus_0/pcie4_uscale_plus_0.xci
set_property used_in_implementation false [get_files -all /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/ip/pcie4_uscale_plus_0/ip_0/synth/pcie4_uscale_plus_0_gt_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/ip/pcie4_uscale_plus_0/ip_0/synth/pcie4_uscale_plus_0_gt.xdc]
set_property used_in_implementation false [get_files -all /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/ip/pcie4_uscale_plus_0/pcie4_uscale_plus_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/ip/pcie4_uscale_plus_0/synth/pcie4_uscale_plus_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/ip/pcie4_uscale_plus_0/synth/pcie4_uscale_plus_0_late.xdc]
set_property used_in_implementation false [get_files -all /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/ip/pcie4_uscale_plus_0/source/ip_pcie4_uscale_plus_x0y1.xdc]

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
close [open __synthesis_is_running__ w]

synth_design -top pcie4_uscale_plus_0 -part xcvu9p-flgb2104-2-i -mode out_of_context

rename_ref -prefix_all pcie4_uscale_plus_0_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef pcie4_uscale_plus_0.dcp
create_report "pcie4_uscale_plus_0_synth_1_synth_report_utilization_0" "report_utilization -file pcie4_uscale_plus_0_utilization_synth.rpt -pb pcie4_uscale_plus_0_utilization_synth.pb"

if { [catch {
  write_verilog -force -mode synth_stub /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.runs/pcie4_uscale_plus_0_synth_1/pcie4_uscale_plus_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.runs/pcie4_uscale_plus_0_synth_1/pcie4_uscale_plus_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.runs/pcie4_uscale_plus_0_synth_1/pcie4_uscale_plus_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.runs/pcie4_uscale_plus_0_synth_1/pcie4_uscale_plus_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

add_files /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.runs/pcie4_uscale_plus_0_synth_1/pcie4_uscale_plus_0_stub.v -of_objects [get_files /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/ip/pcie4_uscale_plus_0/pcie4_uscale_plus_0.xci]

add_files /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.runs/pcie4_uscale_plus_0_synth_1/pcie4_uscale_plus_0_stub.vhdl -of_objects [get_files /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/ip/pcie4_uscale_plus_0/pcie4_uscale_plus_0.xci]

add_files /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.runs/pcie4_uscale_plus_0_synth_1/pcie4_uscale_plus_0_sim_netlist.v -of_objects [get_files /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/ip/pcie4_uscale_plus_0/pcie4_uscale_plus_0.xci]

add_files /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.runs/pcie4_uscale_plus_0_synth_1/pcie4_uscale_plus_0_sim_netlist.vhdl -of_objects [get_files /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/ip/pcie4_uscale_plus_0/pcie4_uscale_plus_0.xci]

add_files /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.runs/pcie4_uscale_plus_0_synth_1/pcie4_uscale_plus_0.dcp -of_objects [get_files /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/ip/pcie4_uscale_plus_0/pcie4_uscale_plus_0.xci]

if {[file isdir /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.ip_user_files/ip/pcie4_uscale_plus_0]} {
  catch { 
    file copy -force /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.runs/pcie4_uscale_plus_0_synth_1/pcie4_uscale_plus_0_sim_netlist.v /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.ip_user_files/ip/pcie4_uscale_plus_0
  }
}

if {[file isdir /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.ip_user_files/ip/pcie4_uscale_plus_0]} {
  catch { 
    file copy -force /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.runs/pcie4_uscale_plus_0_synth_1/pcie4_uscale_plus_0_sim_netlist.vhdl /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.ip_user_files/ip/pcie4_uscale_plus_0
  }
}

if {[file isdir /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.ip_user_files/ip/pcie4_uscale_plus_0]} {
  catch { 
    file copy -force /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.runs/pcie4_uscale_plus_0_synth_1/pcie4_uscale_plus_0_stub.v /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.ip_user_files/ip/pcie4_uscale_plus_0
  }
}

if {[file isdir /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.ip_user_files/ip/pcie4_uscale_plus_0]} {
  catch { 
    file copy -force /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.runs/pcie4_uscale_plus_0_synth_1/pcie4_uscale_plus_0_stub.vhdl /home/centos/daniel/riffa/fpga/xilinx/huawei/huawei_pcie4/prj/Huawei_Gen4.ip_user_files/ip/pcie4_uscale_plus_0
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
