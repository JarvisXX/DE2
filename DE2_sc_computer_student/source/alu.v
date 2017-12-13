module alu (a,b,aluc,s,z);
   input [31:0] a,b;
   input [3:0] aluc;
   output [31:0] s;
   output        z;
	reg [31:0] c;
   reg [31:0] s;
   reg        z;
   always @ (a or b or aluc) 
      begin												// event
			c = a;
         casex (aluc)
				4'bx000: s = a + b;					//x000 ADD
				4'bx100: s = a - b;					//x100 SUB	// complete by yourself
				4'bx001:	s = a & b;					//x001 AND
				4'bx101:	s = a | b;					//x101 OR
				4'bx010:	s = a ^ b;					//x010 XOR
				4'bx110:	s = b << 16;				//x110 LUI: imm << 16bit
				4'b0011:	s = b << a;					//0011 SLL: rd <- (rt << sa)
				4'b0111:	s = b >> a;					//0111 SRL: rd <- (rt >> sa) (logical)
				4'b1111: s = $signed(b) >>> a;	//1111 SRA: rd <- (rt >> sa) (arithmetic)
				4'b1011:
					begin
					s = 32'b0;
					while (c!=32'b0)
						begin
						if (c[0]==1)
							s = ~s;
						c = c >> 1;
						end
					end
				default: s = 0;
         endcase
         if (s == 0 )  z = 1;
            else z = 0;         
      end      
endmodule 