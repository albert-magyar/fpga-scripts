#!/bin/bash

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo $FPGA_JTAG_LOCATOR
vivado -mode batch -source $(SCRIPT_DIR)/load-bitstream.tcl -tclargs $FPGA_JTAG_LOCATOR $1
