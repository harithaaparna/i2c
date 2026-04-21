`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:07:20 04/21/2026
// Design Name:   i2c
// Module Name:   i2c_tb.v
// Project Name:  i2c
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: i2c
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
 `timescale 1ns/1ps

module tb_i2c;

reg clk;
reg reset;
wire scl;
wire sda;

i2c uut (
    .clk(clk),
    .reset(reset),
    .scl(scl),
    .sda(sda)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;

    #20;
    reset = 0;

    #20000;

    $stop;
end

endmodule


