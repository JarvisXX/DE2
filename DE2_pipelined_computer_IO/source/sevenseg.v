module sevenseg(data, ledsegments);

	input			[3:0]	data;
	output reg	[6:0]	ledsegments;
	
	always @ *
		case (data)
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
