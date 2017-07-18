# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.cache/wt} [current_project]
set_property parent.project_path {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property ip_output_repo {c:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet {{C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT.xci}}
set_property is_locked true [get_files {{C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT.xci}}]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.runs/SQRT_synth_1} -new_name SQRT -ip [get_ips SQRT]]

if { $cached_ip eq {} } {

synth_design -top SQRT -part xc7z010clg400-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix SQRT_ SQRT.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SQRT_stub.v
 lappend ipCachedFiles SQRT_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SQRT_stub.vhdl
 lappend ipCachedFiles SQRT_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SQRT_sim_netlist.v
 lappend ipCachedFiles SQRT_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SQRT_sim_netlist.vhdl
 lappend ipCachedFiles SQRT_sim_netlist.vhdl

 config_ip_cache -add -dcp SQRT.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips SQRT]
}

rename_ref -prefix_all SQRT_

write_checkpoint -force -noxdef SQRT.dcp

catch { report_utilization -file SQRT_utilization_synth.rpt -pb SQRT_utilization_synth.pb }

if { [catch {
  file copy -force {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.runs/SQRT_synth_1/SQRT.dcp} {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT.dcp}
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT_stub.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT_stub.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT_sim_netlist.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT_sim_netlist.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.runs/SQRT_synth_1/SQRT.dcp} {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT.dcp}
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.runs/SQRT_synth_1/SQRT_stub.v} {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT_stub.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.runs/SQRT_synth_1/SQRT_stub.vhdl} {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT_stub.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.runs/SQRT_synth_1/SQRT_sim_netlist.v} {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT_sim_netlist.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.runs/SQRT_synth_1/SQRT_sim_netlist.vhdl} {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT_sim_netlist.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.ip_user_files/ip/SQRT}]} {
  catch { 
    file copy -force {{C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT_stub.v}} {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.ip_user_files/ip/SQRT}
  }
}

if {[file isdir {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.ip_user_files/ip/SQRT}]} {
  catch { 
    file copy -force {{C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.srcs/sources_1/ip/SQRT/SQRT_stub.vhdl}} {C:/Users/giann/Desktop/PROGETTO FINALE/versione 1 - tutto xilinx/project_Task4/project_Task4.ip_user_files/ip/SQRT}
  }
}
