module pipeexe (ealuc, ealuimm, ea, eb, eimm, eshift, ern0, epc4, ejal, ern, ealu);

	input	 [31:0]	ea, eb, eimm, epc4;
	input	 [ 4:0]	ern0;
	input	 [ 3:0]	ealuc;
	input				ealuimm, eshift, ejal;
	output [31:0]	ealu;
	output [ 4:0]	ern;
	
	wire	 [31:0]	alua, alub, alu, epc4_;
	wire	 [31:0]  sa;
	assign sa = {27'b0, eimm[10:6]};
	
	assign epc4_ = epc4 + 32'h4;
	
	mux2x32 alu_a (ea, sa, eshift, alua);
   mux2x32 alu_b (eb, eimm, ealuimm, alub);
	mux2x32 result (alu, epc4_, ejal, ealu);
	alu al_unit (alua, alub, ealuc, alu);
	
	assign ern = ern0 | {5{ejal}};				// f module

endmodule
