`timescale 1ns / 1ps
`include "ParamDef.vh"

module GenImm(
    input [`REG_WIDTH] inst,
    output reg [`IMM_WIDTH] out
    );
    wire[6:0] opcode;
    assign opcode = inst[6:0];
    
    // opcode: instType
    always @* begin
        case(opcode)
            7'b0010011,7'b0000011,7'b1100111,7'b1110011: out = {{20{inst[31]}},inst[31:20]}; // I
            7'b0100011: out = {{20{inst[31]}},inst[31:25],inst[11:7]}; // S
            7'b1100011: out = {{20{inst[31]}},inst[7],inst[30:25],inst[11:8],1'b0}; //B
            7'b1101111: out = {{12{inst[31]}}, inst[19:12],inst[20], inst[30:21],1'b0}; //J
            7'b0110111,7'b0010111: out = {inst[31:12]}; //U
            default: out = 0;
        endcase
    end


    //assign imm_JALR = {{20{inst[31]}},inst[31:20]};
    
    // control bit
    
endmodule
