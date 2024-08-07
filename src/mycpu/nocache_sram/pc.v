`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/26 21:25:26
// Design Name: 
// Module Name: pc
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


module pc(
	input wire clk,rst,en,clear,
	input wire[31:0] d,
	output reg[31:0] q
    );
	always @(posedge clk,posedge rst) begin
		if(rst) begin
			q <= 32'hbfc00000;
		end else if (clear) begin
			q <= 32'hbfc00000;
		end 
		else if(en) begin
			/* code */
			q <= d;
		end
	end
endmodule