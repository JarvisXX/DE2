module pipemem (mwmem, malu, mb, clock, ram_clock, mmo);

	input	 [31:0]	malu, mb;
	input				mwmem, clock, ram_clock;
	output [31:0]	mmo;
	
	lpm_ram_dq_dram  dram(malu[6:2],ram_clock, mb, mwmem, mmo);

endmodule
