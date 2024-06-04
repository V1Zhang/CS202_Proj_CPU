-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
<<<<<<< HEAD:CS202_CPU_2024Spring.ip_user_files/ip/cpuclk/cpuclk_stub.vhdl
-- Date        : Tue Jun  4 17:22:38 2024
-- Host        : LAPTOP-K1RM7BEP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vivado/test/CS202_CPU_2024Spring/CS202_CPU_2024Spring.srcs/sources_1/ip/cpuclk/cpuclk_stub.vhdl
=======
-- Date        : Tue Jun  4 17:16:52 2024
-- Host        : Aurora running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/vivado/code/2024-Spring-CPU-CS202/CPU.srcs/sources_1/ip/cpuclk/cpuclk_stub.vhdl
>>>>>>> 8a83d4cda0d4cbb3e07d9273b37b330fa58d718b:CPU.ip_user_files/ip/cpuclk/cpuclk_stub.vhdl
-- Design      : cpuclk
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cpuclk is
  Port ( 
    cpu_clk : out STD_LOGIC;
    uart_clk : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end cpuclk;

architecture stub of cpuclk is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "cpu_clk,uart_clk,clk_in1";
begin
end;
