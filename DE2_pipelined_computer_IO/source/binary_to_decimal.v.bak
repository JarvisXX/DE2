module binary_to_decimal(out_port, out_decimal_high, out_decimal_low);

	input  [31:0]	out_port;
	output [ 3:0]	out_decimal_high;
	output [ 3:0]	out_decimal_low;
	
	assign out_decimal_high = out_port/10;
	assign out_decimal_low  = out_port%10;
	/*
	always @(*)
		case(out_port)
		 0:begin out_decimal_high = 0;out_decimal_low = 0;end
		 1:begin out_decimal_high = 0;out_decimal_low = 1;end
		 2:begin out_decimal_high = 0;out_decimal_low = 2;end
		 3:begin out_decimal_high = 0;out_decimal_low = 3;end
		 4:begin out_decimal_high = 0;out_decimal_low = 4;end
		 5:begin out_decimal_high = 0;out_decimal_low = 5;end
		 6:begin out_decimal_high = 0;out_decimal_low = 6;end
		 7:begin out_decimal_high = 0;out_decimal_low = 7;end
		 8:begin out_decimal_high = 0;out_decimal_low = 8;end
		 9:begin out_decimal_high = 0;out_decimal_low = 9;end
		10:begin out_decimal_high = 1;out_decimal_low = 0;end
		11:begin out_decimal_high = 1;out_decimal_low = 1;end
		12:begin out_decimal_high = 1;out_decimal_low = 2;end
		13:begin out_decimal_high = 1;out_decimal_low = 3;end
		14:begin out_decimal_high = 1;out_decimal_low = 4;end
		15:begin out_decimal_high = 1;out_decimal_low = 5;end
		16:begin out_decimal_high = 1;out_decimal_low = 6;end
		17:begin out_decimal_high = 1;out_decimal_low = 7;end
		18:begin out_decimal_high = 1;out_decimal_low = 8;end
		19:begin out_decimal_high = 1;out_decimal_low = 9;end
		20:begin out_decimal_high = 2;out_decimal_low = 0;end
		21:begin out_decimal_high = 2;out_decimal_low = 1;end
		22:begin out_decimal_high = 2;out_decimal_low = 2;end
		23:begin out_decimal_high = 2;out_decimal_low = 3;end
		24:begin out_decimal_high = 2;out_decimal_low = 4;end
		25:begin out_decimal_high = 2;out_decimal_low = 5;end
		26:begin out_decimal_high = 2;out_decimal_low = 6;end
		27:begin out_decimal_high = 2;out_decimal_low = 7;end
		28:begin out_decimal_high = 2;out_decimal_low = 8;end
		29:begin out_decimal_high = 2;out_decimal_low = 9;end
		30:begin out_decimal_high = 3;out_decimal_low = 0;end
		31:begin out_decimal_high = 3;out_decimal_low = 1;end
		32:begin out_decimal_high = 3;out_decimal_low = 2;end
		33:begin out_decimal_high = 3;out_decimal_low = 3;end
		34:begin out_decimal_high = 3;out_decimal_low = 4;end
		35:begin out_decimal_high = 3;out_decimal_low = 5;end
		36:begin out_decimal_high = 3;out_decimal_low = 6;end
		37:begin out_decimal_high = 3;out_decimal_low = 7;end
		38:begin out_decimal_high = 3;out_decimal_low = 8;end
		39:begin out_decimal_high = 3;out_decimal_low = 9;end
		40:begin out_decimal_high = 4;out_decimal_low = 0;end
		41:begin out_decimal_high = 4;out_decimal_low = 1;end
		42:begin out_decimal_high = 4;out_decimal_low = 2;end
		43:begin out_decimal_high = 4;out_decimal_low = 3;end
		44:begin out_decimal_high = 4;out_decimal_low = 4;end
		45:begin out_decimal_high = 4;out_decimal_low = 5;end
		46:begin out_decimal_high = 4;out_decimal_low = 6;end
		47:begin out_decimal_high = 4;out_decimal_low = 7;end
		48:begin out_decimal_high = 4;out_decimal_low = 8;end
		49:begin out_decimal_high = 4;out_decimal_low = 9;end
		50:begin out_decimal_high = 5;out_decimal_low = 0;end
		51:begin out_decimal_high = 5;out_decimal_low = 1;end
		52:begin out_decimal_high = 5;out_decimal_low = 2;end
		53:begin out_decimal_high = 5;out_decimal_low = 3;end
		54:begin out_decimal_high = 5;out_decimal_low = 4;end
		55:begin out_decimal_high = 5;out_decimal_low = 5;end
		56:begin out_decimal_high = 5;out_decimal_low = 6;end
		57:begin out_decimal_high = 5;out_decimal_low = 7;end
		58:begin out_decimal_high = 5;out_decimal_low = 8;end
		59:begin out_decimal_high = 5;out_decimal_low = 9;end
		60:begin out_decimal_high = 6;out_decimal_low = 0;end
		61:begin out_decimal_high = 6;out_decimal_low = 1;end
		62:begin out_decimal_high = 6;out_decimal_low = 2;end
		63:begin out_decimal_high = 6;out_decimal_low = 3;end
		64:begin out_decimal_high = 6;out_decimal_low = 4;end
		65:begin out_decimal_high = 6;out_decimal_low = 5;end
		66:begin out_decimal_high = 6;out_decimal_low = 6;end
		67:begin out_decimal_high = 6;out_decimal_low = 7;end
		68:begin out_decimal_high = 6;out_decimal_low = 8;end
		69:begin out_decimal_high = 6;out_decimal_low = 9;end
		70:begin out_decimal_high = 7;out_decimal_low = 0;end
		71:begin out_decimal_high = 7;out_decimal_low = 1;end
		72:begin out_decimal_high = 7;out_decimal_low = 2;end
		73:begin out_decimal_high = 7;out_decimal_low = 3;end
		74:begin out_decimal_high = 7;out_decimal_low = 4;end
		75:begin out_decimal_high = 7;out_decimal_low = 5;end
		76:begin out_decimal_high = 7;out_decimal_low = 6;end
		77:begin out_decimal_high = 7;out_decimal_low = 7;end
		78:begin out_decimal_high = 7;out_decimal_low = 8;end
		79:begin out_decimal_high = 7;out_decimal_low = 9;end
		80:begin out_decimal_high = 8;out_decimal_low = 0;end
		81:begin out_decimal_high = 8;out_decimal_low = 1;end
		82:begin out_decimal_high = 8;out_decimal_low = 2;end
		83:begin out_decimal_high = 8;out_decimal_low = 3;end
		84:begin out_decimal_high = 8;out_decimal_low = 4;end
		85:begin out_decimal_high = 8;out_decimal_low = 5;end
		86:begin out_decimal_high = 8;out_decimal_low = 6;end
		87:begin out_decimal_high = 8;out_decimal_low = 7;end
		88:begin out_decimal_high = 8;out_decimal_low = 8;end
		89:begin out_decimal_high = 8;out_decimal_low = 9;end
		90:begin out_decimal_high = 9;out_decimal_low = 0;end
		91:begin out_decimal_high = 9;out_decimal_low = 1;end
		92:begin out_decimal_high = 9;out_decimal_low = 2;end
		93:begin out_decimal_high = 9;out_decimal_low = 3;end
		94:begin out_decimal_high = 9;out_decimal_low = 4;end
		95:begin out_decimal_high = 9;out_decimal_low = 5;end
		96:begin out_decimal_high = 9;out_decimal_low = 6;end
		97:begin out_decimal_high = 9;out_decimal_low = 7;end
		98:begin out_decimal_high = 9;out_decimal_low = 8;end
		99:begin out_decimal_high = 9;out_decimal_low = 9;end
		default:begin out_decimal_high = 0; out_decimal_low = 0;end
		endcase
	*/
endmodule
