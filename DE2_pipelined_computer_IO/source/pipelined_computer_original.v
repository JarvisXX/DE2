module pipelined_computer_original (resetn, clock, mem_clock, in_port0, in_port1, out_port0, out_port1, out_port2);
	// 定义顶层模块 pipelined_computer, 工程文件顶层入口
	input	 			resetn, clock, mem_clock;			// 输入信号 复位信号resetn, 时钟信号clock
																	// 和clock同频率反相mem_clock, 用于指令同步ROM和数据同步RAM
	input	 [31:0]	in_port0, in_port1;
	output [31:0]	out_port0, out_port1, out_port2;
	
	wire	 [31:0]	pc, ealu, malu, walu;		// 仿真输出的观察信号
	
	wire	 [31:0]	bpc, jpc, npc, pc4, ins, inst;	// 传递数据或控制信息的信号线 IF取指令阶段
	wire	 [31:0]	dpc4, da, db, dimm;					// 传递数据或控制信息的信号线 ID指令译码阶段
	wire	 [31:0]	epc4, ea, eb, eimm;					// 传递数据或控制信息的信号线 EXE指令运算阶段
	wire	 [31:0]	mb, mmo;									// 传递数据或控制信息的信号线 MEM访问数据阶段
	wire	 [31:0]	wmo, wdi;								// 传递数据或控制信息的信号线 WB回写寄存器阶段
	
	wire	 [ 4:0]	drn, ern0, ern, mrn, wrn;			// 流水线寄存器 传递 结果寄存器号(32个) 的信号线
	wire	 [ 3:0]	daluc, ealuc;							// ID向EXE传递aluc控制信号
	wire	 [ 1:0]	pcsource;								// CU向IF传递PC选择信号
	wire				wpcir;									// CU控制流水线停顿信号, 使PC和IF/ID不变
	
	wire				dwreg, dm2reg, dwmem, daluimm, dshift, djal;		// ID stage, ID产生, 需传播
	wire				ewreg, em2reg, ewmem, ealuimm, eshift, ejal;		// EXE stage, 来自ID/EXE, EXE使用, 需传播
	wire				mwreg, mm2reg, mwmem;									// MEM stage, 来自EXE/MEM, MEM使用, 需传播
	wire				wwreg, wm2reg;												// WB stage, 来自MEM/WB, WB使用
	
	pipepc	prog_cnt (npc, wpcir, clock, resetn, pc);						// 计数器模块, IF的输入
	
	pipeif	if_stage (pcsource, pc, bpc, da, jpc, npc, pc4, ins,		// IF stage
							mem_clock);													// mem_clock模块内定义为rom_clk
	
	pipeir	inst_reg (pc4, ins, wpcir, clock, resetn, dpc4, inst,		// IF/ID
							 pcsource[0]);														// clock上升沿将信息锁存, 并呈现在ID
	
	pipeid	id_stage (mwreg, mrn, ern, ewreg, em2reg, mm2reg, dpc4,	// ID stage
							inst, wrn, wdi, ealu, malu, mmo, wwreg, clock,	// clock下沿 寄存器写入
							resetn, bpc, jpc, pcsource, wpcir, dwreg,			// CU产生 需传播的信号 较多
							dm2reg, dwmem, daluc, daluimm, da, db, dimm,
							drn, dshift, djal);
	
	pipedereg	de_reg (dwreg, dm2reg, dwmem, daluc, daluimm, da, db,	// ID/EXE
							 dimm, drn, dshift, djal, dpc4, clock, resetn,	// clock上升沿将信息锁存, 并呈现在EXE
							 ewreg, em2reg, ewmem, ealuc, ealuimm, ea, eb,
							 eimm, ern0, eshift, ejal, epc4);
	
	pipeexe	exe_stage (ealuc, ealuimm, ea, eb, eimm, eshift, ern0,	// EXE stage
							 epc4, ejal, ern, ealu);								// 包含ALU 多个多路器
	
	pipeemreg	em_reg (ewreg, em2reg, ewmem, ealu, eb, ern, clock,	// EXE/MEM
							 resetn, mwreg, mm2reg, mwmem, malu, mb, mrn);	// clock上升沿将信息锁存, 并呈现在MEM
	
	pipemem	mem_stage (mwmem, malu, mb, clock, resetn, mem_clock,		// MEM stage
							  mmo, in_port0, in_port1,								// mem_clock模块内定义为ram_clk
							  out_port0, out_port1,	out_port2);
	
	pipemwreg	mw_reg (mwreg, mm2reg, mmo, malu, mrn, clock, resetn,	// MEM/WB
							 wwreg, wm2reg, wmo, walu, wrn);						// clock上升沿将信息锁存, 并呈现在WB
	
	mux2x32	wb_stage (walu, wmo, wm2reg, wdi);								// WB stage

endmodule
