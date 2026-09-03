// 	File:			tb_adder2bit.v
//	
//	Description:  	Testbench for lab1_ex.v combinational example.
//                  Test vectors are generated automatically using a counter.
//
//
//	Author(s):		Don M. Gruenbacher
//
//	Date Created:  	August 22, 2024
//
//


`timescale 1 ns / 1 ns

module tb_adder2bit;
   reg  [3:0]  ctr;   // This is a 4-bit wide vector

   wire [1:0]  a_test, b_test;
   wire [2:0]  sum;
   
   

initial
  begin        
     ctr = 4'b0000;
  end

always           // Wait 10 time units
   #5   ctr = ctr + 1;   // 00 -> 01 -> 10 -> 11 -> 00...

   
assign a_test = ctr[3:2];  
assign b_test = ctr[1:0];


// instantiate the design
adder2bit adder_ckt(.a(a_test), .b(b_test), .s(sum));


endmodule
