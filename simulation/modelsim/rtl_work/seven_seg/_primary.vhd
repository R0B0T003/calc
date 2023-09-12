library verilog;
use verilog.vl_types.all;
entity seven_seg is
    port(
        \in\            : in     vl_logic_vector(7 downto 0);
        clr             : in     vl_logic;
        seg1            : out    vl_logic_vector(6 downto 0);
        seg2            : out    vl_logic_vector(6 downto 0);
        seg3            : out    vl_logic_vector(6 downto 0);
        seg4            : out    vl_logic_vector(6 downto 0)
    );
end seven_seg;
