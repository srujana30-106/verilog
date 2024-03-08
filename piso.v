`timescale 1ns / 1ps
module piso(input [3:0]d,input clk,clr,sel,output reg[3:0]q,output reg v
    );
always @(clk or d or sel)
begin
if (clr==1)
q=4'b0000;
else if(sel==0)
q<=d;
else
q<=q>>1;
assign v=q[0];
end
endmodule
