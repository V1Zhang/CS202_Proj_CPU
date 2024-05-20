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
wire [31:0] BranchOut;  //ALU������,��תʹ��

// �������PC��imm�ĺ�
assign BranchOut = curPC + imm;


//���ʱ�������ؼ�����ָ���ַ 
always@(posedge clk)
    begin
        case(pcSrc)   
            1'b0:   tmpPC <= curPC + 4;
            1'b1:   tmpPC <= BranchOut;
            default:  tmpPC <= curPC + 4;
        endcase
    end
    //���ʱ���½��ظ���PC��λ�ź�
    always@(negedge clk or posedge rst)
    begin
        if(rst)
            nextPC <= 0;
        else
            nextPC <= tmpPC;
    end

endmodule
