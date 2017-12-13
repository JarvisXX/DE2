library verilog;
use verilog.vl_types.all;
entity dff32 is
    port(
        d               : in     vl_logic_vector(31 downto 0);
        clock           : in     vl_logic;
        resetn          : in     vl_logic;
        q               : out    vl_logic_vector(31 downto 0);
        wpcir           : in     vl_logic
    );
end dff32;
