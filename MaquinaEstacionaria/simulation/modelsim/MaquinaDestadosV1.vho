-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/07/2023 18:48:09"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MaquinaDestadosV1 IS
    PORT (
	L : OUT std_logic;
	CLK : IN std_logic;
	C1 : IN std_logic;
	C2 : IN std_logic;
	Push : IN std_logic;
	Pop : IN std_logic;
	INC : OUT std_logic;
	Full : OUT std_logic;
	Empty : OUT std_logic;
	Dec : OUT std_logic
	);
END MaquinaDestadosV1;

-- Design Ports Information
-- L	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INC	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Full	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Empty	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dec	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C2	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pop	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Push	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MaquinaDestadosV1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_L : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_C2 : std_logic;
SIGNAL ww_Push : std_logic;
SIGNAL ww_Pop : std_logic;
SIGNAL ww_INC : std_logic;
SIGNAL ww_Full : std_logic;
SIGNAL ww_Empty : std_logic;
SIGNAL ww_Dec : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L~output_o\ : std_logic;
SIGNAL \INC~output_o\ : std_logic;
SIGNAL \Full~output_o\ : std_logic;
SIGNAL \Empty~output_o\ : std_logic;
SIGNAL \Dec~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Push~input_o\ : std_logic;
SIGNAL \C2~input_o\ : std_logic;
SIGNAL \Pop~input_o\ : std_logic;
SIGNAL \C1~input_o\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst|inst69~combout\ : std_logic;
SIGNAL \inst|inst7~0_combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst10~1_combout\ : std_logic;
SIGNAL \Q1~q\ : std_logic;
SIGNAL \inst42~combout\ : std_logic;
SIGNAL \Q2~q\ : std_logic;
SIGNAL \inst16~0_combout\ : std_logic;
SIGNAL \Q0~q\ : std_logic;
SIGNAL \inst45~combout\ : std_logic;
SIGNAL \and3~combout\ : std_logic;
SIGNAL \and4~combout\ : std_logic;
SIGNAL \and2~0_combout\ : std_logic;

BEGIN

L <= ww_L;
ww_CLK <= CLK;
ww_C1 <= C1;
ww_C2 <= C2;
ww_Push <= Push;
ww_Pop <= Pop;
INC <= ww_INC;
Full <= ww_Full;
Empty <= ww_Empty;
Dec <= ww_Dec;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X0_Y8_N9
\L~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst45~combout\,
	devoe => ww_devoe,
	o => \L~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\INC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst45~combout\,
	devoe => ww_devoe,
	o => \INC~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\Full~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and3~combout\,
	devoe => ww_devoe,
	o => \Full~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\Empty~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and4~combout\,
	devoe => ww_devoe,
	o => \Empty~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\Dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and2~0_combout\,
	devoe => ww_devoe,
	o => \Dec~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y7_N8
\Push~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Push,
	o => \Push~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\C2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C2,
	o => \C2~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\Pop~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pop,
	o => \Pop~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\C1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C1,
	o => \C1~input_o\);

-- Location: LCCOMB_X1_Y7_N16
\inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (!\Push~input_o\ & ((\C2~input_o\ & (!\Pop~input_o\ & !\C1~input_o\)) # (!\C2~input_o\ & (\Pop~input_o\ $ (\C1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Push~input_o\,
	datab => \C2~input_o\,
	datac => \Pop~input_o\,
	datad => \C1~input_o\,
	combout => \inst5~0_combout\);

-- Location: LCCOMB_X1_Y7_N30
\inst|inst69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst69~combout\ = (\C2~input_o\ & (!\Push~input_o\ & (\Pop~input_o\ & !\C1~input_o\))) # (!\C2~input_o\ & (((!\Pop~input_o\ & \C1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Push~input_o\,
	datab => \C2~input_o\,
	datac => \Pop~input_o\,
	datad => \C1~input_o\,
	combout => \inst|inst69~combout\);

-- Location: LCCOMB_X1_Y7_N12
\inst|inst7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst7~0_combout\ = (!\Pop~input_o\ & ((\Push~input_o\ & (!\C2~input_o\)) # (!\Push~input_o\ & (\C2~input_o\ & !\C1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Push~input_o\,
	datab => \C2~input_o\,
	datac => \Pop~input_o\,
	datad => \C1~input_o\,
	combout => \inst|inst7~0_combout\);

-- Location: LCCOMB_X1_Y7_N18
\inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\Q1~q\) # (!\Q0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q1~q\,
	datad => \Q0~q\,
	combout => \inst10~0_combout\);

-- Location: LCCOMB_X1_Y7_N14
\inst10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~1_combout\ = (\inst|inst7~0_combout\ & (!\Q2~q\ & (\inst|inst69~combout\))) # (!\inst|inst7~0_combout\ & ((\inst10~0_combout\) # ((!\Q2~q\ & \inst|inst69~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~0_combout\,
	datab => \Q2~q\,
	datac => \inst|inst69~combout\,
	datad => \inst10~0_combout\,
	combout => \inst10~1_combout\);

-- Location: FF_X1_Y7_N15
Q1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q1~q\);

-- Location: LCCOMB_X1_Y7_N28
inst42 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst42~combout\ = (\inst|inst7~0_combout\ & (\inst5~0_combout\)) # (!\inst|inst7~0_combout\ & (((!\Q0~q\ & !\Q1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~0_combout\,
	datab => \inst5~0_combout\,
	datac => \Q0~q\,
	datad => \Q1~q\,
	combout => \inst42~combout\);

-- Location: FF_X1_Y7_N29
Q2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst42~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q2~q\);

-- Location: LCCOMB_X1_Y7_N0
\inst16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16~0_combout\ = (\inst|inst69~combout\ & ((!\Q2~q\))) # (!\inst|inst69~combout\ & (!\inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5~0_combout\,
	datac => \inst|inst69~combout\,
	datad => \Q2~q\,
	combout => \inst16~0_combout\);

-- Location: FF_X1_Y7_N1
Q0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q0~q\);

-- Location: LCCOMB_X1_Y7_N22
inst45 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst45~combout\ = (\Q0~q\ & (!\Q2~q\ & !\Q1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q0~q\,
	datab => \Q2~q\,
	datad => \Q1~q\,
	combout => \inst45~combout\);

-- Location: LCCOMB_X1_Y7_N20
and3 : cycloneiii_lcell_comb
-- Equation(s):
-- \and3~combout\ = (\Q0~q\ & (!\Q2~q\ & \Q1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q0~q\,
	datab => \Q2~q\,
	datad => \Q1~q\,
	combout => \and3~combout\);

-- Location: LCCOMB_X1_Y7_N26
and4 : cycloneiii_lcell_comb
-- Equation(s):
-- \and4~combout\ = (!\Q0~q\ & (\Q2~q\ & !\Q1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q0~q\,
	datab => \Q2~q\,
	datad => \Q1~q\,
	combout => \and4~combout\);

-- Location: LCCOMB_X1_Y7_N24
\and2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \and2~0_combout\ = (!\Q0~q\ & (!\Q2~q\ & \Q1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q0~q\,
	datab => \Q2~q\,
	datad => \Q1~q\,
	combout => \and2~0_combout\);

ww_L <= \L~output_o\;

ww_INC <= \INC~output_o\;

ww_Full <= \Full~output_o\;

ww_Empty <= \Empty~output_o\;

ww_Dec <= \Dec~output_o\;
END structure;


