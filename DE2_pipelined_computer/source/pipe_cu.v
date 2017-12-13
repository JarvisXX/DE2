module pipe_cu (op, func, rs, rt, mrn, mm2reg, mwreg, ern, em2reg, ewreg,
					 z, wreg, m2reg, wmem, jal, aluc, aluimm, shift, regrt,
					 sext, fwda, fwdb, pcsource, wpcir);

	input			[5:0]	op, func;
	input		 	[4:0]	rs, rt, mrn, ern;
	input					mm2reg, mwreg, em2reg, ewreg, z;
	output 		[3:0]	aluc;
	output		[1:0]	pcsource;
	output reg	[1:0]	fwda, fwdb;
	output reg			wpcir;
	output				wreg, m2reg, wmem, jal, aluimm, shift, regrt, sext;
	
	wire r_type	= ~|op;
	
	wire i_add	= r_type &  func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & ~func[0];	//100000
   wire i_sub	= r_type &  func[5] & ~func[4] & ~func[3] & ~func[2] &  func[1] & ~func[0];	//100010
	wire i_and	= r_type &  func[5] & ~func[4] & ~func[3] &  func[2] & ~func[1] & ~func[0];	//100100
   wire i_or	= r_type &  func[5] & ~func[4] & ~func[3] &  func[2] & ~func[1] &  func[0];	//100101
   wire i_xor	= r_type &  func[5] & ~func[4] & ~func[3] &  func[2] &  func[1] & ~func[0];	//100110
   wire i_sll	= r_type & ~func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & ~func[0];	//000000
   wire i_srl	= r_type & ~func[5] & ~func[4] & ~func[3] & ~func[2] &  func[1] & ~func[0];	//000010
   wire i_sra	= r_type & ~func[5] & ~func[4] & ~func[3] & ~func[2] &  func[1] &  func[0];	//000011
   wire i_jr	= r_type & ~func[5] & ~func[4] &  func[3] & ~func[2] & ~func[1] & ~func[0];	//001000
	
	wire i_addi	= ~op[5] & ~op[4] &  op[3] & ~op[2] & ~op[1] & ~op[0];	//001000
   wire i_andi	= ~op[5] & ~op[4] &  op[3] &  op[2] & ~op[1] & ~op[0];	//001100
   wire i_ori	= ~op[5] & ~op[4] &  op[3] &  op[2] & ~op[1] &  op[0];	//001101
   wire i_xori	= ~op[5] & ~op[4] &  op[3] &  op[2] &  op[1] & ~op[0];	//001110
   wire i_lw	=  op[5] & ~op[4] & ~op[3] & ~op[2] &  op[1] &  op[0];	//100011
   wire i_sw	=  op[5] & ~op[4] &  op[3] & ~op[2] &  op[1] &  op[0];	//101011
   wire i_beq	= ~op[5] & ~op[4] & ~op[3] &  op[2] & ~op[1] & ~op[0];	//000100
   wire i_bne	= ~op[5] & ~op[4] & ~op[3] &  op[2] & ~op[1] &  op[0];	//000101
   wire i_lui	= ~op[5] & ~op[4] &  op[3] &  op[2] &  op[1] &  op[0];	//001111
   wire i_j		= ~op[5] & ~op[4] & ~op[3] & ~op[2] &  op[1] & ~op[0];	//000010
   wire i_jal	= ~op[5] & ~op[4] & ~op[3] & ~op[2] &  op[1] &  op[0];	//000011
	
	assign aluc[3] = i_sra;
   assign aluc[2] = i_sub	| i_or	| i_srl	| i_sra	| i_ori	| i_beq	| i_bne	| i_lui;	
   assign aluc[1] = i_xor	| i_sll	| i_srl	| i_sra	| i_xori	| i_lui;
   assign aluc[0] = i_and	| i_or	| i_sll	| i_srl	| i_sra	| i_andi	| i_ori;
	
	assign pcsource[1] = i_jr | i_j | i_jal;
   assign pcsource[0] = ( i_beq & z ) | (i_bne & ~z) | i_j | i_jal;
	
	assign wreg		=	i_add	| i_sub	| i_and	| i_or	| i_xor	| i_sll	| i_srl	|
							i_sra	| i_addi	| i_andi	| i_ori	| i_xori	| i_lw	| i_lui	| i_jal;
	assign m2reg	=	i_lw;
	assign wmem		=	i_sw;
	assign jal		=	i_jal;
	assign aluimm	=	i_addi| i_andi	| i_ori	| i_xori	| i_lw	| i_sw	| i_lui;
	assign shift	=	i_sll	| i_srl	| i_sra;
	assign regrt   =	i_addi| i_andi | i_ori	| i_xori	| i_lw	| i_lui;
	assign sext    =	i_addi| i_lw	| i_sw	| i_beq	| i_bne	| i_lui;
   
	always @ *
		begin
		fwda = 2'b00;
		if (ewreg & (ern!=0) & (ern==rs) & ~em2reg)
			begin
			fwda = 2'b01;
			end
		else
			begin
			if (mwreg & (mrn!=0) & (mrn==rs) & ~mm2reg)
				begin
				fwda = 2'b10;
				end
			else
				begin
				if (mwreg & (mrn!=0) & (mrn==rs) & mm2reg)
					begin
					fwda = 2'b11;
					end
				end
			end
		
		fwdb = 2'b00;
		if (ewreg & (ern!=0) & (ern==rt) & ~em2reg)
			begin
			fwdb = 2'b01;
			end
		else
			begin
			if (mwreg & (mrn!=0) & (mrn==rt) & ~mm2reg)
				begin
				fwdb = 2'b10;
				end
			else
				begin
				if (mwreg & (mrn!=0) & (mrn==rt) & mm2reg)
					begin
					fwdb = 2'b11;
					end
				end
			end
		
		if (em2reg & ((ern==rs) | (ern==rt)))
			wpcir = 0;
		else
			wpcir = 1;
		end

endmodule
