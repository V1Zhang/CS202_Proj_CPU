// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
<<<<<<< HEAD:CS202_CPU_2024Spring.srcs/sources_1/ip/inst_mem/inst_mem_stub.v
// Date        : Tue Jun  4 17:07:25 2024
// Host        : LAPTOP-K1RM7BEP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Vivado/test/CS202_CPU_2024Spring/CS202_CPU_2024Spring.srcs/sources_1/ip/inst_mem/inst_mem_stub.v
=======
// Date        : Tue Jun  4 17:22:22 2024
// Host        : Aurora running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/vivado/code/2024-Spring-CPU-CS202/CPU.srcs/sources_1/ip/inst_mem/inst_mem_stub.v
>>>>>>> 8a83d4cda0d4cbb3e07d9273b37b330fa58d718b:CPU.ip_user_files/ip/inst_mem/inst_mem_stub.v
// Design      : inst_mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module inst_mem(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[13:0],dina[31:0],douta[31:0]" */;
  input clka;
  input [0:0]wea;
  input [13:0]addra;
  input [31:0]dina;
  output [31:0]douta;
endmodule
