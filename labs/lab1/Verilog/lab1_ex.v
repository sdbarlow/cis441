// 	File:			adder2bit.v
//	
//	Description:  	Example  of a combinational circuit for Lab 1
//
//	Author(s):		Don M. Gruenbacher
//
//	Date Created:  	August 22, 2024
//
//


`timescale 1 ns / 1 ns	// Format:  (units for # statements)/(resolution for display)

 
module adder2bit(a, b, s);
	input [1:0] a,b;
	output [2:0] s;

	wire c1, c2;

 	assign s[0] = a[0] ^ b[0];
	assign c1 = a[0] & b[0];

	assign s[1] = a[1] ^ b[1] ^ c[0]

	.....

endmodule         