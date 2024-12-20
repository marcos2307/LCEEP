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

//reloj de 1us
reg reloj;
reg [7:0] counter = 0; //cuenta hasta 100 * 10ns = 1us

always@(posedge clk)
    begin
        counter = counter + 1;
        if(counter == 1)
            reloj = 1;
        else if(counter == 50)
            reloj = 0;
        else if(counter == 100) //1us
            counter = 0;
    end
	
pwm pwm1(
.clk(reloj),
.d(d),
.S(S),
.interrupt(interrupt)
 );
 
dead_time dt1(.clk(clk_4us),
	.S(S),
	.s(s),
	.nots(nots));

endmodule
