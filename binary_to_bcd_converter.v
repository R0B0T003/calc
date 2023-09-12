module binary_to_bcd_converter(in, clr, unit, ten, hun, thos);
	input [7:0] in ;
	input clr;
	output reg [3:0] unit, ten, hun, thos;
	
	reg [7:0] bcd;
		
	reg [3:0] thous, huns, tens, units;
	always @(in, clr)
	begin
		if(clr == 1)
		begin
		thos <= 4'b0000;
		hun <= 4'b0000;
		ten <= 4'b0000;
		unit <= 4'b0000;
		end
		else
		begin
		bcd = in;
		thos = bcd/1000;
		bcd = bcd%1000;
		thous = thos;
		hun = bcd/100;
		bcd = bcd%100;
		huns = hun;
		ten = bcd/10;
		bcd = bcd%10;
		tens = ten;
		unit = bcd;
		units = unit;
		end
	end
	
endmodule 