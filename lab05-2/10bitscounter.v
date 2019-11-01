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
// CREATED		"Fri Nov 01 16:04:08 2019"

module \10bitscounter (
	Load,
	Count,
	D0,
	D1,
	D2,
	D3,
	clk,
	clean,
	D4,
	D5,
	D6,
	D7,
	D8,
	D9,
	Q0,
	Q1,
	Q2,
	Q3,
	Q4,
	Q5,
	Q6,
	Q7,
	Q8,
	Q9
);


input wire	Load;
input wire	Count;
input wire	D0;
input wire	D1;
input wire	D2;
input wire	D3;
input wire	clk;
input wire	clean;
input wire	D4;
input wire	D5;
input wire	D6;
input wire	D7;
input wire	D8;
input wire	D9;
output wire	Q0;
output wire	Q1;
output wire	Q2;
output wire	Q3;
output wire	Q4;
output wire	Q5;
output wire	Q6;
output wire	Q7;
output wire	Q8;
output wire	Q9;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_70;
reg	SYNTHESIZED_WIRE_71;
wire	SYNTHESIZED_WIRE_72;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
reg	SYNTHESIZED_WIRE_73;
wire	SYNTHESIZED_WIRE_74;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
reg	SYNTHESIZED_WIRE_75;
wire	SYNTHESIZED_WIRE_76;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
reg	SYNTHESIZED_WIRE_77;
wire	SYNTHESIZED_WIRE_78;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
reg	SYNTHESIZED_WIRE_79;
wire	SYNTHESIZED_WIRE_80;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
reg	SYNTHESIZED_WIRE_81;
wire	SYNTHESIZED_WIRE_82;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
reg	SYNTHESIZED_WIRE_83;
wire	SYNTHESIZED_WIRE_84;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_53;
reg	SYNTHESIZED_WIRE_85;
wire	SYNTHESIZED_WIRE_86;
wire	SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_58;
wire	SYNTHESIZED_WIRE_59;
wire	SYNTHESIZED_WIRE_60;
reg	SYNTHESIZED_WIRE_87;
wire	SYNTHESIZED_WIRE_88;
wire	SYNTHESIZED_WIRE_63;
reg	DFF_inst64;
wire	SYNTHESIZED_WIRE_64;
wire	SYNTHESIZED_WIRE_65;
wire	SYNTHESIZED_WIRE_66;
wire	SYNTHESIZED_WIRE_68;
wire	SYNTHESIZED_WIRE_69;

assign	Q0 = SYNTHESIZED_WIRE_87;
assign	Q1 = SYNTHESIZED_WIRE_71;
assign	Q2 = SYNTHESIZED_WIRE_73;
assign	Q3 = SYNTHESIZED_WIRE_75;
assign	Q4 = SYNTHESIZED_WIRE_77;
assign	Q5 = SYNTHESIZED_WIRE_79;
assign	Q6 = SYNTHESIZED_WIRE_81;
assign	Q7 = SYNTHESIZED_WIRE_83;
assign	Q8 = SYNTHESIZED_WIRE_85;
assign	Q9 = DFF_inst64;



assign	SYNTHESIZED_WIRE_70 =  ~Load;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_87 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_87 = SYNTHESIZED_WIRE_0;
	end
end

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_70;

assign	SYNTHESIZED_WIRE_74 = SYNTHESIZED_WIRE_71 & SYNTHESIZED_WIRE_72;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_72 ^ SYNTHESIZED_WIRE_71;

assign	SYNTHESIZED_WIRE_5 = Load & D1;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_71 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_71 = SYNTHESIZED_WIRE_7;
	end
end

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_70;

assign	SYNTHESIZED_WIRE_76 = SYNTHESIZED_WIRE_73 & SYNTHESIZED_WIRE_74;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_74 ^ SYNTHESIZED_WIRE_73;

assign	SYNTHESIZED_WIRE_12 = Load & D2;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_73 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_73 = SYNTHESIZED_WIRE_14;
	end
end

assign	SYNTHESIZED_WIRE_20 = SYNTHESIZED_WIRE_15 & SYNTHESIZED_WIRE_70;

assign	SYNTHESIZED_WIRE_78 = SYNTHESIZED_WIRE_75 & SYNTHESIZED_WIRE_76;

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_76 ^ SYNTHESIZED_WIRE_75;

assign	SYNTHESIZED_WIRE_19 = Load & D3;

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_19 | SYNTHESIZED_WIRE_20;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_75 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_75 = SYNTHESIZED_WIRE_21;
	end
end

assign	SYNTHESIZED_WIRE_27 = SYNTHESIZED_WIRE_22 & SYNTHESIZED_WIRE_70;

assign	SYNTHESIZED_WIRE_80 = SYNTHESIZED_WIRE_77 & SYNTHESIZED_WIRE_78;

assign	SYNTHESIZED_WIRE_22 = SYNTHESIZED_WIRE_78 ^ SYNTHESIZED_WIRE_77;

assign	SYNTHESIZED_WIRE_26 = Load & D4;

assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_26 | SYNTHESIZED_WIRE_27;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_77 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_77 = SYNTHESIZED_WIRE_28;
	end
end

assign	SYNTHESIZED_WIRE_34 = SYNTHESIZED_WIRE_29 & SYNTHESIZED_WIRE_70;

assign	SYNTHESIZED_WIRE_82 = SYNTHESIZED_WIRE_79 & SYNTHESIZED_WIRE_80;

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_80 ^ SYNTHESIZED_WIRE_79;

assign	SYNTHESIZED_WIRE_33 = Load & D5;

assign	SYNTHESIZED_WIRE_36 = SYNTHESIZED_WIRE_33 | SYNTHESIZED_WIRE_34;

assign	SYNTHESIZED_WIRE_88 = Count & SYNTHESIZED_WIRE_70;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_79 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_79 = SYNTHESIZED_WIRE_36;
	end
end

assign	SYNTHESIZED_WIRE_42 = SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_70;

assign	SYNTHESIZED_WIRE_84 = SYNTHESIZED_WIRE_81 & SYNTHESIZED_WIRE_82;

assign	SYNTHESIZED_WIRE_37 = SYNTHESIZED_WIRE_82 ^ SYNTHESIZED_WIRE_81;

assign	SYNTHESIZED_WIRE_41 = Load & D6;

assign	SYNTHESIZED_WIRE_43 = SYNTHESIZED_WIRE_41 | SYNTHESIZED_WIRE_42;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_81 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_81 = SYNTHESIZED_WIRE_43;
	end
end

assign	SYNTHESIZED_WIRE_51 = SYNTHESIZED_WIRE_44 & SYNTHESIZED_WIRE_70;

assign	SYNTHESIZED_WIRE_86 = SYNTHESIZED_WIRE_83 & SYNTHESIZED_WIRE_84;

assign	SYNTHESIZED_WIRE_44 = SYNTHESIZED_WIRE_84 ^ SYNTHESIZED_WIRE_83;

assign	SYNTHESIZED_WIRE_69 = SYNTHESIZED_WIRE_48 & SYNTHESIZED_WIRE_70;

assign	SYNTHESIZED_WIRE_50 = Load & D7;

assign	SYNTHESIZED_WIRE_52 = SYNTHESIZED_WIRE_50 | SYNTHESIZED_WIRE_51;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_83 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_83 = SYNTHESIZED_WIRE_52;
	end
end

assign	SYNTHESIZED_WIRE_58 = SYNTHESIZED_WIRE_53 & SYNTHESIZED_WIRE_70;

assign	SYNTHESIZED_WIRE_63 = SYNTHESIZED_WIRE_85 & SYNTHESIZED_WIRE_86;

assign	SYNTHESIZED_WIRE_53 = SYNTHESIZED_WIRE_86 ^ SYNTHESIZED_WIRE_85;

assign	SYNTHESIZED_WIRE_57 = Load & D8;

assign	SYNTHESIZED_WIRE_59 = SYNTHESIZED_WIRE_57 | SYNTHESIZED_WIRE_58;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_85 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_85 = SYNTHESIZED_WIRE_59;
	end
end

assign	SYNTHESIZED_WIRE_65 = SYNTHESIZED_WIRE_60 & SYNTHESIZED_WIRE_70;

assign	SYNTHESIZED_WIRE_72 = SYNTHESIZED_WIRE_87 & SYNTHESIZED_WIRE_88;

assign	SYNTHESIZED_WIRE_60 = SYNTHESIZED_WIRE_63 ^ DFF_inst64;

assign	SYNTHESIZED_WIRE_64 = Load & D9;

assign	SYNTHESIZED_WIRE_66 = SYNTHESIZED_WIRE_64 | SYNTHESIZED_WIRE_65;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	DFF_inst64 = 0;
	end
else
	begin
	DFF_inst64 = SYNTHESIZED_WIRE_66;
	end
end

assign	SYNTHESIZED_WIRE_48 = SYNTHESIZED_WIRE_88 ^ SYNTHESIZED_WIRE_87;

assign	SYNTHESIZED_WIRE_68 = Load & D0;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_68 | SYNTHESIZED_WIRE_69;


endmodule
