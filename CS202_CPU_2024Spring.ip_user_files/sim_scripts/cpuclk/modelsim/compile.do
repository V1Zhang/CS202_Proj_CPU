vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
<<<<<<< HEAD:CS202_CPU_2024Spring.ip_user_files/sim_scripts/cpuclk/modelsim/compile.do
"D:/Program/xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Program/xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Program/xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../CS202_CPU_2024Spring.srcs/sources_1/ip/cpuclk/cpuclk_clk_wiz.v" \
"../../../../CS202_CPU_2024Spring.srcs/sources_1/ip/cpuclk/cpuclk.v" \
=======
"E:/vivado/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"E:/vivado/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../CPU.srcs/sources_1/ip/cpuclk/cpuclk_clk_wiz.v" \
"../../../../CPU.srcs/sources_1/ip/cpuclk/cpuclk.v" \
>>>>>>> 8a83d4cda0d4cbb3e07d9273b37b330fa58d718b:CPU.ip_user_files/sim_scripts/cpuclk/modelsim/compile.do

vlog -work xil_defaultlib \
"glbl.v"

