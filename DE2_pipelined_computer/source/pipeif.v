module pipeif (pcsource, pc, bpc, da, jpc, npc, pc4, ins, rom_clock);

	input	 [ 1:0]	pcsource;
	input				rom_clock;
	input	 [31:0]	pc, bpc, da, jpc;
	output [31:0]	npc, pc4, ins;
	
	assign pc4 = pc + 32'h4;
	
	mux4x32 nextpc (pc4, bpc, da, jpc, pcsource, npc);
	
	lpm_rom_irom irom (pc[7:2], rom_clock, ins);

endmodule
