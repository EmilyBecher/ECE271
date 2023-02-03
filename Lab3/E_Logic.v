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
// CREATED		"Thu Apr 14 12:00:59 2022"

module E_Logic(
	H,
	E
);


input wire	[3:0] H;
output wire	E;

wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;




assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_8 & H[2] & SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_9 & H[0];

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_8 & H[1] & H[0];

assign	E = SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_8 =  ~H[3];

assign	SYNTHESIZED_WIRE_2 =  ~H[2];

assign	SYNTHESIZED_WIRE_9 =  ~H[1];


endmodule
