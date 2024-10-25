	/*
	*
	* Nomes: Gabriel Augusto
	* Data: 31/08/2023
	*
	*--------------------------------------------------*
	*
	* Projeto para comparação de 4 bits
	*/
	
	module comp_4bit(A,B,IG,MA,ME);
	input [3:0] A,B;
	output IG, MA, ME;
	
	//Criando variaveis auxiliares
	wire [3:0]aux_ma,aux_ig,aux_me;
	
	//Comparador    (HAB, A, B, IG, MA, ME);
	
	Comparador BIT3 (1, A[3],B[3], aux_ig[3], aux_ma[3], aux_me[3]);
	Comparador BIT2 (aux_ig[3], A[2], B[2], aux_ig[2], aux_ma[2], aux_me[2]);
	Comparador BIT1 (aux_ig[2], A[1], B[1], aux_ig[1],aux_ma[1],aux_me[1]);
	Comparador BIT0 (aux_ig[1],A[0],B[0], aux_ig[0], aux_ma[0], aux_me[0]);
	
	assign IG = & aux_ig;
	assign MA = | aux_ma;
	assign ME = | aux_me;
	
	
	endmodule