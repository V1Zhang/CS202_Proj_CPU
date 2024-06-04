vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
<<<<<<< HEAD:CS202_CPU_2024Spring.ip_user_files/sim_scripts/cpuclk/activehdl/compile.do
"D:/Program/xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Program/xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Program/xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../CS202_CPU_2024Spring.srcs/sources_1/ip/cpuclk/cpuclk_clk_wiz.v" \
"../../../../CS202_CPU_2024Spring.srcs/sources_1/ip/cpuclk/cpuclk.v" \
=======
"E:/vivado/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"E:/vivado/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../CPU.srcs/sources_1/ip/cpuclk/cpuclk_clk_wiz.v" \
"../../../../CPU.srcs/sources_1/ip/cpuclk/cpuclk.v" \
>>>>>>> 8a83d4cda0d4cbb3e07d9273b37b330fa58d718b:CPU.ip_user_files/sim_scripts/cpuclk/activehdl/compile.do

vlog -work xil_defaultlib \
"glbl.v"

