`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    13:56:06 04/21/26
// Design Name:    
// Module Name:    i2c
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module i2c(
    input clk,
    input reset,
    output reg scl,
    output reg sda
);

reg [7:0] clk_div;
reg scl_int;
reg scl_prev;
reg [3:0] bit_cnt;
reg [7:0] data;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        clk_div <= 0;
        scl_int <= 1;
    end else begin
        clk_div <= clk_div + 1;
        if (clk_div == 8'd10) begin
            clk_div <= 0;
            scl_int <= ~scl_int;  // clock toggle
        end
    end
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        scl <= 1;
        sda <= 1;
        bit_cnt <= 7;
        data <= 8'b10101010;
        scl_prev <= 1;
    end else begin
        scl <= scl_int;

        // detect falling edge of SCL
        if (scl_prev == 1 && scl_int == 0) begin
            sda <= data[bit_cnt];

            if (bit_cnt == 0)
                bit_cnt <= 7;
            else
                bit_cnt <= bit_cnt - 1;
        end

        scl_prev <= scl_int;
    end
end

endmodule
