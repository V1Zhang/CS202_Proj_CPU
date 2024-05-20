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
wire [31:0] BranchOut;  //ALU计算结果,跳转使用

// 这里计算PC和imm的和
assign BranchOut = curPC + imm;


//检测时钟上升沿计算新指令地址 
always@(posedge clk)
    begin
        case(pcSrc)   
            1'b0:   tmpPC <= curPC + 4;
            1'b1:   tmpPC <= BranchOut;
            default:  tmpPC <= curPC + 4;
        endcase
    end
    //检测时钟下降沿更新PC或复位信号
    always@(negedge clk or posedge rst)
    begin
        if(rst)
            nextPC <= 0;
        else
            nextPC <= tmpPC;
    end

endmodule
