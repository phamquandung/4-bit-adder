`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2018 07:09:40 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(x, y, c_in, sum, c_out);

input x, y, c_in;
output sum, c_out;
wire w1, w2, w3;

assign w1 = x^y;
assign w2 = x&y;
assign w3 = w1&c_in;

assign sum = w1^c_in;
assign c_out = w2|w3; 


endmodule
