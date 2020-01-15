module lab09(A,B,G,carry,S);
	input [7:0]A;
	input [7:0]B;
	input [2:0]S;
	input carry;
	output [7:0]G;
	
	reg [7:0] regA;
	reg [7:0] regB;
	reg [7:0] regG;
	reg [2:0] regS;
	
	always @(*)begin
		regA[7:0] = A[7:0];
		regB[7:0] = B[7:0];
		regS[2:0] = S[2:0];
		case(regS)
			3'b000:
				regG=A+carry;
			3'b001:
				regG=A+B+carry;
			3'b010:
				regG=A+(~B)+carry;
			3'b011:
				begin
					if(carry==0)
						regG=A+(8'b11111111);
					else
						regG=A;
				end
			3'b100:
				begin
					if(carry==0)
						regG=A&B;
					else
						regG=A|B;
				end
			3'b101:
				begin
					if(carry==0)
						regG=A^B;
					else
						regG=~A;
				end
			3'b110:
				begin
					if(carry==0)
						regG=A&B;
					else
						regG=A|B;
				end
			3'b111:
				begin
					if(carry==0)
						regG=A^B;
					else
						regG=~A;
				end
		endcase
	end
	assign G=regG;
endmodule
	