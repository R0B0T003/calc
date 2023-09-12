library verilog;
use verilog.vl_types.all;
entity binary_to_bcd_converter is
    port(
        \in\            : in     vl_logic_vector(7 downto 0);
        clr             : in     vl_logic;
        unit            : out    vl_logic_vector(3 downto 0);
        ten             : out    vl_logic_vector(3 downto 0);
        hun             : out    vl_logic_vector(3 downto 0);
        thos            : out    vl_logic_vector(3 downto 0)
    );
end binary_to_bcd_converter;
