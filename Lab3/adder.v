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
// CREATED		"Tue Apr 19 10:50:40 2022"

module adder(
	Cin,
	A,
	B,
	Cout,
	Z
);


input wire	Cin;
input wire	[3:0] A;
input wire	[3:0] B;
output wire	Cout;
output wire	[3:0] Z;

wire	[3:0] Z_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;





FullAdder	b2v_inst(
	.A(A[0]),
	.B(SYNTHESIZED_WIRE_0),
	.cin(Cin),
	.S(Z_ALTERA_SYNTHESIZED[0]),
	.cout(SYNTHESIZED_WIRE_5));

assign	SYNTHESIZED_WIRE_6 = B[3] ^ Cin;

assign	SYNTHESIZED_WIRE_2 = B[2] ^ Cin;

assign	SYNTHESIZED_WIRE_4 = B[1] ^ Cin;

assign	SYNTHESIZED_WIRE_0 = B[0] ^ Cin;

assign	Cout = Cin ^ SYNTHESIZED_WIRE_1;


FullAdder	b2v_inst6(
	.A(A[2]),
	.B(SYNTHESIZED_WIRE_2),
	.cin(SYNTHESIZED_WIRE_3),
	.S(Z_ALTERA_SYNTHESIZED[2]),
	.cout(SYNTHESIZED_WIRE_7));


FullAdder	b2v_inst7(
	.A(A[1]),
	.B(SYNTHESIZED_WIRE_4),
	.cin(SYNTHESIZED_WIRE_5),
	.S(Z_ALTERA_SYNTHESIZED[1]),
	.cout(SYNTHESIZED_WIRE_3));


FullAdder	b2v_inst8(
	.A(A[3]),
	.B(SYNTHESIZED_WIRE_6),
	.cin(SYNTHESIZED_WIRE_7),
	.S(Z_ALTERA_SYNTHESIZED[3]),
	.cout(SYNTHESIZED_WIRE_1));

assign	Z = Z_ALTERA_SYNTHESIZED;

endmodule
