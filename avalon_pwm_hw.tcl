# TCL File Generated by Component Editor 18.1
# Wed Mar 04 10:06:42 JST 2020
# DO NOT MODIFY


# 
# avalon_pwm "Avalon PWM" v1.0
# Shunichi Yamamoto 2020.03.04.10:06:42
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module avalon_pwm
# 
set_module_property DESCRIPTION ""
set_module_property NAME avalon_pwm
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Shunichi Yamamoto"
set_module_property DISPLAY_NAME "Avalon PWM"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL AVALON2PWM
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file avalon2pwm.vhd VHDL PATH avalon2pwm.vhd TOP_LEVEL_FILE


# 
# parameters
# 
add_parameter WIDTH INTEGER 3
set_parameter_property WIDTH DEFAULT_VALUE 3
set_parameter_property WIDTH DISPLAY_NAME WIDTH
set_parameter_property WIDTH TYPE INTEGER
set_parameter_property WIDTH UNITS None
set_parameter_property WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property WIDTH HDL_PARAMETER true
add_parameter PWM_COUNTER_MAX INTEGER 60000
set_parameter_property PWM_COUNTER_MAX DEFAULT_VALUE 60000
set_parameter_property PWM_COUNTER_MAX DISPLAY_NAME PWM_COUNTER_MAX
set_parameter_property PWM_COUNTER_MAX TYPE INTEGER
set_parameter_property PWM_COUNTER_MAX UNITS None
set_parameter_property PWM_COUNTER_MAX ALLOWED_RANGES -2147483648:2147483647
set_parameter_property PWM_COUNTER_MAX HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clk
# 
add_interface clk clock end
set_interface_property clk clockRate 0
set_interface_property clk ENABLED true
set_interface_property clk EXPORT_OF ""
set_interface_property clk PORT_NAME_MAP ""
set_interface_property clk CMSIS_SVD_VARIABLES ""
set_interface_property clk SVD_ADDRESS_GROUP ""

add_interface_port clk csi_clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clk
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset csi_reset_n reset_n Input 1


# 
# connection point s1
# 
add_interface s1 avalon end
set_interface_property s1 addressUnits WORDS
set_interface_property s1 associatedClock clk
set_interface_property s1 associatedReset reset
set_interface_property s1 bitsPerSymbol 8
set_interface_property s1 burstOnBurstBoundariesOnly false
set_interface_property s1 burstcountUnits WORDS
set_interface_property s1 explicitAddressSpan 0
set_interface_property s1 holdTime 0
set_interface_property s1 linewrapBursts false
set_interface_property s1 maximumPendingReadTransactions 0
set_interface_property s1 maximumPendingWriteTransactions 0
set_interface_property s1 readLatency 0
set_interface_property s1 readWaitTime 1
set_interface_property s1 setupTime 0
set_interface_property s1 timingUnits Cycles
set_interface_property s1 writeWaitTime 0
set_interface_property s1 ENABLED true
set_interface_property s1 EXPORT_OF ""
set_interface_property s1 PORT_NAME_MAP ""
set_interface_property s1 CMSIS_SVD_VARIABLES ""
set_interface_property s1 SVD_ADDRESS_GROUP ""

add_interface_port s1 avs_s1_write write Input 1
add_interface_port s1 avs_s1_writedata writedata Input 32
set_interface_assignment s1 embeddedsw.configuration.isFlash 0
set_interface_assignment s1 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment s1 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment s1 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point external_connection
# 
add_interface external_connection conduit end
set_interface_property external_connection associatedClock clk
set_interface_property external_connection associatedReset ""
set_interface_property external_connection ENABLED true
set_interface_property external_connection EXPORT_OF ""
set_interface_property external_connection PORT_NAME_MAP ""
set_interface_property external_connection CMSIS_SVD_VARIABLES ""
set_interface_property external_connection SVD_ADDRESS_GROUP ""

add_interface_port external_connection PWM_OUT pwm_out Output "(width) - (0) + 1"

