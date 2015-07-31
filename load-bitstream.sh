#!/bin/bash
vivado -mode batch -source load-bitstream.tcl -tclargs $1
