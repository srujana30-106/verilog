`timescale 1ns / 1ps


module vend;

	// Inputs
	reg clk;
	reg rst;
	reg [1:0] in;

	// Outputs
	wire out;
	wire [1:0] change;

	// Instantiate the Unit Under Test (UUT)
	vending_mac uut (
		.clk(clk), 
		.rst(rst), 
		.in(in), 
		.out(out), 
		.change(change)
	);

	initial begin
		rst=1;
		clk=0;
		
		#5rst=0;
		#100 in=2'b01;
		#150 in=2'b10;
		#50 in=2'b10;
		#100 in =2'b00;
		#100 in=2'b01;
		#100 in=2'b01;
		

	end
	always #5 clk=~clk;
      
endmodule

