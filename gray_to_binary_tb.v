`timescale 1ns / 1ps


module gray_to_binary;

	// Inputs
	reg [3:0] g;

	// Outputs
	wire [3:0] b;

	// Instantiate the Unit Under Test (UUT)
	graytobinary uut (
		.g(g), 
		.b(b)
	);

	initial begin
	#60;
		// Initialize Inputs
		g = 0;

		// Wait 100 ns for global reset to finish
		#50 g=1;
		#50 g=2;
		#50 g=3;
		#50 g=4;
		#50 g=5;
		#50 g=6;
		#50 g=7;
		#50 g=8;
		#50 g=9;
		#50 g=10;
		#50 g=11;
		#50 g=12;
		#50 g=13;
		#50 g=14;
		#50 g=15;
		
		
        
		// Add stimulus here

	end
      
endmodule

