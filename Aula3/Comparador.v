
	/*
	*
	* Nomes: Gabriel Augusto | Gabriel Araujo
	* Data: 24/08/2023
	*
	*--------------------------------------------------*
	*
	* Projeto para comprar duas entradas A e B
	*/
	
	module Comparador (HAB, A, B, IG, MA, ME);
	input HAB, A,B;
	output IG, MA, ME;
	
	assign IG = HAB & (A ~^ B);
	assign MA = HAB & (A & ~B);
	assign ME = HAB & (~A & B);
	
	
	endmodule
	