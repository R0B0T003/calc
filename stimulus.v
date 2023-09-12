module stimulus();
	reg [7:0] in;


	wire [6:0] seg1, seg2, seg3, seg4;
	reg plus, equal, clk;
	calculator cal (in, seg1, seg2, seg3, seg4, plus, equal, clk);
	

	initial 
		clk = 1'b0;
		
	always
		#1 clk = ~clk;
	
	always
		begin
			#5 plus = 1;
			#5 equal = 1;
			#5 in = 8'b0000_1111;
			#5 plus = 0;
			#1 plus = 1;
			#5 in = 8'b0000_0010;
			#5 equal = 0;
			#1 equal = 1;	
			#5 in = 8'b0000_0111;
			#5 plus = 0;
			#1 plus = 1;
			#5 in = 8'b0000_0011;
			#5 equal = 0;
			#1 equal = 1;	
			#5 in = 8'b0000_1000;
			#2 equal = 0;
			
			
			#100 $stop;
		end
	initial
		$monitor($time, " in: %d, seg_in: %d, plus = %b, equal = %b, result  = %d, seg_display = %d", in,
		cal.seg_in,  plus, equal, cal.result, cal.seg_display);
endmodule 