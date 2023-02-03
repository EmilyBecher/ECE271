//Counter
module counter #(parameter N = 6)
					 (input logic clk,
					  input logic reset,
					  input logic [N-1:0]d,
					  output logic [N-1:0]q);
					
	always_ff @(posedge clk, negedge reset)
		if (!reset) q <= 0;
		else 	     q <= q + 1;
		
endmodule