`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:32:44 02/17/2024
// Design Name:   decode2_4
// Module Name:   C:/Users/RGUKT/Desktop/DSD/decode2_4/dec.v
// Project Name:  decode2_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decode2_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dec;

	// Inputs
	reg [1:0] I;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	decode2_4 uut (
		.I(I), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		I = 0;

		// Wait 100 ns for global reset to finish
		#100;
		I=1;
		#100;
		I=2;
		#100;
		I=3;
		#100;
        
		// Add stimulus here

	end
      
endmodule

