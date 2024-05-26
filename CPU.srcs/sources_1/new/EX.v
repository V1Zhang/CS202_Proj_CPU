`timescale 1ns / 1ps

`include "ParamDef.vh"

module EX(
input   wire [`REG_WIDTH]    rd1,
input   wire [`REG_WIDTH]    rd2,
input   wire [`IMM_WIDTH]    imm,
//input   wire [`REG_WIDTH]    pc,
input   wire                 ALUsrc,
input         [2:0]           funct3, 
input         [6:0]           funct7, 
input   wire [`ALU_OP_LEN]   ALUOp,
// input   wire            Unsigned,
output  wire [`IMM_WIDTH]    ALUResult

    );
   
    wire [`REG_WIDTH] operand1 = rd1;
    wire [`REG_WIDTH] operand2 = ALUsrc ? imm : rd2;
    
    ALU alu(
        .operand1(operand1),
        .operand2(operand2),
        .ALUOp(ALUOp),
        .funct3(funct3),
        .funct7(funct7),
        .ALUResult(ALUResult)
        );
      
endmodule
