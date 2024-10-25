module divisor (
    output reg novo_clock,
    input reset,
    input clock_50
);

reg [25:0] Q;
wire clk;

assign clk = clock_50;

always @(posedge clk or negedge reset) begin
    if (reset == 1'b0) begin
        Q = 26'b000;
    end
    else if (Q == 26'd49999999) begin
        Q = 26'b00;
        novo_clock = ~novo_clock; // Inverte o sinal a cada 50 pulsos
    end
    else begin
        Q = Q + 1;
    end
end

endmodule
