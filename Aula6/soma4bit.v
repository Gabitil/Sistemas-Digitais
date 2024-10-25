/*
	Nome: Gabriel Augusto, Gabriel Araujo
	Data: 26/10/23 
*/

module soma4bit(SW,HEX0,HEX1);

input [17:0]SW;
output[0:6]HEX0,HEX1;

wire [3:0] A= SW[17:14];
wire [3:0] B= SW[3:0];
wire TE=SW[10];
wire [4:0] result;

//Criando variaveis auxiliares
wire [3:0] S, TS;
wire [3:0] dez, unid;
//soma1bit(A,B,TE,S,TS)
	
soma1bit bloco0 (A[0], B[0], TE, S[0],TS[0]);
soma1bit bloco1 (A[1],B[1],TS[0],S[1],TS[1]);
soma1bit bloco2 (A[2],B[2],TS[1],S[2],TS[2]);
soma1bit bloco3 (A[3],B[3],TS[2],S[3],TS[3]);
	
assign result = {TS[3], S[3:0]};

assign dez = result / 4'b1010;
assign unid = result % 4'b1010;

//Decodificador (A, B, C, D, a, b, c, d, e, f, g);
Decodificador blocoUnid (unid[3], unid[2], unid[1], unid[0], HEX0[0], HEX0[1], HEX0[2],HEX0[3],HEX0[4],HEX0[5],HEX0[6]);
Decodificador blocoDez (dez[3], dez[2], dez[1], dez[0], HEX1[0],HEX1[1],HEX1[2],HEX1[3],HEX1[4],HEX1[5],HEX1[6]);



endmodule
	
