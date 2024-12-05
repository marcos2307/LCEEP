`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:30 06/05/2024 
// Design Name: 
// Module Name:    deadtime 
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
module deadtime(
input clk,
input sp,
output reg [1:0] s
 );
reg sp_old = 0;

always@(posedge clk)
	begin
		if(  sp!= sp_old) begin
			s = 2'b00;
		end
		else begin
			s = {~sp,sp};
		end
		sp_old = sp;
	end
		
endmodule
