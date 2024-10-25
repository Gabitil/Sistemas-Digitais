

	/*
	*
	* Nomes: Gabriel Augusto | Gabriel Araujo
	*
	*--------------------------------------------------*
	*
	* Projeto para fazer o comportamento do sinal de um carro quando o farol está acesso
	*/
	
	module alarme_carro (F, P, C, S);
	input F, P, C;
	output S;
	
	assign S = (F & ~C) | (F & ~P);
	
	
	endmodule
	