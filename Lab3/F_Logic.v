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
// CREATED		"Thu Apr 14 12:01:15 2022"

module F_Logic(
	H,
	E
);


input wire	[3:0] H;
output wire	E;

wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;




assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_14 & H[0];

assign	SYNTHESIZED_WIRE_11 = H[3] & H[2] & SYNTHESIZED_WIRE_14 & H[0];

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13 & H[1] & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_12 & H[1] & H[0];

assign	E = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_12 =  ~H[3];

assign	SYNTHESIZED_WIRE_14 =  ~H[1];

assign	SYNTHESIZED_WIRE_13 =  ~H[2];

assign	SYNTHESIZED_WIRE_6 =  ~H[0];


endmodule
