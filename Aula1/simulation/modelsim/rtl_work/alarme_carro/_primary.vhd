library verilog;
use verilog.vl_types.all;
entity alarme_carro is
    port(
        F               : in     vl_logic;
        P               : in     vl_logic;
        C               : in     vl_logic;
        S               : out    vl_logic
    );
end alarme_carro;
