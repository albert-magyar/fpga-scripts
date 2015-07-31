connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/Digilent/210251A01ABC]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/Digilent/210251A01ABC]
open_hw_target
set_property PROGRAM.FILE [lindex $argv 0] [lindex [get_hw_devices] 1]
if {$argc > 0} {
    set_property PROBES.FILE [lindex $argv 1] [lindex [get_hw_devices] 1]
}
current_hw_device [lindex [get_hw_devices] 1]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 1]
program_hw_devices [lindex [get_hw_devices] 1]
refresh_hw_device [lindex [get_hw_devices] 1]
