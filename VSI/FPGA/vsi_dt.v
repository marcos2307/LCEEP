`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2024 17:29:11
// Design Name: 
// Module Name: vsi_dt
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


module vsi_dt(
    input clk,
    input ce, 
    input [9:0] d1,
    input [9:0] d2,
    input [9:0] d3,
    output s1,
    output s2,
    output s3,
    output s4,
    output s5,
    output s6,
    output interrupt
    );


reg [10:0] counter = 0;
reg clk_4us;

always@(posedge clk)
    begin
        counter = counter + 1;
        if(counter == 1)
            clk_4us = 1;
        else if(counter == 200)
            clk_4us = 0;
        else if(counter == 400) //400 * 10ns = 4us
            counter = 0;
    end

pwm_deadtime fasea(
.clk(clk),
.clk_4us(clk_4us),
.d(d1),
.s(s1),
.nots(s4),
.interrupt(interrupt)
    );
    
pwm_deadtime faseb(
.clk(clk),
.clk_4us(clk_4us),
.d(d2),
.s(s3),
.nots(s6),
.interrupt()
    );
    
    
 pwm_deadtime fasec(
.clk(clk),
.clk_4us(clk_4us),
.d(d3),
.s(s5),
.nots(s2),
.interrupt()
    );


endmodule
