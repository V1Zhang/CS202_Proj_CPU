-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
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
begin
end;
