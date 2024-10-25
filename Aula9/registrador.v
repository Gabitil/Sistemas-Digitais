module registrador(Q3,Q2,Q1,Q0,in,reset,clock);

input in, reset, clock;

output reg Q3,Q2,Q1,Q0;

always @(posedge clock or negedge reset)

begin

	if (reset==0)
		begin
			Q3 <= 1'b0;
			Q2 <= 1'b0;
			Q1 <= 1'b0;
			Q0 <= 1'b0;
		end
		else
		begin
			Q3 <= in;
			Q2 <= Q3;
			Q1 <= Q2;
			Q0 <= Q1;
		end
	end
	
endmodule
