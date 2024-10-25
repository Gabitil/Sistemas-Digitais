module letreiro(HEX0,HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7,SW,CLOCK_50);
	  
	output [0:6] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7;
   input [17:0] SW;
  	input CLOCK_50;
	
 	wire  novo_clock1;
   wire  reset;
	
	reg [2:0] Q;
	
	assign reset = SW[10];	
	
	initial 
	   begin
	     Q = 3'b000;
	   end

divisor ANA(novo_clock1,reset,CLOCK_50);

always @ (posedge novo_clock1 or negedge reset) 
begin
   if (reset == 1'b0)   begin
		Q = 3'd0;
   end
   else if (Q == 3'b111) begin
		Q = 3'd0;
	end
	else begin	
		Q = Q + 1;
   end
end


decodificador bloco0(Q, HEX7);
decodificador1 bloco1(Q, HEX6);
decodificador2 bloco2(Q, HEX5);
decodificador3 bloco3(Q, HEX4);
decodificador4 bloco4(Q, HEX3);
decodificador5 bloco5(Q, HEX2);
decodificador6 bloco6(Q, HEX1);
decodificador7 bloco7(Q, HEX0);


endmodule
