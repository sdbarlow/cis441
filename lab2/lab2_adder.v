timescale 1 ns / 1 ns

module lab2_adder (a, b, sum);
    input [1:0] a,b;
    output [2:0] sum;

    wire c1, c2;

    assign sum[0] = a[0] ^ b[0];
    assign c1 = a[0] & b[0];
    
    assign sum[1] = a[1] ^ b[1] ^ c1;
    assign c2 = (a[1] & b[1]) | (a[1] & c1) | (b[1] & c1);
    assign sum[2] = c2;

endmodule
