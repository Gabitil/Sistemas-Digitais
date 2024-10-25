module decodificador3 ( entrada, segmentos );
input [2:0] entrada;
output reg [0:6] segmentos;
 
 always@(*) begin	
	case ({entrada}) // concatenar
	
		3'b000:	segmentos = 7'b0000000;// b
		3'b001:	segmentos = 7'b0011001;// r
		3'b010:	segmentos = 7'b1111001;// i
		3'b011:	segmentos = 7'b0110000;// e
		3'b100:	segmentos = 7'b1110001;// l	
		3'b101:	segmentos = 7'b1111111;// espaço
		3'b110:	segmentos = 7'b0000100;// g
		3'b111:	segmentos = 7'b0001000;// a

	
	
		default:	segmentos = 7'b1111111;
	endcase
end	
endmodule
