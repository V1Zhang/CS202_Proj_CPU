`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/11 11:38:27
// Design Name: 
// Module Name: ID
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


module ID (
            input    wire                 clk,
            input    wire                 rst,
            input    wire [`INST_LEN]     inst,                
            input    wire                 write_en,
            input    wire [`REG_IDX_LEN]  write_r,
            input    wire [`REG_WIDTH]    write_data,
            output   wire [`REG_WIDTH]    rd1,
            output   wire [`REG_WIDTH]    rd2,
            output   wire [`IMM_WIDTH]    immOut,
            output   wire                 PCSelect

        );


wire [`REG_IDX_LEN] rs1 = inst[19:15];
wire [`REG_IDX_LEN] rs2 = inst[24:20];

 Register regFile (
             .clk(clk),
             .rst(rst),
             .rs1(rs1),
             .rs2(rs2),
             .write_r(write_r),
             .write_data(write_data),
             .write_en(write_en),
             .rd1(rd1),
             .rd2(rd2)
         );
         
 GenImm immGen (
            .inst(inst),
            .out(immOut)
        );
        
wire [`REG_WIDTH] rdata1;
wire [`REG_WIDTH] rdata2;
assign rdata1 = rd1;
assign rdata2 = rd2;

PCselect u1(
            .inst(inst),  
            .rd1(rdata1),
            .rd2(rdata2),
            .PCSel(PCSelect)
        );
 endmodule
