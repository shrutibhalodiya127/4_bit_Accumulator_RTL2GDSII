`timescale 1ns / 1ps
module n_bit_adder_tb();
    reg clk;
    reg [3:0] n;
    wire [7:0] sum;
    n_bit_adder uut (.clk(clk), .n(n), .sum(sum));
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        // --- Case 1: n = 10 ---
        n = 4'd10;
        #110; 
        $display("At n=10, Final Sum: %d", sum);
        // --- Case 2: n = 12 ---
        n = 4'd12;
        #30; 
        $display("At n=12, Final Sum: %d", sum);
        // --- Case 3: n = 15 ---
        n = 4'd15;
        #40;
        $display("At n=15, Final Sum: %d", sum);
        $finish;
    end
endmodule
    
