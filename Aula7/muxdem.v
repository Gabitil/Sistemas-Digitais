/*
	Nome: Gabriel Augusto, Gabriel Araujo
	Data: 19/10
*/

module muxdem(I0,I1,sel,S);
input sel, I0,I1;
output S;

assign S = (~sel&I0) | (sel&I1);

endmodule
