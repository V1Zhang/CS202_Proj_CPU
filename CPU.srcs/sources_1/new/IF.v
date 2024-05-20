`timescale 1ns / 1ps

`include "ParamDef.vh"

module IF(
    input                   cpu_clk, // Be aware of that NEED 2 CYCLES to read data
    input                   rst,
    input                   pcSrc,
    
    input   [`INST_LEN]     imm,
    input   [`INST_LEN]     pc,
    output  [13:0]          fetch_addr
    );
    
    wire [`INST_LEN]  curPC;
    PC IF_pc(
        .clk(cpu_clk),
        .rst(rst),
        .pcSrc(pcSrc),
        .imm(imm), 
        .curPC(pc),
        .nextPC(curPC)
        );

    assign fetch_addr = curPC[15:2];

endmodule
