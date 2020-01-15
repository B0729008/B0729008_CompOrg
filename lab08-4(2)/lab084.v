Smodule lab084(x,T,Q,clk);
	input x;
	input T;
	input clk;
	output [1:0]Q;
	
	reg [1:0]Q;
	
	always @(posedge clk)begin
		case(Q)
			2'b00:
				begin
					if(x==1)
						Q<=2'b00;
					else
						Q<=2'b01;
				end
			2'b01:
				begin
					if(T==0)
						Q<=2'b01;
					else
						Q<=2'b10;
				end
			2'b10:
				Q<=2'b11;
			2'b11:
				Q<=2'b00;
		endcase
	end
endmodule