library verilog;
use verilog.vl_types.all;
entity ALB is
    port(
        R               : in     vl_logic_vector(7 downto 0);
        S               : in     vl_logic_vector(7 downto 0);
        CI              : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        f_alb           : out    vl_logic_vector(7 downto 0);
        norm_f          : out    vl_logic_vector(7 downto 0);
        flag_C          : out    vl_logic;
        flag_V          : out    vl_logic;
        flag_N          : out    vl_logic;
        flag_Z          : out    vl_logic
    );
end ALB;
