`timescale 1ns / 1ps

module piso_tb;

	// Inputs
	reg [3:0] d;
	reg clk;
	reg clr;
	reg sel;

	// Outputs
	wire [3:0] q;
	wire v;

	// Instantiate the Unit Under Test (UUT)
	piso uut (
		.d(d), 
		.clk(clk), 
		.clr(clr), 
		.sel(sel), 
		.q(q), 
		.v(v)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;
		clr = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#10;
		end
		always #10 clk=~clk;
		always #10 d=~d;
		always #200 sel=~sel;
        
		// Add stimulus here

      
endmodule

