`timescale 1ns / 1ps


module siso_tb;

	// Inputs
	reg clk;
	reg d;
	reg reset;

	// Outputs
	wire [3:0] q;
	wire v;

	// Instantiate the Unit Under Test (UUT)
	siso uut (
		.clk(clk), 
		.d(d), 
		.reset(reset), 
		.q(q),.v(v)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		d = 0;
		reset = 0;
		#10 clk=0;
		end
		always #10 clk=~clk;
		always #10 d=~d;
		
		
	
        

      
endmodule

