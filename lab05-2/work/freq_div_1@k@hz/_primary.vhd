library verilog;
use verilog.vl_types.all;
entity freq_div_1KHz is
    port(
        clk_in          : in     vl_logic;
        clk_out         : out    vl_logic;
        reset           : in     vl_logic
    );
end freq_div_1KHz;
