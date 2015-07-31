#!/bin/bash
echo $FPGA_JTAG_LOCATOR
vivado -mode batch -source load-bitstream.tcl -tclargs $FPGA_JTAG_LOCATOR $1
