`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/08 10:17:03
// Design Name: 
// Module Name: ALU
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

module ALU(
    input [`REG_WIDTH] operand1,
    input [`REG_WIDTH] operand2,
    input [`ALU_OP_LEN] ALUOp, // load/store 00; Branch 01; 算数 10
    input [2:0] funct3, 
    input [6:0] funct7,  
    output reg [31:0] ALUResult
    );
    reg [3:0] ALUControl;
    
    always@* begin
        if(ALUOp==2'b00) ALUControl = 4'b0010;
        else if(ALUOp==2'b10) begin
            case(funct3)
                3'h0: begin if(funct7 == 7'h20) ALUControl = 4'b0110; // sub 
                            else ALUControl = 4'b0000; // add addi
                      end
                3'h1: ALUControl = 4'b0101; // sll slli
                3'h2: ALUControl = 4'b1001; // slt slti
                3'h3: ALUControl = 4'b1010; // sltu sltiu
                3'h4: ALUControl = 4'b0100; // xor xori
                3'h5: begin if(funct7 == 7'h20) ALUControl = 4'b1000; // sra srai 
                            else ALUControl = 4'b1001; // slt slti
                      end
                3'h6: ALUControl = 4'b0001; // or ori
                3'h7: ALUControl = 4'b0010; // and andi
            endcase
        end
        else if(ALUOp == 2'b11) ALUControl = 4'b1011; // lui auipc
        else ALUControl = {ALUOp,2'b10};
     end
      
    always@* begin
             case(ALUControl)
             4'h0: ALUResult = operand1 & operand2; //and andi
             4'h1: ALUResult = operand1 | operand2; //or ori
             // 4'h2: ALUResult = $signed(operand1) + $signed(operand2); //add addi lw sw
             4'h3: ALUResult = operand1 + operand2; //addu addiu
             4'h4: ALUResult = operand1 ^ operand1; //xor xori
             4'h5: ALUResult = operand1 << operand2; // sll slli lui
             4'h6: ALUResult = $signed(operand1) - $signed(operand2); // sub 
             4'h7: ALUResult = operand1 >> operand2; // srl srli
             4'h8: ALUResult = operand1 >>>  operand2; // sra srai
             4'h9: ALUResult = (operand1 < operand2)? 32'h1 : 32'h0; // slt slti
             4'hA: ALUResult = ($unsigned(operand1) < $unsigned(operand2))? 32'h1 : 32'h0; // sltu sltui
             4'hB: ALUResult = operand2 << 12; // sltu sltui
             default: ALUResult = 32'h0000_0000;
             endcase      
          end        
//assign zero = (ALUResult == 32'h0) ? 1'b1:1'b0;                
endmodule


//`include "ParamDef.vh"

//module ALU(
//input [`IMM_WIDTH ] data1,
//input [`IMM_WIDTH ] data2,
//input ALUOp,
//input Unsigned,// 特殊判断lui
//output reg [`IMM_WIDTH ] out
//    );
    
//    always@* begin
//        case(ALUOp)
//            `ADD: out = data1 + data2;
//            `SUB: out = data1 - data2;
//            `AND: out = data1 & data2;
//            `OR: out = data1 | data2;
//            `XOR: out = data1 ^ data2;
//            // 为了特殊处理lui
//            `SLL: out = (Unsigned == 1'b0) ? data2 : data1 << $unsigned(data2[4: 0]);
//            `SRL: out = data1 >> $unsigned(data2[4: 0]);
//            `SRA: out = $signed(data1) >> $unsigned(data2[4: 0]);
//            default: out = 32'h0;
//        endcase
//    end
//endmodule

