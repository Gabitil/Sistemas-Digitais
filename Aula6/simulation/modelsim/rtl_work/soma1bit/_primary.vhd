library verilog;
use verilog.vl_types.all;
entity soma1bit is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        TE              : in     vl_logic;
        S               : out    vl_logic;
        TS              : out    vl_logic
    );
end soma1bit;
