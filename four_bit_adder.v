`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2018 09:32:05 AM
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(x, y, c_in, sum, c_out);
input [3:0] x, y;
input c_in;
output [3:0] sum;
output c_out;
wire c1, c2, c3;

begin
    full_adder fa_0(.x(x[0]), .y(y[0]), .c_in(c_in), .sum(sum[0]), .c_out(c1));
    full_adder fa_1(.x(x[1]), .y(y[1]), .c_in(c1), .sum(sum[1]), .c_out(c2));
    full_adder fa_2(.x(x[2]), .y(y[2]), .c_in(c2), .sum(sum[2]), .c_out(c3));
    full_adder fa_3(.x(x[3]), .y(y[3]), .c_in(c3), .sum(sum[3]), .c_out(c_out));
end
endmodule
