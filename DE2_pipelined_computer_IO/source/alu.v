module alu (a, b, aluc, r);

   input	 [31:0]	a, b;
   input	 [ 3:0]	aluc;
   output [31:0]	r;
	
   reg	 [31:0]	r;
	
   always @ (a or b or aluc)
		casex (aluc)								// event
			4'bx000: r = a + b;					//x000 ADD
			4'bx100: r = a - b;					//x100 SUB	// complete by yourself
			4'bx001:	r = a & b;					//x001 AND
			4'bx101:	r = a | b;					//x101 OR
			4'bx010:	r = a ^ b;					//x010 XOR
			4'bx110:	r = b << 16;				//x110 LUI: imm << 16bit
			4'b0011:	r = b << a;					//0011 SLL: rd <- (rt << sa)
			4'b0111:	r = b >> a;					//0111 SRL: rd <- (rt >> sa) (logical)
			4'b1111: r = $signed(b) >>> a;	//1111 SRA: rd <- (rt >> sa) (arithmetic)
			default: r = 0;
		endcase

endmodule
