library verilog;
use verilog.vl_types.all;
entity dflipflop is
    port(
        d               : in     vl_logic;
        clr             : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic
    );
end dflipflop;
