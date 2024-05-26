`timescale 1ns / 1ps
module compare(
input [`IMM_WIDTH ] data1,
input [`IMM_WIDTH ] data2,
input Unsigned,
output reg [1:0] out
    );
    wire [31: 0] Ain;
    wire [31: 0] Bin;
    wire equal;
    wire less;
    //  §Ù     ?  ?    
    assign Ain[30: 0] = data1[30: 0];
    assign Ain[31]    = (Unsigned == `UNSIGNED) ? data1[31] : ~data1[31];
    assign Bin[30: 0] = data2[30: 0];
    assign Bin[31]    = (Unsigned == `UNSIGNED) ? data2[31] : ~data2[31];

    //  ?     
    assign equal = ($unsigned(Ain) == $unsigned(Bin)) ? 1'b1 : 1'b0;
    assign less  = ($unsigned(Ain) < $unsigned(Bin)) ? 1'b1 : 1'b0;

    always @(*) begin
        if (equal) begin
            out = `EQUAL;
        end
        else if (less) begin
            out = `LESS;
        end
        else begin
            out = `GREATER_EQ;
        end
    end
endmodule
