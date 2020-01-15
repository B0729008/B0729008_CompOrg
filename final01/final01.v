module final01(clk,Opcode,Data,R0,R1,R2,R3,R4,R5,R6,R7,PC,control,instruction);
	input clk;
	input [15:0]instruction;
	
	output [6:0]Opcode;
	output [7:0]Data;
	output [7:0]R0,R1,R2,R3,R4,R5,R6,R7;
	output [7:0]PC;
	output [19:0]control;
	
	wire [19:0]control;
	wire [7:0]Address_out;
	wire [7:0]Data_out;
	wire [7:0]Data_in;
	wire [7:0]PC;
	wire N;
	wire Z;
		
	decoder indecoder(
		.Instruction_in(instruction),
		.control(control)
	);
		
	datapath DPath(
		.RW(control[4]),
		.DA(control[19:17]),
		.AA(control[16:14]),
		.BA(control[13:11]),
		.MB(control[10]),
		.FS(control[9:6]),
		.MD(control[5]),
		.Datain(Data_in),
		.F(Data),
		.clk(clk),
		.Address_out(Address_out),
		.Con_in({5'b00000,instruction[2:0]}),
		.Data_out(Data_out),
		.R0(R0),
		.R1(R1),
		.R2(R2),
		.R3(R3),
		.R4(R4),
		.R5(R5),
		.R6(R6),
		.R7(R7),
		.N(N),
		.Z(Z)
	);
		
	DMEM dmem(
		.MW(control[3]),
		.Address(Address_out),
		.Data_in(Data_out),
		.Data_out(Data_in),
		.clk(clk)
	); 
	assign Opcode=instruction[15:9];
endmodule