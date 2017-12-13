module pipeid (mwreg, mrn, ern, ewreg, em2reg, mm2reg, dpc4, inst, wrn, wdi,
					ealu, malu, mmo, wwreg, clock, resetn, bpc, jpc, pcsource,
					wpcir, dwreg, dm2reg, dwmem, daluc, daluimm, da, db, dimm,
					drn, dshift, djal);

	input	 [31:0]	dpc4, inst, wdi, ealu, malu, mmo;
	input	 [ 4:0]	mrn, ern, wrn;
	input				mwreg, ewreg, em2reg, mm2reg, wwreg, clock, resetn;
	output [31:0]	bpc, jpc, da, db, dimm;
	output [ 4:0]	drn;
	output [ 3:0]	daluc;
	output [ 1:0]	pcsource;
	output			wpcir, dwreg, dm2reg, dwmem, daluimm, dshift, djal;
	
	wire	 [31:0]	qa, qb;
	wire				regrt, sext, rsrtequ;
	wire	 [ 1:0]	fwda, fwdb;
	wire				e = sext & inst[15];
	wire	 [15:0]	imm = {16{e}};
	wire	 [31:0]	offset = {imm[13:0],inst[15:0],1'b0,1'b0};
	wire	 [31:0]	dimm = {imm,inst[15:0]};
	
	assign bpc = dpc4 + offset;
	
	assign jpc = {dpc4[31:28],inst[25:0],1'b0,1'b0};
	
	assign rsrtequ = ( da==db ) ? 1 : 0;
	
	pipe_cu cu (inst[31:26], inst[5:0], inst[25:21], inst[20:16], mrn, mm2reg, mwreg,
					ern, em2reg, ewreg, rsrtequ, dwreg, dm2reg, dwmem, djal, daluc,
					daluimm, dshift, regrt, sext, fwda, fwdb, pcsource, wpcir);
	
	mux4x32 d_a (qa, ealu, malu, mmo, fwda, da);
	mux4x32 d_b (qb, ealu, malu, mmo, fwdb, db);
	mux2x5 reg_wn (inst[15:11], inst[20:16], regrt, drn);
	regfile rf (inst[25:21], inst[20:16], wwreg, wdi, wrn, clock, resetn, qa, qb);

endmodule
