library verilog;
use verilog.vl_types.all;
entity nbitflipflop is
    port(
        d               : in     vl_logic_vector(7 downto 0);
        clr             : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end nbitflipflop;
