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
// CREATED		"Fri Nov 01 17:35:04 2019"

module mod6counter(
	D0,
	D1,
	D2,
	D3,
	clk,
	clean,
	Enable,
	Q1,
	Q2,
	Q3,
	Q0,
	CO
);


input wire	D0;
input wire	D1;
input wire	D2;
input wire	D3;
input wire	clk;
input wire	clean;
input wire	Enable;
output wire	Q1;
output wire	Q2;
output wire	Q3;
output wire	Q0;
output wire	CO;

wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_1;
reg	SYNTHESIZED_WIRE_36;
reg	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
reg	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_22;
reg	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;

assign	Q1 = SYNTHESIZED_WIRE_36;
assign	Q2 = SYNTHESIZED_WIRE_37;
assign	Q3 = SYNTHESIZED_WIRE_42;
assign	Q0 = SYNTHESIZED_WIRE_41;
assign	CO = SYNTHESIZED_WIRE_35;



assign	SYNTHESIZED_WIRE_38 =  ~SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_35 = SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_36 & SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_2;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_41 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_41 = SYNTHESIZED_WIRE_3;
	end
end

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_40 = SYNTHESIZED_WIRE_36 & SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_39 ^ SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_35 & D1;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_36 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_36 = SYNTHESIZED_WIRE_11;
	end
end

assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_22 = SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_40 ^ SYNTHESIZED_WIRE_37;

assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_35 & D2;

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_17 | SYNTHESIZED_WIRE_18;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_37 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_37 = SYNTHESIZED_WIRE_19;
	end
end

assign	SYNTHESIZED_WIRE_25 = SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_1 =  ~SYNTHESIZED_WIRE_41;

assign	SYNTHESIZED_WIRE_20 = SYNTHESIZED_WIRE_22 ^ SYNTHESIZED_WIRE_42;

assign	SYNTHESIZED_WIRE_24 = SYNTHESIZED_WIRE_35 & D3;

assign	SYNTHESIZED_WIRE_26 = SYNTHESIZED_WIRE_24 | SYNTHESIZED_WIRE_25;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_42 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_42 = SYNTHESIZED_WIRE_26;
	end
end

assign	SYNTHESIZED_WIRE_2 =  ~SYNTHESIZED_WIRE_42;

assign	SYNTHESIZED_WIRE_43 = Enable & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_34 = SYNTHESIZED_WIRE_28 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_39 = SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_43 ^ SYNTHESIZED_WIRE_41;

assign	SYNTHESIZED_WIRE_33 = SYNTHESIZED_WIRE_35 & D0;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_33 | SYNTHESIZED_WIRE_34;


endmodule
