library verilog;
use verilog.vl_types.all;
entity contador10 is
    port(
        HEX0            : out    vl_logic_vector(0 to 6);
        SW              : in     vl_logic_vector(17 downto 0);
        CLOCK_50        : in     vl_logic
    );
end contador10;
