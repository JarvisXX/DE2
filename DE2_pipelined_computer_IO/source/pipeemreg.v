module pipeemreg (ewreg, em2reg, ewmem, ealu, eb, ern, clock, resetn,
						mwreg, mm2reg, mwmem, malu, mb, mrn);

	input	 		[31:0]	ealu, eb;
	input			[ 4:0]	ern;
	input						ewreg, em2reg, ewmem, clock, resetn;
	output reg	[31:0]	malu, mb;
	output reg	[ 4:0]	mrn;
	output reg				mwreg, mm2reg, mwmem;
	
	always @ (posedge clock or negedge resetn)
		if (resetn==0)
			begin
			mwreg = 0;
			mm2reg = 0;
			mwmem = 0;
			malu = 0;
			mb = 0;
			mrn = 0;
			end
		else
			begin
			mwreg = ewreg;
			mm2reg = em2reg;
			mwmem = ewmem;
			malu = ealu;
			mb = eb;
			mrn = ern;
			end

endmodule
