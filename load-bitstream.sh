#!/bin/bash

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo $FPGA_JTAG_LOCATOR

if [[ `which vivado` ]]; then
    echo -n "Using Vivado: "
    which vivado
else
    echo -n "No Vivado in path, using 2014.4. Press ENTER to continue."
    read OKAY_RESP
    source /ecad/tools/fpga.bashrc
    source /ecad/tools/xilinx/2014.4/settings64.sh
fi

vivado -mode batch -source ${SCRIPT_DIR}/load-bitstream.tcl -tclargs $FPGA_JTAG_LOCATOR $1
