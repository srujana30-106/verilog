`timescale 1ns / 1ps
module pipo(input [3:0]d, input clk,clr,output reg[3:0]q, output reg v
    );
always @(clk or d)
begin
if (clr)
q=4'b0000;
else
q<=d;
assign v=q;
end
endmodule
