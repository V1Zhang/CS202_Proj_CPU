-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uart_bmpg_0 is
  Port ( 
    upg_clk_i : in STD_LOGIC;
    upg_rst_i : in STD_LOGIC;
    upg_clk_o : out STD_LOGIC;
    upg_wen_o : out STD_LOGIC;
    upg_adr_o : out STD_LOGIC_VECTOR ( 14 downto 0 );
    upg_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    upg_done_o : out STD_LOGIC;
    upg_rx_i : in STD_LOGIC;
    upg_tx_o : out STD_LOGIC
  );

end uart_bmpg_0;

architecture stub of uart_bmpg_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "upg,Vivado 2017.4";
begin
end;
