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
module boost(
	input clk,
    input ce,
	input [9:0] d_boost,
	output boost_s,
	output boost_nots,
	output clk_int
    );

	//reloj de 4us
	reg clock_4us;
	reg [7:0] counter = 0; //cuenta hasta 400 * 10ns = 4us

	always@(posedge clk)
		begin
			counter = counter + 1;
			if(counter == 1)
				clock_4us = 1;
			else if(counter == 200)
				clock_4us = 0;
			else if(counter == 400) //400 * 10ns = 4us
				counter = 0;
		end
	
	pwm_deadtime fpga_boost(
    .clk(clk),
	.clk_4us(clock_4us),
	.d(d_boost),
	.s(boost_s),
	.nots(boost_nots),
    .interrupt(clk_int)
	);


endmodule
