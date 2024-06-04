-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
<<<<<<< HEAD:CS202_CPU_2024Spring.srcs/sources_1/ip/inst_mem/inst_mem_stub.vhdl
-- Date        : Tue Jun  4 17:07:25 2024
-- Host        : LAPTOP-K1RM7BEP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vivado/test/CS202_CPU_2024Spring/CS202_CPU_2024Spring.srcs/sources_1/ip/inst_mem/inst_mem_stub.vhdl
=======
-- Date        : Tue Jun  4 17:22:22 2024
-- Host        : Aurora running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/vivado/code/2024-Spring-CPU-CS202/CPU.srcs/sources_1/ip/inst_mem/inst_mem_stub.vhdl
>>>>>>> 8a83d4cda0d4cbb3e07d9273b37b330fa58d718b:CPU.ip_user_files/ip/inst_mem/inst_mem_stub.vhdl
-- Design      : inst_mem
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inst_mem is
  Port ( 
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end inst_mem;

architecture stub of inst_mem is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,wea[0:0],addra[13:0],dina[31:0],douta[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_1,Vivado 2017.4";
begin
end;