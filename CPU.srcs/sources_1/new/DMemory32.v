`timescale 1ns / 1ps
`include "ParamDef.vh"

module DMemory32(
    input                       cpu_clk,
    input                       mem_write_enable,
    input   [`REG_WIDTH]        mem_address,
    input   [`REG_WIDTH]        mem_write_data,
    
    // UART Programmer Pinouts
    input                       upg_rst,                  //UPG reset(Active High)
    input                       upg_clk,                  // UPG uart_clk (10MHz)
    input                       upg_write_enable,                  // UPG write enable
    input   [13:0]              upg_adr,                  // UPG write address
    input   [`REG_WIDTH]        upg_write_data,           // UPG write data
    input                       upg_done,                 // 1 if programming is finished);
    
    //output
    output  [`REG_WIDTH]        mem_register_output_data
    );
    
    wire counter_cpu_clk = !cpu_clk;   
    /* CPU work on normal mode when kickOff is 1.
     CPU work on Uart communicate mode when kickOff is 0.*/
    wire kickOff = upg_rst | ( ~ upg_rst & upg_done);

     
    data_mem dm(
                 .clka (kickOff ?     counter_cpu_clk        : upg_clk),
                 .wea (kickOff ?    mem_write_enable  : upg_write_enable),
                 .addra (kickOff ?   mem_address[13:0]   : upg_adr),
                 .dina (kickOff ?    mem_write_data   : upg_write_data),
                 .douta (mem_register_output_data)
                );
       
endmodule
