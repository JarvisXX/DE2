module regfile (rna, rnb, we, d, wn, clock, resetn, qa, qb);

   input	 [ 4:0]	rna, rnb, wn;
   input	 [31:0]	d;
   input				we, clock, resetn;
   output [31:0]	qa, qb;
	
	integer i;
   reg [31:0] register [1:31]; // r1 - r31
   
   assign qa = (rna==0) ? 0 : register[rna]; // read
   assign qb = (rnb==0) ? 0 : register[rnb]; // read

   always @ (negedge clock or negedge resetn)
		begin
      if (resetn==0)	// reset
			begin
         for (i=1; i<32; i=i+1)
				register[i] <= 0;
			end
		else
			begin
			if ((wn!=0) && (we==1))		// write
				register[wn] <= d;
			end
		end

endmodule
