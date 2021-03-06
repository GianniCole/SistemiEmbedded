#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/usr/Xilinx/SDK/2016.4/bin:/usr/Xilinx/Vivado/2016.4/ids_lite/ISE/bin/lin64:/usr/Xilinx/Vivado/2016.4/bin
else
  PATH=/usr/Xilinx/SDK/2016.4/bin:/usr/Xilinx/Vivado/2016.4/ids_lite/ISE/bin/lin64:/usr/Xilinx/Vivado/2016.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/usr/Xilinx/Vivado/2016.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/usr/Xilinx/Vivado/2016.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/daniele/Scrivania/Task4/project_Task4_v2.1/project_Task4.runs/AXI4_Stream_Divider_m_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log AXI4_Stream_Divider_m.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source AXI4_Stream_Divider_m.tcl
