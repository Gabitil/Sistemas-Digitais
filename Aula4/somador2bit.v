	/*
	*
	* Nomes: Gabriel Augusto, Gabriel Araujo
	* Data: 14/09/2023
	*
	*--------------------------------------------------*
	*
	* Projeto de somador de 2 bits
	*/
	
	module somador2bit (A ,B ,resultado,TE);
	input [1:0] A,B;
	input TE;
	output [2:0] resultado;
	
	//Criando variaveis auxiliares
	wire [1:0] S, TS;
	
	//soma1bit(A,B,TE,S,TS)
	
	soma1bit bloco0 (A[0], B[0], TE, S[0],TS[0]);
	soma1bit bloco1 (A[1],B[1],TS[0],S[1],TS[1]);
	
	assign resultado = {TS[1], S[1:0]};
	endmodule
	