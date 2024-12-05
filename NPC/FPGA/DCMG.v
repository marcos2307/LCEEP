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
module DCMG(
	input clk,
	input [4:0] state_NPC,
	input [9:0] d_hb,
	input [9:0] d_boost,
	output [3:0] NPC_outa,
	output [3:0] NPC_outb,
	output [3:0] NPC_outc,
	output HALF_s,
	output HALF_nots,
	output BOOST_s,
	output BOOST_nots,
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
	reg [11:0] counter_int = 0; //cuenta hasta 10
	always@(posedge clock_2us)
		begin
			counter_int = counter_int + 1;
			if(counter_int == 1)
				clk_int = 1;
			else if(counter_int == 5)
				clk_int = 0;
			else if(counter_int == 10)//20us
				counter_int = 0;
		end

	// Instantiate NPC module
	NPC_deadtime FPGA_NPC(
		.clk(clock_2us),  
		.state(state_NPC), 
		.out_a(NPC_outa), 
		.out_b(NPC_outb), 
		.out_c(NPC_outc)
	);
	
	
	// Instantiate half-Bridge module
	PWM_deadtime FPGA_HALF(
	.clk(clock_2us),
	.d(d_hb),
	.s(HALF_s),
	.nots(HALF_nots)
	);
	
	PWM_deadtime FPGA_BOOST(
	.clk(clock_2us),
	.d(d_boost),
	.s(BOOST_s),
	.nots(BOOST_nots)
	);


endmodule
