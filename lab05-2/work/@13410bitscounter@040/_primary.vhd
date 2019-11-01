library verilog;
use verilog.vl_types.all;
entity \10bitscounter\ is
    port(
        Load            : in     vl_logic;
        Count           : in     vl_logic;
        D0              : in     vl_logic;
        D1              : in     vl_logic;
        D2              : in     vl_logic;
        D3              : in     vl_logic;
        clk             : in     vl_logic;
        clean           : in     vl_logic;
        D4              : in     vl_logic;
        D5              : in     vl_logic;
        D6              : in     vl_logic;
        D7              : in     vl_logic;
        D8              : in     vl_logic;
        D9              : in     vl_logic;
        Q0              : out    vl_logic;
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic;
        Q4              : out    vl_logic;
        Q5              : out    vl_logic;
        Q6              : out    vl_logic;
        Q7              : out    vl_logic;
        Q8              : out    vl_logic;
        Q9              : out    vl_logic
    );
end \10bitscounter\;
