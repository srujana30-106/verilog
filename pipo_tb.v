`timescale 1ns / 1ps


module pipo_tb;

	// Inputs
	reg [3:0] d;
	reg clk;
	reg clr;

	// Outputs
	wire [3:0] q;
	wire v;

	// Instantiate the Unit Under Test (UUT)
	pipo uut (
		.d(d), 
		.clk(clk), 
		.clr(clr), 
		.q(q), 
		.v(v)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;
		clr = 0;
		#100;
		
		#100 d=4'b0000;
		#100 d=4'b0001;
		#100 d=4'b0010;
		#100 d=4'b0011;
        end
		always #100 clk=~clk;
		

      
endmodule

