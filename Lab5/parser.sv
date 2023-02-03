//Parser
module parser #(parameter N = 8)
					(input logic [N-1:0]a,
					 output logic [3:0]x, y);
					 
	logic b = 4'b1010;
	
	assign x = a % 10; //ones
	assign y = (a / 10) % 10; //tens
					 
endmodule
