`timescale 1ns / 1ps
module fulladdbhav(input a,b,cin,output reg sum,cout
    );
always @(a,b,cin)
begin
sum = a^b^cin;
cout = (a&b)|(a^b)&cin;
end

endmodule
