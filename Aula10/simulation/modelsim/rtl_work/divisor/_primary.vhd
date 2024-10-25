library verilog;
use verilog.vl_types.all;
entity divisor is
    port(
        novo_clock      : out    vl_logic;
        reset           : in     vl_logic;
        clock_50        : in     vl_logic
    );
end divisor;
