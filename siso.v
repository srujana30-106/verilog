`timescale 1ns / 1ps
module siso(input clk,d,reset,output reg [3:0]q,output v
    );
always @(clk or d)
begin
if(reset==1)
q<=4'b0000;
else
q<=q>>1;
q[3]<=d;
end
assign v=q[0];

endmodule
