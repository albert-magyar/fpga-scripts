#!/bin/bash

export FPGA_ID=`/usr/local/bin/qnodes | grep "    jobs =" | sed 's/     jobs = //' | sed 's/, /\n/'g | grep "/$PBS_JOBID" | cut -d/ -f1`

case $FPGA_ID in
    0) 
	export FPGA_JTAG_LOCATOR=localhost/xilinx_tcf/Digilent/210251A01ABC
	export FPGA_IP=192.168.1.1
	export FPGA_MAC=00:0A:35:00:01:01
	export FPGA_SERIAL_NUMBER=603651211452-34035
	;;
    1)
	export FPGA_JTAG_LOCATOR=localhost/xilinx_tcf/Digilent/210251A01ABA
	export FPGA_IP=192.168.1.2
	export FPGA_MAC=00:0A:35:00:01:02
	export FPGA_SERIAL_NUMBER=603651211452-34157
	;;
    2)
	export FPGA_JTAG_LOCATOR=localhost/xilinx_tcf/Digilent/210251A019FE
	export FPGA_IP=192.168.1.3
	export FPGA_MAC=00:0A:35:00:01:03
	export FPGA_SERIAL_NUMBER=603651131449-33505
	;;
    3)
	export FPGA_JTAG_LOCATOR=localhost/xilinx_tcf/Digilent/210251840451
	export FPGA_IP=192.168.1.4
	export FPGA_MAC=00:0A:35:00:01:04
	export FPGA_SERIAL_NUMBER=603651211452-09745
	;;
esac

