module datapath(RW,DA,AA,BA,MB,FS,MD,Datain,F,clk,Address_out,Con_in,Data_out,R0,R1,R2,R3,R4,R5,R6,R7,Z,N);
	input MD;
	input MB;
	input [3:0]FS;
	input [1:0]DA;
	input [1:0]AA;
	input [1:0]BA;
	input [7:0]Datain;
	input [7:0]Con_in;
	input RW;
	input clk;
	
	output [7:0]F;
	output [7:0]Address_out;
	output [7:0]Data_out;
	output [7:0]R0,R1,R2,R3,R4,R5,R6,R7;
	output Z,N;
	
	reg [7:0]regR0;
	reg [7:0]regR1;
	reg [7:0]regR2;
	reg [7:0]regR3;
	reg [7:0]regR4;
	reg [7:0]regR5;
	reg [7:0]regR6;
	reg [7:0]regR7;
	
	reg [7:0]regA;
	reg [7:0]regB;
	reg [7:0]regG;
	reg regZ;
	
	always @(posedge clk)begin
		if(RW==1)
				case(DA)
					3'b000:
						if(MD==1)
							regR0=Datain;
						else
							regR0=regG;
					3'b001:
						if(MD==1)
							regR1=Datain;
						else
							regR1=regG;
					3'b010:
						if(MD==1)
							regR2=Datain;
						else
							regR2=regG;
					3'b011:
						if(MD==1)
							regR3=Datain;
						else
							regR3=regG;
					3'b100:
						if(MD==1)
							regR4=Datain;
						else
							regR4=regG;
					3'b101:
						if(MD==1)
							regR5=Datain;
						else
							regR5=regG;
					3'b110:
						if(MD==1)
							regR6=Datain;
						else
							regR6=regG;
					3'b111:
						if(MD==1)
							regR7=Datain;
						else
							regR7=regG;		
				endcase
		else
			regR0=regR0;
			regR1=regR1;
			regR2=regR2;
			regR3=regR3;
			regR4=regR4;
			regR5=regR5;
			regR6=regR6;
			regR7=regR7;
	end
	
	always @(posedge clk)begin
		case(AA)
			3'b000:
				regA=regR0;
			3'b001:
				regA=regR1;
			3'b010:
				regA=regR2;
			3'b011:
				regA=regR3;
			3'b100:
				regA=regR4;
			3'b101:
				regA=regR5;
			3'b110:
				regA=regR6;
			3'b111:
				regA=regR7;
		endcase	
	end
	
	always @(posedge clk)begin
		case(BA)
			3'b000:
				if(MB==1)
					regB=Con_in;
				else
					regB=regR0;
			3'b001:
				if(MB==1)
					regB=Con_in;
				else
					regB=regR1;
			3'b010:
				if(MB==1)
					regB=Con_in;
				else
					regB=regR2;
			3'b011:
				if(MB==1)
					regB=Con_in;
				else
					regB=regR3;
			3'b100:
				if(MB==1)
					regB=Con_in;
				else
					regB=regR4;
			3'b101:
				if(MB==1)
					regB=Con_in;
				else
					regB=regR5;
			3'b110:
				if(MB==1)
					regB=Con_in;
				else
					regB=regR6;
			3'b111:
				if(MB==1)
					regB=Con_in;
				else
					regB=regR7;
		endcase		
	end
	
	always @(posedge clk)begin
		case(FS)
			4'b0000:
				regG=regA;
			4'b0001:
				regG=regA+8'b00000001;
			4'b0010:
				regG=regA+regB;
			4'b0011:
				regG=regA+regB+8'b00000001;
			4'b0100:
				regG=regA+(~regB);
			4'b0101:
				regG=regA+(~regB)+8'b00000001;
			4'b0110:
				regG=regA+8'b11111111;
			4'b0111:
				regG=regA;
			4'b1000:
				regG=regA&regB;
			4'b1001:
				regG=regA|regB;
			4'b1010:
				regG=regA^regB;
			4'b1011:
				regG=(~regA);
			4'b1100:
				regG=regB;
			4'b1101:
				regG={regB[6:0],1'b0};
			4'b1110:
				regG={1'b0,regB[7:1]};
		endcase
		if(regG==8'b00000000)
			regZ=1;
		else
			regZ=0;
	end
	assign F=regG;
	assign Address_out=regA;
	assign Data_out=regB;
	assign R0=regR0;
	assign R1=regR1;
	assign R2=regR2;
	assign R3=regR3;
	assign R4=regR4;
	assign R5=regR5;
	assign R6=regR6;
	assign R7=regR7;
	assign N=F[7];
	assign Z=regZ;
	
endmodule