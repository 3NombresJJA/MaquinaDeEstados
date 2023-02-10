library verilog;
use verilog.vl_types.all;
entity MaquinaDestadosV1_vlg_check_tst is
    port(
        Dec             : in     vl_logic;
        Empty           : in     vl_logic;
        Full            : in     vl_logic;
        INC             : in     vl_logic;
        L               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MaquinaDestadosV1_vlg_check_tst;
