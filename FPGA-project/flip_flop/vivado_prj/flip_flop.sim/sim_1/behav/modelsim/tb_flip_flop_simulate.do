######################################################################
#
# File name : tb_flip_flop_simulate.do
# Created on: Tue Jan 23 19:01:49 +0800 2024
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.tb_flip_flop xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {tb_flip_flop_wave.do}

view wave
view structure
view signals

do {tb_flip_flop.udo}

run 1000ns