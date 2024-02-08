`timescale 1ns / 1ps

module alu4bit(z,a,b,sel
    );
input [8:0]a;
input [8:0]b;

input [3:0] sel;
output [31:0]z;
reg [31:0]z;//extra one bit of output is adding for carry
always @(sel,a,b)
begin
case(sel)
4'b0000: z=a+b;
4'b0001: z=a-b;
4'b0010: z=b-1;
4'b0011: z=a*b;
4'b0100: z=a&&b;
4'b0101: z=a||b;
4'b0110: z=!a;
4'b0111: z=~a;
4'b1000: z=a&b;
4'b1001: z=a|b;
4'b1010: z=a^b;
4'b1011: z=a<<1;
4'b1100: z=a>>1;
4'b1101: z=a+1;
4'b1110: z=a-1;
//4'b1111: z=b;
endcase
end
endmodule
