module pipemem (mwmem, malu, mb, clock, resetn, ram_clock, mmo, in_port0, in_port1,
					 out_port0, out_port1, out_port2);

	input	 [31:0]	malu, mb;
	input				mwmem, clock, resetn, ram_clock;
	output [31:0]	mmo;
	
	input	 [31:0]	in_port0, in_port1;
	output [31:0]	out_port0, out_port1, out_port2;
	
	wire	 [31:0]	mem_dataout, io_read_data;
	wire				write_datamem_enable, write_io_output_reg_enable;
	
	mux2x32			mem_io_dataout_mux (mem_dataout, io_read_data, malu[7], mmo);
	
	assign			write_datamem_enable = mwmem & (~malu[7]);
	assign			write_io_output_reg_enable = mwmem & (malu[7]);
	
	lpm_ram_dq_dram  dram (malu[6:2],ram_clock, mb, write_datamem_enable, mem_dataout);
	
	io_output_reg	io_output_regx3 (malu, mb, write_io_output_reg_enable,
											ram_clock, resetn, out_port0, out_port1, out_port2);
	io_input_reg	io_input_regx2 (malu, ram_clock, io_read_data, in_port0, in_port1);

endmodule
