/*
	Nome: Gabriel Augusto, Gabriel Araujo
	Data: 19/10/23 
*/


module DecMuxSw (SW,HEX0,HEX1,HEX2,HEX3);

input [17:14]SW;
output reg [0:6]HEX0,HEX1,HEX2,HEX3;

// A3=Sw17 A0=ssw14;
wire [0:3]A = SW[17:14];

always@ (A)
	begin
		case (A)
			4'b0000 : HEX0 = 7'b0000001;
			4'b0001 : HEX0 = 7'b1001111;
			4'b0010 : HEX0 = 7'b0010010;
			4'b0011 : HEX0 = 7'b0000110;
			4'b0100 : HEX0 = 7'b1001100;
			4'b0101 : HEX0 = 7'b0100100;
			4'b0110 : HEX0 = 7'b0100000;
			4'b0111 : HEX0 = 7'b0001111;
			4'b1000 : HEX0 = 7'b0000000;
			4'b1001 : HEX0 = 7'b0000100;
			default: HEX0 = 7'b1111111;
		endcase
	end
	
endmodule