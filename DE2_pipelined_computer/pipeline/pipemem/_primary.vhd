library verilog;
use verilog.vl_types.all;
entity pipemem is
    port(
        mwmem           : in     vl_logic;
        malu            : in     vl_logic_vector(31 downto 0);
        mb              : in     vl_logic_vector(31 downto 0);
        clock           : in     vl_logic;
        ram_clock       : in     vl_logic;
        mmo             : out    vl_logic_vector(31 downto 0)
    );
end pipemem;
