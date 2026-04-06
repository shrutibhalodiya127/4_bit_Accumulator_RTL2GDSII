`timescale 1ns / 1ps
module n_bit_adder(
    input clk,
    input [3:0] n,
    output reg [7:0] sum = 0  );
    reg [3:0] i = 1; 
    always @(posedge clk) begin
        if (i <= n) begin
            sum <= sum + i;
            i <= i + 1;
        end
    end
endmodule