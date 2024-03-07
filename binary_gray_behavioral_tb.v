`timescale 1ns / 1ps


module binary_gray_behavioral;

	// Inputs
	reg [3:0] b;

	// Outputs
	wire [3:0] g;

	// Instantiate the Unit Under Test (UUT)
	binarytogray_behvaioural uut (
		.b(b), 
		.g(g)
	);

	initial begin
		// Initialize Inputs
		#50 b = 0;

		// Wait 100 ns for global reset to finish
        #50 b=1;
		#50 b=2;
		#50 b=3;
		#50 b=4;
		#50 b=5;
		#50 b=6;
		#50 b=7;
		#50 b=8;
		#50 b=9;
		#50 b=10;
		#50 b=11;
		#50 b=12;
		#50 b=13;
		#50 b=14;
		#50 b=15;
		
		
		// Add stimulus here

	end
      
endmodule

