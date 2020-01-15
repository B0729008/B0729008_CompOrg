module lab08(A,S,L,clk,out);

	input [7:0]A;
	input S;
	input L;
	input clk;
	output [7:0]out;
	
	wire [7:0]add_out;
	wire [7:0]mux_out;
	wire [7:0]loadreg_out;

	adder add(
		.a(A),
		.b(loadreg_out),
		.sum(add_out)
	);
		
	mux_2 mux(
		.d_0(0),
		.d_1(add_out),
		.d(S),
		.dout(mux_out)
	);
		
	register Reg(
		.load_data(mux_out),
		.data(loadreg_out),
		.load(L),
		.clk(clk)
	);
	
	assign out=loadreg_out;
	
endmodule