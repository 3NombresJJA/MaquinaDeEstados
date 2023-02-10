library verilog;
use verilog.vl_types.all;
entity MaquinaDestadosV1_vlg_sample_tst is
    port(
        C1              : in     vl_logic;
        C2              : in     vl_logic;
        CLK             : in     vl_logic;
        Pop             : in     vl_logic;
        Push            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MaquinaDestadosV1_vlg_sample_tst;
