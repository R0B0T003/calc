module dflipflop(d, clr, clk, q);
input d;
output reg q;
input clr, clk;

always @(negedge clk, posedge clr)
begin
	if (clr == 1)
	begin
		q <= 0;
	end
	else 
	begin
		q <= d;
	end
end

endmodule

