library verilog;
use verilog.vl_types.all;
entity decodificador is
    port(
        entrada         : in     vl_logic_vector(3 downto 0);
        segmentos       : out    vl_logic_vector(0 to 6)
    );
end decodificador;
