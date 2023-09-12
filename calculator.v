module calculator (in, seg1, seg2, seg3, seg4, plus, minus, equal, clk);

input [7:0] in;
input plus, equal, clk, minus; 
reg clr, add, sub, operation;
wire [7:0] seg_in; 
reg [7:0] seg_display, result;
output [6:0] seg1, seg2, seg3, seg4;
nbitflipflop nff (in, , operation, seg_in);
seven_seg sg(seg_display, clr, seg1, seg2, seg3, seg4);
always @(clk)
begin
	if(plus == 0) operation = plus;
	else if(minus == 0) operation = minus;
	else operation = 1'b1;
end

always @(in, plus, minus, equal)
begin
	if(plus == 0)
	begin
		clr <= 1'b1;
		add = 1'b1;
	end
	else if (minus == 0)
	begin
		clr <= 1'b1;
		sub = 1'b1;
	end
	else
	begin
		clr <= 1'b0;
		if(equal == 0)
		begin
			if(add == 1)
			begin
				result = in + seg_in;
				add = 0;
			end
			else if(sub == 1)
			begin
				result = seg_in - in;
				sub = 0;
			end
			else
			begin
			result = 0;
			end
			seg_display = result;
		end
		else
		
		seg_display = in;
	end
end

endmodule 