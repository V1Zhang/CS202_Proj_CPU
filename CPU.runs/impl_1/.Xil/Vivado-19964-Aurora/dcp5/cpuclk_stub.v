// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module cpuclk(cpu_clk, uart_clk, clk_in1);
  output cpu_clk;
  output uart_clk;
  input clk_in1;
endmodule
