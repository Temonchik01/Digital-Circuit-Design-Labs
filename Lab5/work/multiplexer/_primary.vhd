library verilog;
use verilog.vl_types.all;
entity multiplexer is
    port(
        D0              : in     vl_logic_vector(3 downto 0);
        D1              : in     vl_logic_vector(3 downto 0);
        D2              : in     vl_logic_vector(3 downto 0);
        D3              : in     vl_logic_vector(3 downto 0);
        D4              : in     vl_logic_vector(3 downto 0);
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        A4              : in     vl_logic;
        Q               : out    vl_logic_vector(3 downto 0)
    );
end multiplexer;
