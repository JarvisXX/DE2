module pipeir (pc4, ins, wpcir, clock, resetn, dpc4, inst, resetj);

	input	 		[31:0]	pc4, ins;
	input						wpcir, clock, resetn, resetj; 
	output reg	[31:0]	dpc4, inst;
	
	
	always @ (posedge clock or negedge resetn)
		if (resetn==0 | resetj==1)
			begin
			dpc4 = 0;
			inst = 0;
			end
		else
			begin
			if (wpcir)
				begin
				dpc4 = pc4;
				inst = ins;
				end
			end

endmodule
