library verilog;
use verilog.vl_types.all;
entity muxdem is
    port(
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        sel             : in     vl_logic;
        S               : out    vl_logic
    );
end muxdem;
