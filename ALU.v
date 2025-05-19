`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 17:15:09
// Design Name: 
// Module Name: ALU
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

module ALU (
    input [3:0] A,
    input [3:0] B,
    input [2:0] sel,  // 3-bit selector to support 5 operations
    output reg [3:0] result
);

always @(*) begin
    case (sel)
        3'b000: result = A + B;      // Addition
        3'b001: result = A - B;      // Subtraction
        3'b010: result = A & B;      // AND
        3'b011: result = A | B;      // OR
        3'b100: result = ~A;         // NOT A (Unary)
        default: result = 4'b0000;   // Default
    endcase
end

endmodule

