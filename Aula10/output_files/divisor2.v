module divisor2(novo_clock,reset,clock_50);
	input reset;
	input clock_50;
	
	output novo_clock;
	
	
	reg [25:0]Q;
   wire clk;

assign clk = clock_50;
	
	initial 
	begin
	  Q = 26'b000;
	end

always @ (posedge clk or negedge reset) 
begin
   if (reset == 1'b0) 
	begin
		Q = 26'b000;
   end
	else if (Q == 26'd49999999)begin
		Q = 26'b00;
	end
   else begin
     Q = Q + 1;
   end
end

assign novo_clock = Q[25]; // novo_clock = 50M/2^24   =   3Hz

endmodule
