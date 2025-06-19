`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2025 12:23:38 PM
// Design Name: 
// Module Name: ALU_4bit
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


module ALU_4bit(
input [3:0] A, // 4-bit input A
input [3:0] B, // 4-bit input B
input [2:0] OP, // 3-bit control input for operation selection
output [3:0] Result // 4-bit output
);

// Define ALU operations based on OP
assign Result = (OP == 3'b000) ? A + B :
(OP == 3'b001) ? A - B :
(OP == 3'b010) ? A & B :
(OP == 3'b011) ? A | B :
(OP == 3'b100) ? A ^ B :
4'b0000; // Default to zero for other OP values

endmodule

