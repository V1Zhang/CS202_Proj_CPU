`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/14 21:09:20
// Design Name: 
// Module Name: WB
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


module WB(
   input                   clk, // Note: NEED 2 CYCLES !!
//   input   [13:0]          address,
   input   [`REG_WIDTH]    write_data,
   input                   read_en,
   input                   write_en,
   input                   MemtoReg,
   output  [`REG_WIDTH]    ram_data_out
);

/****************************************************************
port           I/O     Src/Dst     Description
address          I        DMA       The address of demanded data
write_data       I        DMA       The data to write in
read_en          I        DMA       Read enable
write_en         I        DMA       Write enable
clk              I       H'ware     FPGA clock signal
read_data        O        DMA       Data read out
****************************************************************/

wire [`REG_WIDTH] read_data;
wire [`IMM_WIDTH] ALUresult = write_data;
assign read_data = read_en ? ram_data_out : 32'b0;
assign ram_data_out = MemtoReg ? read_data : ALUresult;

//data_mem dm(.a(address), .clk(clk), .d(write_data), .we(write_en),.spo(ram_data_out));

endmodule