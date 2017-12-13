module pipelined_computer (resetn, clock, switch, out_digit0_high, out_digit0_low,
									out_digit1_high, out_digit1_low, out_digit2_high, out_digit2_low);
	
	input				resetn, clock;
	input	  [9:0]	switch;
	
	output  [6:0]	out_digit0_high;
	output  [6:0]	out_digit0_low;
	output  [6:0]	out_digit1_high;
	output  [6:0]	out_digit1_low;
	output  [6:0]	out_digit2_high;
	output  [6:0]	out_digit2_low;
	
	wire	  [31:0]	in_port0,in_port1;
	wire	  [31:0]	out_port0,out_port1,out_port2;
	
	wire	  [3:0]	out_decimal0_high;
	wire	  [3:0]	out_decimal0_low;
	wire	  [3:0]	out_decimal1_high;
	wire	  [3:0]	out_decimal1_low;
	wire	  [3:0]	out_decimal2_high;
	wire	  [3:0]	out_decimal2_low;
	
	wire				mem_clock;
	
	assign mem_clock = ~clock;
	
	binary_to_decimal num0(out_port0,out_decimal0_high,out_decimal0_low);
	binary_to_decimal num1(out_port1,out_decimal1_high,out_decimal1_low);
	binary_to_decimal num2(out_port2,out_decimal2_high,out_decimal2_low);
	
	sevenseg LED0_high(out_decimal0_high,out_digit0_high);
	sevenseg LED0_low(out_decimal0_low,out_digit0_low);
	sevenseg LED1_high(out_decimal1_high,out_digit1_high);
	sevenseg LED1_low(out_decimal1_low,out_digit1_low);
	sevenseg LED2_high(out_decimal2_high,out_digit2_high);
	sevenseg LED2_low(out_decimal2_low,out_digit2_low);
	
	assign in_port0 = {27'b0, switch[9:5]};
	assign in_port1 = {27'b0, switch[4:0]};
	
	pipelined_computer_original PCO (resetn, clock, mem_clock, in_port0, in_port1, out_port0, out_port1, out_port2);

endmodule