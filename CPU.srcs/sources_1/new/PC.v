`timescale 1ns / 1ps
`include "ParamDef.vh"

module PC(
    input clk,
    input rst,
    input pcSrc,
    input [`REG_WIDTH] imm, 
    input [`REG_WIDTH] curPC,
    output reg [`REG_WIDTH] nextPC

);

/****************************************************************
 Port           I/O     Src/Dst     Description
 clk             I        Top       CPU clock signal
 rst             I      H'ware      Reset signal
 pcSrc           I        Top       PC update enable
 imm             I        Top       imm from imm Gen
 curPC           I        Top       Current PC
 nextPC          O        Top       Next PC
****************************************************************/


reg [`REG_WIDTH] tmpPC;
//wire [31:0] BranchOut;  //ALU  

// assign BranchOut = curPC + imm;

    always@(posedge clk) begin
        if(~rst) nextPC <= 0;
	    else nextPC <= (pcSrc)? (curPC + imm) :(curPC + 4);
    end
//    always@(negedge clk or posedge rst)
//    begin
//        if(rst)
//            nextPC <= 0;
//        else
//            nextPC <= tmpPC;
//    end

endmodule
