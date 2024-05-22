-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
  Port ( 
    clk : in STD_LOGIC;
    fpga_rst : in STD_LOGIC;
    start_pg : in STD_LOGIC;
    switch : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx : in STD_LOGIC;
    tx : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    seg_en : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg_out1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg_out2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rgb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC
  );

end top;

architecture stub of top is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
begin
end;
