`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/07 15:41:08
// Design Name: 
// Module Name: test1
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

module test1(
 input wire clk,
 input wire rst,
 input [2:0] mode,
 input [`SWITCH_WIDTH] switch,
 input wire confirm,
 
 
 output [`LED_WIDTH] seg_out,
 output [`LED_WIDTH] seg_out2
    );
wire clk_20ms;
divclk_20ms div(clk,rst,clk_20ms);    
wire confirm_key;
debounce_button c(clk_20ms,rst,confirm,confirm_key);
reg [1:0] addend [7:0];
reg update;
reg pre_confirm;
reg now_confirm;
reg state=1'b0;
// 读入两个加数a,b
always @ ( posedge clk ) 
begin
if(~rst)
    begin
        pre_confirm<=1'b0;
        now_confirm<=1'b0;
        update<=1'b0;
    end
else
    begin
         pre_confirm<=now_confirm;
         now_confirm<=confirm_key;
         if(~pre_confirm & now_confirm)
             begin
                 update<=~update;
             end 
          else 
             begin 
                update<=update;
             end
          if(~update) begin
              addend[state] <= switch;
              state <= state+1;
          end
    end
end


// 七段数码管显示ab
reg cnt = 1'b0;
reg [7:0] num;
always @ ( posedge clk ) 
begin
if(~rst)
    begin
        pre_confirm<=1'b0;
        now_confirm<=1'b0;
        update<=1'b0;
    end
else
    begin
         pre_confirm<=now_confirm;
         now_confirm<=confirm_key;
         if(~pre_confirm & now_confirm)
             begin
                 update<=~update;
             end 
          else 
             begin 
                update<=update;
             end
          if(~update) begin
              num <= addend[cnt%2];
              cnt <= cnt+1;
          end
    end
end
light_7seg_tube seg_tube(.sw(num[7:4]), .rst(rst), .seg_out(seg_out), .seg_en(1'b1));
light_7seg_tube seg_tube2(.sw(num[3:0]), .rst(rst), .seg_out(seg_out2), .seg_en(1'b1));
          
endmodule
