/*
	Nomes: Gabriel Augusto, Gabriel Araujo
	Projeto: Decodificador para Display
	Data: 21/09/2023
*/

module Decodificador (A, B, C, D, a, b, c, d, e, f, g);
input A, B, C, D;
output a, b, c, d, e, f, g;


assign a = (B&~C&~D)|(~A&~B&~C&D);
assign b = (B&~C&D)| (B&C&~D);
assign c = (~B&C&~D);
assign d = (B&~C&~D)| (B&C&D)| (~A&~B&~C&D);
assign e = (D)|(~C&B);
assign f = (C&D)| (C&~B) | (~A&~B&D);
assign g = (~A&~B&~C)|(B&C&D);

endmodule