`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 17:16:45
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;

reg [3:0] A, B;
reg [2:0] sel;
wire [3:0] result;

ALU uut (.A(A), .B(B), .sel(sel), .result(result));

initial begin
    $display("Testing ALU...");

    A = 4'b0101; B = 4'b0011;

    sel = 3'b000; #10;  // ADD
    sel = 3'b001; #10;  // SUB
    sel = 3'b010; #10;  // AND
    sel = 3'b011; #10;  // OR
    sel = 3'b100; #10;  // NOT A


    $finish;
end
endmodule

