`timescale 1 ps / 1 ps
module testBench;
	reg				resetn, clock;
	wire				mem_clock;
	wire	 [31:0]	pc, inst, ealu, malu, walu;
	
	pipelined_computer testBench (resetn, clock, mem_clock, pc, inst, ealu, malu, walu);
	
	assign mem_clock = ~clock;
	
	initial
		begin
		resetn = 0;
		clock = 0;
		#11 resetn = 1;
		end
	
	always
		#10 clock = ~clock;

endmodule
