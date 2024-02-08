`timescale 1ns / 1ps
module alu4_bit;
	// Inputs
	reg [8:0] a;
	reg [8:0] b;
	reg [3:0] sel;
	// Outputs
	wire [31:0] z;
	// Instantiate the Unit Under Test (UUT)
	alu4bit uut (
		.z(z), 
		.a(a), 
		.b(b), 
		.sel(sel)
	);
	initial begin
		// Initialize Inputs
		a = 1;b = 0;sel = 4'b0000;
		a = 1;b = 1;sel = 4'b0001;
		a = 0;b = 1;sel = 4'b0010;
		a = 0;b = 1;sel = 4'b0011;
		a = 0;b = 1;sel = 4'b0100;
		a = 1;b = 1;sel = 4'b0101;
		a = 1;b = 0;sel = 4'b0110;
		a = 0;b = 1;sel = 4'b0111;
		a = 0;b = 0;sel = 4'b1000;
		a = 1;b = 1;sel = 4'b1001;
		a = 0;b = 1;sel = 4'b1010;
		a = 0;b = 0;sel = 4'b1011;
		a = 1;b = 0;sel = 4'b1100;
		a = 0;b = 0;sel = 4'b1101;
		a = 1;b = 0;sel = 4'b1110;
		//a = 0;b = 1;sel = 4'b1111;


	end      
endmodule

