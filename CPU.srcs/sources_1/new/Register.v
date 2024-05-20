`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/07 22:12:17
// Design Name: 
// Module Name: Register
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
//ok
`include "ParamDef.vh"

module Register(
    input                   clk,
    input                   rst,
    input   [`REG_IDX_LEN]  rs1,
    input   [`REG_IDX_LEN]  rs2,
    input   [`REG_IDX_LEN]  write_r,
    input   [`REG_WIDTH]    write_data,
    input                   write_en,
    output [`REG_WIDTH] rd1,
    output [`REG_WIDTH] rd2
);

/****************************************************************
 port           I/O     Src/Dst     Description
 rs1             I        ID        Index of first register
 rs2             I        ID        Index of second register
 write_r         I        ID        Index of write-back register
 write_data      I        Top       Data to write back
 write_en        I        Top       Write back enable
 clk             I        Top       CPU clock signal
 rst             I      H'ware      Reset signal
 rd1             O        ALU       Value of first register
 rd2             O        ALU       Value of second register
****************************************************************/

reg [`REG_WIDTH] registers [`REG_WIDTH];

//assign read_ra = registers[1];

always @(posedge write_en, posedge rst)
begin
    if(rst) begin
        registers[0] = 32'h0000_0000;
        registers[1] = 32'h0000_0000;
        registers[2] = 32'h0000_ff80;
        registers[3] = 32'h0000_0080;
        registers[4] = 32'h0000_0000;
        registers[5] = 32'h0000_0000;
        registers[6] = 32'h0000_0000;
        registers[7] = 32'h0000_0000;
        registers[8] = 32'h0000_0000;
        registers[9] = 32'h0000_0000;
        registers[10] = 32'h0000_0000;
        registers[11] = 32'h0000_0000;
        registers[12] = 32'h0000_0000;
        registers[13] = 32'h0000_0000;
        registers[14] = 32'h0000_0000;
        registers[15] = 32'h0000_0000;
        registers[16] = 32'h0000_0000;
        registers[17] = 32'h0000_0000;
        registers[18] = 32'h0000_0000;
        registers[19] = 32'h0000_0000;
        registers[20] = 32'h0000_0000;
        registers[21] = 32'h0000_0000;
        registers[22] = 32'h0000_0000;
        registers[23] = 32'h0000_0000;
        registers[24] = 32'h0000_0000;
        registers[25] = 32'h0000_0000;
        registers[26] = 32'h0000_0000;
        registers[27] = 32'h0000_0000;
        registers[28] = 32'h0000_0000;
        registers[29] = 32'h0000_0000;
        registers[30] = 32'h0000_0000;
        registers[31] = 32'h0000_0000;
     end 
     else if(write_en && (write_r != 5'b00000)) begin
        registers[write_r] = write_data;
     end
end

assign rd1 = registers[rs1];
assign rd2 = registers[rs2];

endmodule