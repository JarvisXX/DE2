`timescale 1 ps / 1 ps
module testBench;
	reg resetn,clock,mem_clk;
	wire [31:0] pc,inst,aluout,memout;
   wire imem_clk,dmem_clk;
	
	sc_computer testBench(resetn,clock,mem_clk,pc,inst,aluout,memout,imem_clk,dmem_clk);
	
	initial
		begin
		resetn = 0;
		#10 resetn = 1;
			 clock = 0;
			 mem_clk = 0;
		end
	
	always
		#5 mem_clk = ~mem_clk;
	always
		#10 clock = ~clock;

endmodule
