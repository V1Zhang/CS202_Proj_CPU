`timescale 1ns / 1ps

`include "ParamDef.vh"

module IF_tb();

reg cpu_clk;
reg [31:0]branch_pc;
wire[31:0]inst;
IF uub(cpu_clk,cpu_clk+1'b1, branch_pc,1'b0,1'b0,14'b0,32'b0, inst);
initial begin
        cpu_clk=1'b0;
        forever #5 cpu_clk=~cpu_clk;
    end
    
    initial begin
        branch_pc=14'h0;
        #5
        repeat(100) #10 branch_pc=branch_pc+1;
        #20 $finish;
    end
endmodule