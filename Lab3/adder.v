
// Project 1 top-level module for ECE 441 Lab 2 Adder
// adder.v
//
//
// Don M. Gruenbacher
// August 27, 2024

`timescale 1 ns / 1 ns

module adder (a_in, b_in, segs);

	input [2:0]  a_in /* synthesis chip_pin = "AD12,AD11,AF10" */;		// Input word for dip switches
	input [2:0]  b_in /* synthesis chip_pin = "AF9,AC12,AB12" */;		// Input word for dip switches
	output [6:0] segs /* synthesis chip_pin = "AH28,AG28,AF28,AG27,AE28,AE27,AE26" */; 	// 7-segment LED outputs for lower digit
	
	// local signal declarations
	
	wire  [3:0] sum;
	
	assign sum = a_in + b_in;
		
	// Instantiate the seven segment decoder
	sevseg_dec dec_lower (.x_in(sum), .segs(segs));
	

endmodule
