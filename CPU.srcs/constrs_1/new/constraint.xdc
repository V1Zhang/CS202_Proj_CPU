# clk
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property PACKAGE_PIN P17 [get_ports clk]

# rst
set_property IOSTANDARD LVCMOS33 [get_ports fpga_rst]
set_property PACKAGE_PIN R15 [get_ports fpga_rst]

set_property IOSTANDARD LVCMOS33 [get_ports start_pg]
set_property PACKAGE_PIN V1 [get_ports start_pg]


# uart
set_property IOSTANDARD LVCMOS33 [get_ports rx]
set_property PACKAGE_PIN N5 [get_ports rx]
set_property IOSTANDARD LVCMOS33 [get_ports tx]
set_property PACKAGE_PIN T4 [get_ports tx]


# switch
set_property IOSTANDARD LVCMOS33 [get_ports {switch[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switch[15]}]
set_property PACKAGE_PIN P5 [get_ports {switch[15]}]
set_property PACKAGE_PIN P4 [get_ports {switch[14]}]
set_property PACKAGE_PIN P3 [get_ports {switch[13]}]
set_property PACKAGE_PIN P2 [get_ports {switch[12]}]
set_property PACKAGE_PIN R2 [get_ports {switch[11]}]
set_property PACKAGE_PIN M4 [get_ports {switch[10]}]
set_property PACKAGE_PIN N4 [get_ports {switch[9]}]
set_property PACKAGE_PIN U3 [get_ports {switch[7]}]
set_property PACKAGE_PIN U2 [get_ports {switch[6]}]
set_property PACKAGE_PIN V2 [get_ports {switch[5]}]
set_property PACKAGE_PIN V5 [get_ports {switch[4]}]
set_property PACKAGE_PIN V4 [get_ports {switch[3]}]
set_property PACKAGE_PIN R3 [get_ports {switch[2]}]
set_property PACKAGE_PIN T3 [get_ports {switch[1]}]
set_property PACKAGE_PIN T5 [get_ports {switch[0]}]

# led
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[15]}]

set_property PACKAGE_PIN F6 [get_ports {led[15]}]
set_property PACKAGE_PIN G4 [get_ports {led[14]}]
set_property PACKAGE_PIN G3 [get_ports {led[13]}]
set_property PACKAGE_PIN J4 [get_ports {led[12]}]
set_property PACKAGE_PIN H4 [get_ports {led[11]}]
set_property PACKAGE_PIN J2 [get_ports {led[9]}]
set_property PACKAGE_PIN J3 [get_ports {led[10]}]
set_property PACKAGE_PIN K2 [get_ports {led[8]}]
set_property PACKAGE_PIN K1 [get_ports {led[7]}]
set_property PACKAGE_PIN H6 [get_ports {led[6]}]
set_property PACKAGE_PIN H5 [get_ports {led[5]}]
set_property PACKAGE_PIN J5 [get_ports {led[4]}]
set_property PACKAGE_PIN K6 [get_ports {led[3]}]
set_property PACKAGE_PIN L1 [get_ports {led[2]}]
set_property PACKAGE_PIN M1 [get_ports {led[1]}]
set_property PACKAGE_PIN K3 [get_ports {led[0]}]


# seg
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_en[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out1[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out2[7]}]
set_property PACKAGE_PIN G2 [get_ports {seg_en[7]}]
set_property PACKAGE_PIN C2 [get_ports {seg_en[6]}]
set_property PACKAGE_PIN C1 [get_ports {seg_en[5]}]
set_property PACKAGE_PIN H1 [get_ports {seg_en[4]}]
set_property PACKAGE_PIN G1 [get_ports {seg_en[3]}]
set_property PACKAGE_PIN F1 [get_ports {seg_en[2]}]
set_property PACKAGE_PIN E1 [get_ports {seg_en[1]}]
set_property PACKAGE_PIN G6 [get_ports {seg_en[0]}]
set_property PACKAGE_PIN B4 [get_ports {seg_out1[7]}]
set_property PACKAGE_PIN A4 [get_ports {seg_out1[6]}]
set_property PACKAGE_PIN B1 [get_ports {seg_out1[4]}]
set_property PACKAGE_PIN A3 [get_ports {seg_out1[5]}]
set_property PACKAGE_PIN A1 [get_ports {seg_out1[3]}]
set_property PACKAGE_PIN B3 [get_ports {seg_out1[2]}]
set_property PACKAGE_PIN B2 [get_ports {seg_out1[1]}]
set_property PACKAGE_PIN D5 [get_ports {seg_out1[0]}]
set_property PACKAGE_PIN D4 [get_ports {seg_out2[7]}]
set_property PACKAGE_PIN E3 [get_ports {seg_out2[6]}]
set_property PACKAGE_PIN D3 [get_ports {seg_out2[5]}]
set_property PACKAGE_PIN F4 [get_ports {seg_out2[4]}]
set_property PACKAGE_PIN F3 [get_ports {seg_out2[3]}]
set_property PACKAGE_PIN E2 [get_ports {seg_out2[2]}]
set_property PACKAGE_PIN D2 [get_ports {seg_out2[1]}]
set_property PACKAGE_PIN H2 [get_ports {seg_out2[0]}]


# vga
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb[11]}]



set_property IOSTANDARD LVCMOS33 [get_ports hsync]
set_property IOSTANDARD LVCMOS33 [get_ports vsync]
set_property PACKAGE_PIN D7 [get_ports hsync]
set_property PACKAGE_PIN C4 [get_ports vsync]



set_property PACKAGE_PIN F5 [get_ports {rgb[11]}]
set_property PACKAGE_PIN C6 [get_ports {rgb[10]}]
set_property PACKAGE_PIN C5 [get_ports {rgb[9]}]
set_property PACKAGE_PIN B7 [get_ports {rgb[8]}]
set_property PACKAGE_PIN B6 [get_ports {rgb[7]}]
set_property PACKAGE_PIN A6 [get_ports {rgb[6]}]
set_property PACKAGE_PIN A5 [get_ports {rgb[5]}]
set_property PACKAGE_PIN D8 [get_ports {rgb[4]}]
set_property PACKAGE_PIN C7 [get_ports {rgb[3]}]
set_property PACKAGE_PIN E6 [get_ports {rgb[2]}]
set_property PACKAGE_PIN E5 [get_ports {rgb[1]}]
set_property PACKAGE_PIN E7 [get_ports {rgb[0]}]

