
// Project 1 top-level module for ECE 441 Lab 2 Adder
// adder.v
//
//
// Don M. Gruenbacher
// August 27, 2024

`timescale 1 ns / 1 ns

module adder_sub (a_in, b_in, sel, segs);

	input [2:0]  a_in /* synthesis chip_pin = "AD12,AD11,AF10" */;		// Input word for dip switches
	input [2:0]  b_in /* synthesis chip_pin = "AF9,AC12,AB12" */;		// Input word for dip switches
    input sel;  /* synthesis chip_pin = "Y16" */;	
	output [6:0] segs /* synthesis chip_pin = "AH28,AG28,AF28,AG27,AE28,AE27,AE26" */; 	// 7-segment LED outputs for lower digit
	
	// local signal declarations
	
	wire  [3:0] sum, diff, f;
	
	assign sum = a_in + b_in;

    assign diff = a_in - b_in;

    assign f = sel ? sum : diff ;
		
	// Instantiate the seven segment decoder
	sevseg_dec dec_lower (.x_in(f), .segs(segs));
	

endmodule
