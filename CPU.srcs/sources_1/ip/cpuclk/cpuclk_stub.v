// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
<<<<<<<< HEAD:CS202_CPU_2024Spring.srcs/sources_1/ip/cpuclk/cpuclk_stub.v
// Date        : Tue Jun  4 17:22:38 2024
// Host        : LAPTOP-K1RM7BEP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Vivado/test/CS202_CPU_2024Spring/CS202_CPU_2024Spring.srcs/sources_1/ip/cpuclk/cpuclk_stub.v
========
// Date        : Tue Jun  4 17:16:52 2024
// Host        : Aurora running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/vivado/code/2024-Spring-CPU-CS202/CPU.srcs/sources_1/ip/cpuclk/cpuclk_stub.v
>>>>>>>> 8a83d4cda0d4cbb3e07d9273b37b330fa58d718b:CPU.srcs/sources_1/ip/cpuclk/cpuclk_stub.v
// Design      : cpuclk
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module cpuclk(cpu_clk, uart_clk, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="cpu_clk,uart_clk,clk_in1" */;
  output cpu_clk;
  output uart_clk;
  input clk_in1;
endmodule
