`timescale 1ns / 1ps

module multiplexer(input a,b,c,d,s0,s1, output z
    );
function mux_2_1;
input a,b,s;
case(s)
1'b0:mux_2_1=a;
1'b1:mux_2_1=b;
endcase
endfunction
wire m0,m1;
assign m0=mux_2_1(a,b,s0);
assign m1=mux_2_1(c,d,s0);
assign z=mux_2_1(m0,m1,s1);

endmodule
