module io_input_reg(addr,io_clk,io_read_data,in_port0);
	
	input	 [31:0]	addr;
	input				io_clk;
	input  [31:0]	in_port0;
	
	output reg [31:0]	io_read_data;
	
	reg	 [31:0]	in_reg0;
	
	always @(posedge io_clk)
		begin
		io_read_data <= in_port0;
		end
	
endmodule

module io_input_mux(a0,a1,sel_addr,y);
	
	input	 [31:0]	a0,a1;
	input	 [ 5:0]	sel_addr;
	
	output [31:0]	y;
	
	reg	 [31:0]	y;
	
	always @*
		case(sel_addr)
		6'b110000: y = a0;
		6'b110001: y = a1;
		endcase

endmodule
