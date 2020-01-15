module lab08_4(X,T,clk,out);
	input X;
	input T;
	input clk;
	output [1:0]out;
	
	reg S;
	
	always @(posedge clk) begin
		case(S)
			2'b00:
				begin
					if(X==1'b0)
						S<=2'b01;
					else
						S<=2'b00;
				end
			2'b01:
				begin
					if(T==1'b0)
						S<=2'b01;
					else
						S<=2'b10;
				end
			2'b10:
				S<=2'b11;
			2'b11:
				S<=2'b00;
		endcase
	end
	assign out=S;
endmodule