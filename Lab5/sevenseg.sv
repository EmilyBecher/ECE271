//Seven Segment Decoder
module sevenseg(input logic [3:0]data,
					 output logic [6:0]segs);
					 
	always_comb
		case(data)
			//						 gfe_dcba
			0:			segs = 7'b100_0000;	
			1:			segs = 7'b111_1001;
			2:			segs = 7'b010_0100;
			3:			segs = 7'b011_0000;
			4:			segs = 7'b001_1001;
			5:			segs = 7'b001_0010;
			6:			segs = 7'b000_0010;
			7:			segs = 7'b111_1000;
			8:			segs = 7'b000_0000;
			9:			segs = 7'b001_1000;
			default: segs = 7'b111_1111;
		endcase
endmodule