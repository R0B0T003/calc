module nbitflipflop(d, clr, clk, q);
input [7 : 0] d;
output [7 : 0] q;
input clr, clk;

genvar i;

generate for(i = 0; i < 8; i = i+1)
begin: f_loop
	dflipflop dff (d[i], clr, clk, q[i]);
end
endgenerate
endmodule 

