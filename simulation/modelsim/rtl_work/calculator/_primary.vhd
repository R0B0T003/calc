library verilog;
use verilog.vl_types.all;
entity calculator is
    port(
        \in\            : in     vl_logic_vector(7 downto 0);
        seg1            : out    vl_logic_vector(6 downto 0);
        seg2            : out    vl_logic_vector(6 downto 0);
        seg3            : out    vl_logic_vector(6 downto 0);
        seg4            : out    vl_logic_vector(6 downto 0);
        plus            : in     vl_logic;
        equal           : in     vl_logic;
        clk             : in     vl_logic
    );
end calculator;
