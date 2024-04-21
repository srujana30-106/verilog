`timescale 1ns / 1ps
module vending_mac(input clk,
input rst,
input [1:0]in,//01=5rs 10=10rs
output reg out,
output reg [1:0] change
    );


	 parameter state0=2'b00;
	 parameter state1=2'b01;
	 parameter state2=2'b10;
 
reg [1:0] prsnt_state, nxt_state;
 
 always @(posedge clk or posedge rst)
	begin
		if(rst)
			begin
			 prsnt_state=state0;
			 nxt_state=state0;
			 change=2'b00;
			 out=0;
			end
		else
		begin
			 prsnt_state=nxt_state;
				case(prsnt_state)
				state0:begin
					if(in==2'b00) 
						 begin 
						 nxt_state=state0;
						 out=0;
						 change =0;
						 end
					else if(in==2'b01)
						 begin
						 nxt_state=state1;
						 out=0;
						 change=2'b00;
						 end
					else 
						 begin
						 nxt_state=state2;
						 out=0;
						 change=2'b00;
						 end
						 end
			 state1:begin
					if(in==2'b00)
						 begin
						 nxt_state=state0;
						 out=0;
						 change=2'b01;
						 end
					else if(in==2'b10)
						 begin
						 nxt_state=state0;
						 out=1;
						 change=2'b00;
						 end
					else 
						 begin
						 nxt_state=state2;
						 out=0;
						 change=2'b00;
						 end
						 end
			 state2:begin
					if(in==2'b00)
						 begin
						 nxt_state=state0;
						 out=0;
						 change=2'b10;
						 end
					else if(in==2'b10)
						 begin
						 nxt_state=state0;
						 out=1;
						 change=2'b01;
						 end
					else 
						 begin
						 nxt_state=state0;
						 out=1;
						 change=2'b00;
						 end
						 end
			 endcase
	end
	end
endmodule
