/*******************************************************************************
 *
 * simulation source: [tb.v]
 *
 ******************************************************************************/

//`define SIM_CYCLE 'h400000000

//
// small value for testing
//
`define SIM_CYCLE 5000

module test;
reg clear;
reg				clk;
reg		[3:0]	state;
reg				x;
reg     y;
wire			A;
wire			B;

initial begin
  state = 4'b0000;
  x = 0;
  y = 0;
  #40
    x<=0;
    y<=0;
  #40
    x<=0;
    y<=1;
  #40
    x<=1;
    y<=0;
  #40
    x<=1;
    y<=1;
  #40
    x<=1;
    y<=0;
  #40
    x<=0;
    y<=1;
end
always begin
  //@(posedge clk);
    # 20 clk = 1;
    # 20 clk = ~clk;
     clear=1;
end

lab01_b0729008 m(
	.x(x),
	.y(y),
	.clk(clk),
	.A(A),
	.B(B)
);
endmodule
