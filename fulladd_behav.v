`timescale 1ns / 1ps

module fulladd_behav;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire  sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	fulladdbhav uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		#100;
		a=0;b=0;cin=1;#100;
		a=0;b=1;cin=0;#100;
		a=0;b=1;cin=1;#100;
		a=1;b=0;cin=0;#100;
		a=1;b=0;cin=1;#100;
		a=1;b=1;cin=0;#100;
		a=1;b=1;cin=1;#100;
		

		
        
		// Add stimulus here

	end
      
endmodule

