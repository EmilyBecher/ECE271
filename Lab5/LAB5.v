// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Wed May 11 22:08:51 2022"

module LAB5(
	clk_in,
	reset,
	U,
	V,
	W,
	X,
	Y,
	Z
);


input wire	clk_in;
input wire	reset;
output wire	[6:0] U;
output wire	[6:0] V;
output wire	[6:0] W;
output wire	[6:0] X;
output wire	[6:0] Y;
output wire	[6:0] Z;

wire	clk_10MHz;
wire	clock_h;
wire	clock_m;
wire	clock_s;
wire	[23:0] divided_clk;
wire	[5:0] q_h;
wire	[5:0] q_m;
wire	[5:0] q_s;
wire	[3:0] SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	[3:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	[3:0] SYNTHESIZED_WIRE_5;
wire	[3:0] SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	[3:0] SYNTHESIZED_WIRE_13;





comparator	b2v_inst(
	.a(q_s),
	.lt(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst.M = 60;
	defparam	b2v_inst.N = 6;


sevenseg	b2v_inst10(
	.data(SYNTHESIZED_WIRE_0),
	.segs(W));


sevenseg	b2v_inst11(
	.data(SYNTHESIZED_WIRE_1),
	.segs(V));


sevenseg	b2v_inst12(
	.data(SYNTHESIZED_WIRE_2),
	.segs(U));


comparator	b2v_inst13(
	.a(q_m),
	.lt(SYNTHESIZED_WIRE_3));
	defparam	b2v_inst13.M = 60;
	defparam	b2v_inst13.N = 6;


comparator	b2v_inst14(
	.a(q_h),
	.lt(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst14.M = 24;
	defparam	b2v_inst14.N = 6;


sync	b2v_inst15(
	.clk(clk_10MHz),
	.d(SYNTHESIZED_WIRE_3),
	.q(clock_m));


sync	b2v_inst16(
	.clk(clk_10MHz),
	.d(SYNTHESIZED_WIRE_4),
	.q(clock_h));


counter	b2v_inst2(
	.clk(clk_10MHz),
	.reset(reset),
	.d(divided_clk),
	.q(divided_clk));
	defparam	b2v_inst2.N = 24;


parser	b2v_inst20(
	.a(q_s),
	.x(SYNTHESIZED_WIRE_6),
	.y(SYNTHESIZED_WIRE_5));
	defparam	b2v_inst20.N = 6;


parser	b2v_inst21(
	.a(q_m),
	.x(SYNTHESIZED_WIRE_13),
	.y(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst21.N = 6;


parser	b2v_inst22(
	.a(q_h),
	.x(SYNTHESIZED_WIRE_1),
	.y(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst22.N = 6;

assign	SYNTHESIZED_WIRE_8 = reset & clock_s;

assign	SYNTHESIZED_WIRE_10 = reset & clock_m;

assign	SYNTHESIZED_WIRE_12 = reset & clock_h;

assign	SYNTHESIZED_WIRE_9 =  ~clock_s;

assign	SYNTHESIZED_WIRE_11 =  ~clock_m;


sevenseg	b2v_inst3(
	.data(SYNTHESIZED_WIRE_5),
	.segs(Y));


sevenseg	b2v_inst4(
	.data(SYNTHESIZED_WIRE_6),
	.segs(Z));


sync	b2v_inst5(
	.clk(clk_10MHz),
	.d(SYNTHESIZED_WIRE_7),
	.q(clock_s));


counter	b2v_inst6(
	.clk(divided_clk[2]),
	.reset(SYNTHESIZED_WIRE_8),
	.d(q_s),
	.q(q_s));
	defparam	b2v_inst6.N = 6;


counter	b2v_inst7(
	.clk(SYNTHESIZED_WIRE_9),
	.reset(SYNTHESIZED_WIRE_10),
	.d(q_m),
	.q(q_m));
	defparam	b2v_inst7.N = 6;


counter	b2v_inst8(
	.clk(SYNTHESIZED_WIRE_11),
	.reset(SYNTHESIZED_WIRE_12),
	.d(q_h),
	.q(q_h));
	defparam	b2v_inst8.N = 6;


sevenseg	b2v_inst9(
	.data(SYNTHESIZED_WIRE_13),
	.segs(X));

assign	clk_10MHz = clk_in;

endmodule
