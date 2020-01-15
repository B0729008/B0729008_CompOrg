module branchcontrol(PL,JB,BC,N,Z,AD,Bas_A,PC,clk);
	input PL,JB,BC,N,Z,clk;
	input [5:0]AD;
	input [7:0]Bas_A;
	
	output [7:0]PC;
	
	reg [7:0]regPC;
	reg [7:0]regAD;
	
	always @(posedge clk)begin
		if(AD[5]==1)
			regAD={2'b11,AD};
		else
			regAD={2'b00,AD};
			
		if(PL==1)
			if(JB==1)
				regPC=Bas_A;
			else
				case(BC)
					1'b0:
						if(Z==1)
							regPC=PC+regAD;
						else
							regPC=PC+8'b00000001;
					1'b1:
						if(N==1)
							regPC=PC+regAD;
						else
							regPC=PC+8'b00000001;
				endcase
		else
			regPC=PC+8'b00000001;
	end
	assign PC=regPC;
endmodule
		