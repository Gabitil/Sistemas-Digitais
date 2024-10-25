
	/*
	*
	* Nomes: Gabriel Augusto | Gabriel Araujo
	* Data: 24/08/2023
	*
	*--------------------------------------------------*
	*
	* Projeto para comprar duas entradas A e B
	*/
	
	module Comparador (A, B, IG, MA, ME);
	input A,B;
	output IG, MA, ME;
	
	assign IG = (A ~^ B);
	assign MA = (A & ~B);
	assign ME = (~A & B);
	
	
	endmodule
	