##############################################################################
## Filename:          D:\ra164-2016\lab3_1/drivers/vga_peripheral_v1_00_a/data/vga_peripheral_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Mon Mar 25 09:25:20 2019 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "vga_peripheral" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
