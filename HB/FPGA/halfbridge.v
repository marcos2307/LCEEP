`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:56 09/10/2024 
// Design Name: 
// Module Name:    DCMG 
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
module halfbridge(
	input clk,
    input ce,
	input [9:0] d_halfbridge,
	output halfbridge_s,
	output halfbridge_nots,
	output reg clk_int
    );

	//reloj de 2us
	reg clock_2us;
	reg [7:0] counter = 0; //cuenta hasta 200 * 10ns = 2us

	always@(posedge clk)
		begin
			counter = counter + 1;
			if(counter == 1)
				clock_2us = 1;
			else if(counter == 99)
				clock_2us = 0;
			else if(counter == 200) //200 * 10ns = 2us
				counter = 0;
		end
	
	//generador de interrupcion
	reg [13:0] counter_int = 0; //cuenta hasta 10
	always@(posedge clock_2us)
		begin
			counter_int = counter_int + 1;
			if(counter_int == 1)
				clk_int = 1;
			else if(counter_int == 12)
				clk_int = 0;
			else if(counter_int == 25) //50us
				counter_int = 0;
		end

	pwm_deadtime fpga_halfbridge(
	.clk(clk),
    .clk_2us(clock_2us),
	.d(d_halfbridge),
	.s(halfbridge_s),
	.nots(halfbridge_nots)
	);


endmodule
