######################################################################
#
# File name : tb_divider_even_compile.do
# Created on: Sun Jan 28 21:16:28 +0800 2024
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog  -incr -mfcu -work xil_defaultlib  \
"../../../../divider_even.srcs/sources_1/new/divider_even.v" \
"../../../../divider_even.srcs/sim_1/new/tb_divider_even.v" \


# compile glbl module
vlog -work xil_defaultlib "glbl.v"

quit -force
