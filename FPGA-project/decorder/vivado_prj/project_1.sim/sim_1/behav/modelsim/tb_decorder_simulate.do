######################################################################
#
# File name : tb_decorder_simulate.do
# Created on: Sun Jan 21 21:12:49 +0800 2024
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.tb_decorder xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {tb_decorder_wave.do}

view wave
view structure
view signals

do {tb_decorder.udo}

run 1000ns