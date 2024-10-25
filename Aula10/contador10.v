module contador10(HEX0,HEX1,SW,CLOCK_50);
	  
	output [0:6] HEX0,HEX1;
   input [17:0] SW;
  	input CLOCK_50;
	
 	wire  novo_clock1;
	wire  novo_clock2;
   wire  reset;
	
	reg [3:0] Q0;
	reg [3:0] Q1;
	
	assign reset = SW[10];	
	
	initial 
	   begin
	     Q0 = 4'b0000;
		  Q1 = 4'b0000;
	   end

divisor ANA(novo_clock1,reset,CLOCK_50);
divisor2 ANA2(novo_clock2,reset,CLOCK_50);


always @ (posedge novo_clock1 or negedge reset) 
begin
   if (reset == 1'b0)   begin
		Q0 = 4'd0;
   end
   else if (Q0 == 4'd9) begin
		Q0 = 4'd0;
	end
	else begin	
		Q0 = Q0 + 1;
   end
end

always @ (posedge novo_clock2 or negedge reset) 
begin
   if (reset == 1'd0)   begin
		Q1 = 4'd0;
   end
   else if (Q1 == 4'd9) begin
		Q1 = 4'd0;
	end
	else begin
		Q1 = Q1 + 1;
   end
end

decodificador (Q0,HEX1[0:6]);
decodificador (Q1,HEX0[0:6]);


endmodule
