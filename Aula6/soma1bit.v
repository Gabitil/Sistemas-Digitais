	/*
	*
	* Nomes: Gabriel Augusto, Gabriel Araujo
	* Data: 14/09/2023
	*
	*--------------------------------------------------*
	*
	* Projeto de somador de 1 bits
	*/
	
	module soma1bit (A , B, TE, S , TS);
	input A, B, TE;
	output S, TS;
	
	assign S = (A^B)^(TE);
	assign TS = (A&B)|(A&TE)|(B&TE);
	
	endmodule
	