/*
Testbench para o MODULO registrador deslocador de 4 bits

    module proj_registrador(Q3,Q2,Q1,Q0,in,reset,clock) com:

	 ENTRADAS:
	 in,reset,clock

	 SAÍDAS:
	 Q3,Q2,Q1,Q0
*/



module TB_regis;
 
	reg TB_reset, TB_clock, TB_in;
	wire TB_Q3,TB_Q2,TB_Q1,TB_Q0;


// module proj_registrador(Q3,Q2,Q1,Q0,in,reset,clock) 
   registrador  dut(TB_Q3,TB_Q2,TB_Q1,TB_Q0,TB_in, TB_reset, TB_clock);

	
initial
  begin
	TB_reset = 1'b1;	TB_clock = 1'b0; 	TB_in = 1'b0;	 #20
	TB_reset = 1'b0;	TB_clock = 1'b1; 	TB_in = 1'b0; 	 #20
	TB_reset = 1'b1;	TB_clock = 1'b0; 	TB_in = 1'b1; 	 #20 ;
	TB_reset = 1'b1;	TB_clock = 1'b1; 	TB_in = 1'b1; 	 #20 ;
	TB_reset = 1'b1;	TB_clock = 1'b0; 	TB_in = 1'b0; 	 #20 ;
	TB_reset = 1'b1;	TB_clock = 1'b1; 	TB_in = 1'b0; 	 #20 ;
	TB_reset = 1'b1;	TB_clock = 1'b0; 	TB_in = 1'b0; 	 #20 ;
	TB_reset = 1'b1;	TB_clock = 1'b1; 	TB_in = 1'b0; 	 #20 ;
	TB_reset = 1'b1;	TB_clock = 1'b0; 	TB_in = 1'b0; 	 #20 ;
	TB_reset = 1'b1;	TB_clock = 1'b1; 	TB_in = 1'b0; 	 #20 ;
	TB_reset = 1'b1;	TB_clock = 1'b0; 	TB_in = 1'b0; 	 #20 ;
	TB_reset = 1'b1;	TB_clock = 1'b1; 	TB_in = 1'b0; 	 #20 ;
end


endmodule


