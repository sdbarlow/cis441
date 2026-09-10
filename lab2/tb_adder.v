// 	File:			tb_adder.v
//	
//	Description:  	Testbench for adder.v combinational example.
//                  Test vectors are generated automatically using a counter.
//
//
//	Author(s):		Don M. Gruenbacher
//
//	Date Created:  	August 29, 2024
//
//


`timescale 1 ns / 1 ns

module tb_adder;
   reg  [5:0]  ctr;   // This is a 6-bit wide vector
   wire  [2:0] a_test, b_test;
   wire [6:0]  segs_test;
   
   

initial
  begin        
     ctr = 6'd0;
  end

always           
   #5   ctr = ctr + 1;   

   
assign a_test = ctr[2:0];  
assign b_test = ctr[5:3];


// instantiate the design
adder adder_ckt(a_test, b_test,segs_test);


endmodule
