// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module top(clk, fpga_rst, start_pg, switch, rx, tx, led, seg_en, 
  seg_out1, seg_out2, rgb, hsync, vsync);
  input clk;
  input fpga_rst;
  input start_pg;
  input [15:0]switch;
  input rx;
  output tx;
  output [15:0]led;
  output [7:0]seg_en;
  output [7:0]seg_out1;
  output [7:0]seg_out2;
  output [11:0]rgb;
  output hsync;
  output vsync;
endmodule
