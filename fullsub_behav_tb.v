`timescale 1ns / 1ps


module fullsub_behav;

	// Inputs
	reg a;
	reg b;
	reg bin;

	// Outputs
	wire difference;
	wire bout;

	// Instantiate the Unit Under Test (UUT)
	fullsubbehav uut (
		.a(a), 
		.b(b), 
		.bin(bin), 
		.difference(difference), 
		.bout(bout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		bin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a=0;b=0;bin=1;#100;
		a=0;b=1;bin=0;#100;
		a=0;b=1;bin=1;#100;
		a=1;b=0;bin=0;#100;
		a=1;b=0;bin=1;#100;
		a=1;b=1;bin=0;#100;
		a=1;b=1;bin=1;#100;
		
        
		// Add stimulus here

	end
      
endmodule

