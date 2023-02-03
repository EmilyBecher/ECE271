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
// CREATED		"Tue Apr 19 11:23:12 2022"

module LAB3(
	Cin,
	A,
	B,
	C,
	D,
	E,
	F,
	G,
	Y1,
	Y2,
	Y3,
	Y4,
	Y5,
	Y6,
	Y7,
	I,
	J
);


input wire	Cin;
input wire	[3:0] A;
input wire	[3:0] B;
output wire	C;
output wire	D;
output wire	E;
output wire	F;
output wire	G;
output wire	Y1;
output wire	Y2;
output wire	Y3;
output wire	Y4;
output wire	Y5;
output wire	Y6;
output wire	Y7;
output wire	I;
output wire	J;

wire	[3:0] H;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;

assign	Y3 = 1;
assign	Y4 = 1;
assign	Y5 = 1;
assign	Y6 = 1;
assign	Y7 = 1;
assign	Y1 = SYNTHESIZED_WIRE_1;
assign	Y2 = SYNTHESIZED_WIRE_1;




A_Logic	b2v_inst(
	.H(H),
	.A(I));


B_Logic	b2v_inst1(
	.H(H),
	.B(J));


C_Logic	b2v_inst2(
	.H(H),
	.C(C));


D_Logic	b2v_inst3(
	.H(H),
	.D(D));


E_Logic	b2v_inst4(
	.H(H),
	.E(E));


F_Logic	b2v_inst5(
	.H(H),
	.E(F));


G_Logic	b2v_inst6(
	.H(H),
	.G(G));


adder	b2v_inst7(
	.Cin(Cin),
	.A(A),
	.B(B),
	.Cout(SYNTHESIZED_WIRE_0),
	.Z(H));


assign	SYNTHESIZED_WIRE_1 =  ~SYNTHESIZED_WIRE_0;


endmodule
