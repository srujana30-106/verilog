`timescale 1ns / 1ps
module fullsubbehav(input a,b,bin,output reg difference,bout
    );
always @(a,b,bin)
begin
difference = a^b^bin;
bout =~a&b|~a&bin|b&bin;
end

endmodule
