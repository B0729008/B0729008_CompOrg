// Copyright (C) 1991-2010 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II"
// VERSION		"Version 10.0 Build 218 06/27/2010 SJ Web Edition"
// CREATED		"Fri Oct 18 15:11:08 2019"

module lab03(
	load,
	in1,
	in2,
	in3,
	in4,
	in5,
	in6,
	in7,
	in8,
	clock,
	out1,
	out2,
	out3,
	out4,
	out5,
	out6,
	out7,
	out8
);


input wire	load;
input wire	in1;
input wire	in2;
input wire	in3;
input wire	in4;
input wire	in5;
input wire	in6;
input wire	in7;
input wire	in8;
input wire	clock;
output wire	out1;
output wire	out2;
output wire	out3;
output wire	out4;
output wire	out5;
output wire	out6;
output wire	out7;
output wire	out8;

reg	DFF_inst5;
wire	SYNTHESIZED_WIRE_32;
reg	DFF_inst6;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
reg	DFF_inst20;
reg	DFF_inst21;
reg	DFF_inst22;
wire	SYNTHESIZED_WIRE_17;
reg	DFF_inst23;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
reg	DFF_inst3;
reg	DFF_inst4;

assign	out1 = DFF_inst3;
assign	out2 = DFF_inst4;
assign	out3 = DFF_inst5;
assign	out4 = DFF_inst6;
assign	out5 = DFF_inst20;
assign	out6 = DFF_inst21;
assign	out7 = DFF_inst22;
assign	out8 = DFF_inst23;



assign	SYNTHESIZED_WIRE_32 =  ~load;

assign	SYNTHESIZED_WIRE_4 = load & in2;

assign	SYNTHESIZED_WIRE_7 = DFF_inst5 & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_6 = load & in3;

assign	SYNTHESIZED_WIRE_9 = DFF_inst6 & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_8 = load & in4;

assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_27 = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;


always@(posedge clock)
begin
	begin
	DFF_inst20 = SYNTHESIZED_WIRE_10;
	end
end


always@(posedge clock)
begin
	begin
	DFF_inst21 = SYNTHESIZED_WIRE_11;
	end
end


always@(posedge clock)
begin
	begin
	DFF_inst22 = SYNTHESIZED_WIRE_12;
	end
end


always@(posedge clock)
begin
	begin
	DFF_inst23 = SYNTHESIZED_WIRE_13;
	end
end

assign	SYNTHESIZED_WIRE_20 = DFF_inst20 & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_19 = load & in5;

assign	SYNTHESIZED_WIRE_22 = DFF_inst21 & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_21 = load & in6;

assign	SYNTHESIZED_WIRE_24 = DFF_inst22 & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_23 = load & in7;


always@(posedge clock)
begin
	begin
	DFF_inst3 = SYNTHESIZED_WIRE_17;
	end
end

assign	SYNTHESIZED_WIRE_26 = DFF_inst23 & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_25 = load & in8;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_19 | SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_23 | SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_25 | SYNTHESIZED_WIRE_26;


always@(posedge clock)
begin
	begin
	DFF_inst4 = SYNTHESIZED_WIRE_27;
	end
end


always@(posedge clock)
begin
	begin
	DFF_inst5 = SYNTHESIZED_WIRE_28;
	end
end


always@(posedge clock)
begin
	begin
	DFF_inst6 = SYNTHESIZED_WIRE_29;
	end
end

assign	SYNTHESIZED_WIRE_3 = DFF_inst3 & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_2 = load & in1;

assign	SYNTHESIZED_WIRE_5 = DFF_inst4 & SYNTHESIZED_WIRE_32;


endmodule
