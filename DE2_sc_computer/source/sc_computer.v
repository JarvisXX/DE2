module sc_computer (resetn,clock,switch,
						  out_digit0_high,out_digit0_low);
	
	input				resetn,clock;
	input	  [7:0]	switch;
	
	output  [6:0]	out_digit0_high;
	output  [6:0]	out_digit0_low;
	
	wire	  [31:0]	in_port0;
	wire	  [31:0]	out_port0;
	
	wire	  [3:0]	out_decimal0_high;
	wire	  [3:0]	out_decimal0_low;
	
	reg				double_clk;
	always @ (posedge clock)
		double_clk = ~double_clk;
	
	sevenseg LED0_high(out_port0,out_digit0_high);
	
	assign in_port0 = {24'b0, switch};
	
	sc_computer_original SCO(resetn,double_clk,clock,in_port0,out_port0);
	
endmodule
