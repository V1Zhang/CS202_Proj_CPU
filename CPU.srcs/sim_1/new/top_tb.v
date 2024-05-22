`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/22 09:10:18
// Design Name: 
// Module Name: top_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`include "ParamDef.vh"

module top_tb();

//reg clk;
//reg fpga_rst;
//reg start_pg;         // Uart Start
//reg [`SWITCH_WIDTH] switch;
//// UART
//reg rx;               // Receive
//reg tx;              // Transmit
//// LED
//reg [15:0] led;    
//// Seg-tube
//reg[`TUBE_WIDTH] seg_en;        
//reg[`TUBE_WIDTH] seg_out1; 
//reg[`TUBE_WIDTH] seg_out2;
//// VGA
//reg [11:0]       rgb;      // Red, green and blue color signals
//reg              hsync;    // Line synchronization signal
//reg              vsync;     // Field synchronization signal


//top seg_error(clk,fpga_rst,start_pg,switch,rx,tx,led,seg_en,seg_out1,seg_out2,rgb,hsync,vsync);


//initial begin
//        clk=1'b0;
//        fpga_rst = 1'b0;
//        #10 fpga_rst = 1'b1;
//        #20 fpga_rst = 1'b0;
//        start_pg = 1'b0;
        
//        #20 start_pg = 1'b1;
//        #30 fpga_rst = 1'b0;
//        forever #5 clk=~clk;
//    end
    
//    initial begin
//        switch = 32'h0;

//    end

endmodule
