//Comparator
module comparator #(parameter N = 6, M = 60)
				 (input logic [N-1:0]a,
				  output logic /*eq, neq,*/ lt/*, lte, gt, gte*/);
				  
	//assign eq  = (a == b);
	//assign neq = (a != b);
	assign lt  = (a < M);
	//assign lte = (a <= b);
	//assign gt  = (a >  b);
	//assign gte = (a >= b);
	
endmodule