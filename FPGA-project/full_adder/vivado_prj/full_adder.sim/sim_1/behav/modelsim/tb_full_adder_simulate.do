######################################################################
#
# File name : tb_full_adder_simulate.do
# Created on: Mon Jan 22 18:38:46 +0800 2024
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.tb_full_adder xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {tb_full_adder_wave.do}

view wave
view structure
view signals

do {tb_full_adder.udo}

run 1000ns
