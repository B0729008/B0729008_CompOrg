library verilog;
use verilog.vl_types.all;
entity Block2 is
    port(
        S1              : in     vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        S0              : in     vl_logic;
        Q               : out    vl_logic
    );
end Block2;
