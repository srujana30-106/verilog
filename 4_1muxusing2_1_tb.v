`timescale 1ns / 1ps


module mux4_1;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg s0;
	reg s1;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	multiplexer uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.s0(s0), 
		.s1(s1), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		s0 = 0;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 0;
		b = 1;
		c = 0;
		d = 0;
		s0 = 0;
		s1 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		a = 0;
		b = 0;
		c = 1;
		d = 0;
		s0 = 1;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 0;
		b = 0;
		c = 0;
		d = 1;
		s0 = 1;
		s1 = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		
        
		// Add stimulus here

	end
      
endmodule

