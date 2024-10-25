library verilog;
use verilog.vl_types.all;
entity soma4bit is
    port(
        \A\             : in     vl_logic_vector(3 downto 0);
        \B\             : in     vl_logic_vector(3 downto 0);
        result          : out    vl_logic_vector(4 downto 0);
        TE              : in     vl_logic;
        a               : out    vl_logic_vector(1 downto 0);
        b               : out    vl_logic_vector(1 downto 0);
        c               : out    vl_logic_vector(1 downto 0);
        d               : out    vl_logic_vector(1 downto 0);
        e               : out    vl_logic_vector(1 downto 0);
        f               : out    vl_logic_vector(1 downto 0);
        g               : out    vl_logic_vector(1 downto 0)
    );
end soma4bit;
