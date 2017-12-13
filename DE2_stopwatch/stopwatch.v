module stopwatch(clk, key_reset, key_start, key_display,
						  hex0, hex1, hex2, hex3, hex4, hex5, hex6, hex7,
						  led0, led1, led2);

	input clk, key_reset, key_start, key_display;
	output [6:0] hex0, hex1, hex2, hex3, hex4, hex5, hex6, hex7;
	output led0, led1, led2;
	
	reg led0=0, led1=0, led2=0;

	reg [3:0] hour_display_high;
	reg [3:0] hour_display_low;
	reg [3:0] minute_display_high;
	reg [3:0] minute_display_low;
	reg [3:0] second_display_high;
	reg [3:0] second_display_low;
	reg [3:0] msecond_display_high;
	reg [3:0] msecond_display_low;

	reg [3:0] hour_counter_high;
	reg [3:0] hour_counter_low;
	reg [3:0] minute_counter_high;
	reg [3:0] minute_counter_low;
	reg [3:0] second_counter_high;
	reg [3:0] second_counter_low;
	reg [3:0] msecond_counter_high;
	reg [3:0] msecond_counter_low;

	reg [31:0] counter_50M;

	reg [1:0] reset_time=2'b11;
	reg [1:0] start_time=2'b11;
	reg [1:0] display_time=2'b11;
	wire reset_xor;
	wire start_xor;
	wire display_xor;
	reg [31:0] counter_reset=0;
	reg [31:0] counter_start=0;
	reg [31:0] counter_display=0;
	reg reset_out=1;
	reg start_out=1;
	reg display_out=1;
	
	reg reset_flag=0;
	reg start_flag=0;
	reg display_flag=0;
	
	assign reset_xor=reset_time[0]^reset_time[1];
	assign start_xor=start_time[0]^start_time[1];
	assign display_xor=display_time[0]^display_time[1];

	reg start=0;
	reg display=1;

	sevenseg LED8_hour_display_high(hour_display_high, hex7);
	sevenseg LED8_hour_display_low(hour_display_low, hex6);
	sevenseg LED8_minute_display_high(minute_display_high, hex5);
	sevenseg LED8_minute_display_low(minute_display_low, hex4);
	sevenseg LED8_second_display_high(second_display_high, hex3);
	sevenseg LED8_second_display_low(second_display_low, hex2);
	sevenseg LED8_msecond_display_high(msecond_display_high, hex1);
	sevenseg LED8_msecond_display_low(msecond_display_low, hex0);

	always@(posedge clk)
		begin
		
		reset_time <= {reset_time[0], key_reset};
		if (reset_xor==1)
			counter_reset <= 0;
		else
			counter_reset <= counter_reset+1;
		if (counter_reset==1000000)
			reset_out <= reset_time[0];
		
		start_time <= {start_time[0], key_start};
		if (start_xor==1)
			counter_start <= 0;
		else
			counter_start <= counter_start+1;
		if (counter_start==1000000)
			start_out <= start_time[0];
		
		display_time <= {display_time[0], key_display};
		if (display_xor==1)
			counter_display <= 0;
		else
			counter_display <= counter_display+1;
		if (counter_display==1000000)
			display_out <= display_time[0];
		
		if (!reset_out && reset_flag==0)
			begin
			led0 <= 1;
			hour_counter_high <= 0;
			hour_counter_low <= 0;
			minute_counter_high <= 0;
			minute_counter_low <= 0;
			second_counter_high <= 0;
			second_counter_low <= 0;
			msecond_counter_high <= 0;
			msecond_counter_low <= 0;
			start <= 0;
			display <= 1;
			reset_flag <= 1;
			end
		else if (reset_out && reset_flag==1)
			begin
			led0 <= 0;
			reset_flag <= 0;
			end
		
		if (start==0)
			begin
			if (!start_out && start_flag==0)
				begin
				led1 <= 1;
				start <= 1;
				display <= 1;
				start_flag <= 1;
				end
			else if (start_out && start_flag==1)
				begin
				led1 <= 0;
				start_flag <= 0;
				end
			end
		else
			begin
			if (!start_out && start_flag==0)
				begin
				led1 <= 1;
				start <= 0;
				display <= 1;
				start_flag <= 1;
				end
			else if (start_out && start_flag==1)
				begin
				led1 <= 0;
				start_flag <= 0;
				end
			counter_50M <= counter_50M+1;
			if (counter_50M==500000)
				begin
				counter_50M <= 0;
				msecond_counter_low <= msecond_counter_low+1;
				if (msecond_counter_low==10)
					begin
					msecond_counter_low <= 0;
					msecond_counter_high <= msecond_counter_high+1;
					end
				if (msecond_counter_high==10)
					begin
					msecond_counter_high <= 0;
					second_counter_low <= second_counter_low+1;
					end
				if (second_counter_low==10)
					begin
					second_counter_low <= 0;
					second_counter_high <= second_counter_high+1;
					end
				if (second_counter_high==6)
					begin
					second_counter_high <= 0;
					minute_counter_low <= minute_counter_low+1;
					end
				if (minute_counter_low==10)
					begin
					minute_counter_low <= 0;
					minute_counter_high <= minute_counter_high+1;
					end
				if (minute_counter_high==6)
					begin
					minute_counter_high <= 0;
					hour_counter_low <= hour_counter_low+1;
					end
				if (hour_counter_low==10)
					begin
					hour_counter_low <= 0;
					hour_counter_high <= hour_counter_high+1;
					end
				end
			end
		
		if (display==1)
			begin
			if (!display_out && display_flag==0)
				begin
				led2 <= 1;
				display <= 0;
				display_flag <= 1;
				end
			else if (display_out && display_flag==1)
				begin
				led2 <= 0;
				display_flag <= 0;
				end
			hour_display_high <= hour_counter_high;
			hour_display_low <= hour_counter_low;
			minute_display_high <= minute_counter_high;
			minute_display_low <= minute_counter_low;
			second_display_high <= second_counter_high;
			second_display_low <= second_counter_low;
			msecond_display_high <= msecond_counter_high;
			msecond_display_low <= msecond_counter_low;
			end
		else
			begin
			if (!display_out && display_flag==0)
				begin
				led2 <= 1;
				display <= 1;
				display_flag <= 1;
				end
			else if (display_out && display_flag==1)
				begin
				led2 <= 0;
				display_flag <= 0;
				end
			end
		end
endmodule

module sevenseg(data, ledsegments);
	input [3:0] data;
	output ledsegments;
	reg [6:0] ledsegments;
	
	always@(*)
		case(data)
			0: ledsegments=7'b1000000;
			1: ledsegments=7'b1111001;
			2: ledsegments=7'b0100100;
			3: ledsegments=7'b0110000;
			4: ledsegments=7'b0011001;
			5: ledsegments=7'b0010010;
			6: ledsegments=7'b0000010;
			7: ledsegments=7'b1111000;
			8: ledsegments=7'b0000000;
			9: ledsegments=7'b0010000;
			default: ledsegments=7'b1111111;
		endcase
endmodule
