library verilog;
use verilog.vl_types.all;
entity lab02_b0729008 is
    port(
        clk             : in     vl_logic;
        X0              : in     vl_logic;
        X1              : in     vl_logic;
        X2              : in     vl_logic;
        X3              : in     vl_logic;
        clear           : in     vl_logic;
        A0              : out    vl_logic;
        A1              : out    vl_logic;
        A2              : out    vl_logic;
        A3              : out    vl_logic;
        Unlock          : out    vl_logic;
        Lock            : out    vl_logic;
        A4              : out    vl_logic
    );
end lab02_b0729008;
