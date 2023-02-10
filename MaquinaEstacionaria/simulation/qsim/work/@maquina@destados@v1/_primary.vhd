library verilog;
use verilog.vl_types.all;
entity MaquinaDestadosV1 is
    port(
        L               : out    vl_logic;
        CLK             : in     vl_logic;
        C1              : in     vl_logic;
        C2              : in     vl_logic;
        Push            : in     vl_logic;
        Pop             : in     vl_logic;
        INC             : out    vl_logic;
        Full            : out    vl_logic;
        Empty           : out    vl_logic;
        Dec             : out    vl_logic
    );
end MaquinaDestadosV1;
