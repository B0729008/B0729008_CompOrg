module decoder(Instruction_in,control);
	input [15:0]Instruction_in;
	output [19:0]control;
	assign control[19:17]=Instruction_in[8:6];
	assign control[16:14]=Instruction_in[5:3];
	assign control[13:11]=Instruction_in[2:0];
	assign control[10]=Instruction_in[15];
	assign control[9:6]={Instruction_in[12:10],(Instruction_in[9]&~(Instruction_in[14]&Instruction_in[15]))};
	assign control[5]=Instruction_in[13];
	assign control[4]=~Instruction_in[14];
	assign control[3]=Instruction_in[14]&~Instruction_in[15];
	assign control[2]=Instruction_in[14]&Instruction_in[15];
	assign control[1]=Instruction_in[13];
	assign control[0]=Instruction_in[9];
endmodule