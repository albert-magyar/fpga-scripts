#!/bin/bash

FPGA_ID=$1

case $FPGA_ID in
    1) 
	export FPGA_JTAG_LOCATOR=localhost/xilinx_tcf/Digilent/210251A01ABC
	export FPGA_IP=192.168.1.1
	export FPGA_MAC=00:0A:35:00:01:01
	export FPGA_SERIAL_NUMBER=603651211452-34035
	;;
    2)
	export FPGA_JTAG_LOCATOR=localhost/xilinx_tcf/Digilent/210251A01ABA
	export FPGA_IP=192.168.1.2
	export FPGA_MAC=00:0A:35:00:01:02
	export FPGA_SERIAL_NUMBER=603651211452-34157
	;;
    3)
	export FPGA_JTAG_LOCATOR=localhost/xilinx_tcf/Digilent/210251A01B30
	export FPGA_IP=192.168.1.3
	export FPGA_MAC=00:0A:35:00:01:03
	export FPGA_SERIAL_NUMBER=603651211452-34193
	;;
    4)
	export FPGA_JTAG_LOCATOR=localhost/xilinx_tcf/Digilent/210251840451
	export FPGA_IP=192.168.1.4
	export FPGA_MAC=00:0A:35:00:01:04
	export FPGA_SERIAL_NUMBER=603651211452-09745
	;;
esac
