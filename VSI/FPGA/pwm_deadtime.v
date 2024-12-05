`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:36:11 09/06/2024 
// Design Name: 
// Module Name:    PWM_deadtime 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pwm_deadtime(
input clk,
input clk_4us,
input [9:0] d,
output s,
output nots,
output interrupt
    );


wire S;

//reloj de 500ns
reg clock_500ns;
reg [7:0] counter = 0; //cuenta hasta 50 * 10ns = 500ns

always@(posedge clk)
    begin
        counter = counter + 1;
        if(counter == 1)
            clock_500ns = 1;
        else if(counter == 25)
            clock_500ns = 0;
        else if(counter == 50) //50 * 10ns = 500ns
            counter = 0;
    end
	
pwm pwm1(
.clk(clock_500ns),
.d(d),
.S(S),
.interrupt(interrupt)
 );
 
dead_time dt1(.clk(clk_4us),
	.S(S),
	.s(s),
	.nots(nots));

endmodule
