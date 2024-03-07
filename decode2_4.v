`timescale 1ns / 1ps
module decode2_4(input [1:0]I,
	 output reg [3:0]y
    );
	 
	 always @(I)
	 begin
	 case(I)
	 2'b00:y=0001;
	 2'b01:y=0010;
	 2'b10:y=0100;
	 2'b11:y=1000;
	 endcase
	 end
	 


endmodule
