/*******************************************************************************
 *
 * simulation source: [tb.v]
 *
 ******************************************************************************/

//`define SIM_CYCLE 'h400000000

//
// small value for testing
//
`define CYCLE 5000
//`timescale 1ms/1us
module tb;
reg			clk;
reg		[3:0]	state;
reg   clean;
wire   lout0a;
wire   lout0b;
wire   lout0c;
wire   lout0d;
wire   lout0e;
wire   lout0f;
wire   lout0g;	
wire   lout1a;
wire   lout1b;
wire   lout1c;
wire   lout1d;
wire   lout1e;
wire   lout1f;
wire   lout1g;
wire   lout2a;
wire   lout2b;
wire   lout2c;
wire   lout2d;
wire   lout2e;
wire   lout2f;
wire   lout2g;
wire   lout3a;
wire   lout3b;
wire   lout3c;
wire   lout3d;
wire   lout3e;
wire   lout3f;
wire   lout3g;
	
initial begin
  state=4'b0000;
  clean = 0;
  #30
    clean = 1;  
end
always begin
  //@(posedge clk);
    # 20 clk = 1; 
    # 20 clk = ~clk;
end
lab05 m(
	.clk(clk),
	.clean(clean),	
	.lout0a(lout0a),
	.lout0b(lout0b),
	.lout0c(lout0c),
	.lout0d(lout0d),
	.lout0e(lout0e),
	.lout0f(lout0f),
	.lout0g(lout0g),
	.lout1a(lout1a),
	.lout1b(lout1b),
	.lout1c(lout1c),
	.lout1d(lout1d),
	.lout1e(lout1e),
	.lout1f(lout1f),
	.lout1g(lout1g),
	.lout2a(lout2a),
	.lout2b(lout2b),
	.lout2c(lout2c),
	.lout2d(lout2d),
	.lout2e(lout2e),
	.lout2f(lout2f),
	.lout2g(lout2g),
	.lout3a(lout3a),
	.lout3b(lout3b),
	.lout3c(lout3c),
	.lout3d(lout3d),
	.lout3e(lout3e),
	.lout3f(lout3f),
	.lout3g(lout3g)
);
endmodule