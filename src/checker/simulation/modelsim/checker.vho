-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/10/2020 15:36:52"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	serialChecker IS
    PORT (
	serialIn : IN std_logic;
	clk : IN std_logic;
	nRst : IN std_logic;
	error : OUT std_logic
	);
END serialChecker;

-- Design Ports Information
-- error	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- serialIn	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF serialChecker IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_serialIn : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_nRst : std_logic;
SIGNAL ww_error : std_logic;
SIGNAL \nRst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \error~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt|ff0|nQ~0_combout\ : std_logic;
SIGNAL \nRst~input_o\ : std_logic;
SIGNAL \nRst~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt|ff0|nQ~q\ : std_logic;
SIGNAL \cnt|ff0|Q~0_combout\ : std_logic;
SIGNAL \cnt|ff0|Q~q\ : std_logic;
SIGNAL \cnt|ff1|Q~0_combout\ : std_logic;
SIGNAL \cnt|ff1|Q~q\ : std_logic;
SIGNAL \cnt|ff2|Q~0_combout\ : std_logic;
SIGNAL \cnt|ff2|Q~feeder_combout\ : std_logic;
SIGNAL \cnt|ff2|Q~q\ : std_logic;
SIGNAL \cnt|ff3|Q~0_combout\ : std_logic;
SIGNAL \cnt|ff3|Q~feeder_combout\ : std_logic;
SIGNAL \cnt|ff3|Q~q\ : std_logic;
SIGNAL \cnt|ad3|y~combout\ : std_logic;
SIGNAL \cnt|ff4|Q~0_combout\ : std_logic;
SIGNAL \cnt|ff4|Q~q\ : std_logic;
SIGNAL \cmp|and3|y~0_combout\ : std_logic;
SIGNAL \cmp|and3|y~combout\ : std_logic;
SIGNAL \serialIn~input_o\ : std_logic;
SIGNAL \crc0|xor3|y~combout\ : std_logic;
SIGNAL \crc0|ff3|Q~q\ : std_logic;
SIGNAL \crc0|ff4|Q~feeder_combout\ : std_logic;
SIGNAL \crc0|ff4|Q~q\ : std_logic;
SIGNAL \crc0|xor4|y~combout\ : std_logic;
SIGNAL \crc0|ff5|Q~q\ : std_logic;
SIGNAL \crc0|ff6|Q~feeder_combout\ : std_logic;
SIGNAL \crc0|ff6|Q~q\ : std_logic;
SIGNAL \crc0|ff7|Q~feeder_combout\ : std_logic;
SIGNAL \crc0|ff7|Q~q\ : std_logic;
SIGNAL \crc0|xor0|y~combout\ : std_logic;
SIGNAL \crc0|ff0|Q~q\ : std_logic;
SIGNAL \crc0|xor1|y~combout\ : std_logic;
SIGNAL \crc0|ff1|Q~q\ : std_logic;
SIGNAL \crc0|xor2|y~combout\ : std_logic;
SIGNAL \crc0|ff2|Q~q\ : std_logic;
SIGNAL \or7|y~1_combout\ : std_logic;
SIGNAL \or7|y~0_combout\ : std_logic;
SIGNAL \or7|y~combout\ : std_logic;
SIGNAL \ff|Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_serialIn <= serialIn;
ww_clk <= clk;
ww_nRst <= nRst;
error <= ww_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\nRst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nRst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X12_Y0_N9
\error~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff|Q~q\,
	devoe => ww_devoe,
	o => \error~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X15_Y2_N8
\cnt|ff0|nQ~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|ff0|nQ~0_combout\ = !\cnt|ff0|nQ~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt|ff0|nQ~q\,
	combout => \cnt|ff0|nQ~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\nRst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nRst,
	o => \nRst~input_o\);

-- Location: CLKCTRL_G19
\nRst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nRst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nRst~inputclkctrl_outclk\);

-- Location: FF_X15_Y2_N9
\cnt|ff0|nQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt|ff0|nQ~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|ff0|nQ~q\);

-- Location: LCCOMB_X15_Y2_N20
\cnt|ff0|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|ff0|Q~0_combout\ = !\cnt|ff0|nQ~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt|ff0|nQ~q\,
	combout => \cnt|ff0|Q~0_combout\);

-- Location: FF_X15_Y2_N21
\cnt|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt|ff0|Q~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|ff0|Q~q\);

-- Location: LCCOMB_X15_Y2_N28
\cnt|ff1|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|ff1|Q~0_combout\ = \cnt|ff0|Q~q\ $ (\cnt|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ff0|Q~q\,
	datac => \cnt|ff1|Q~q\,
	combout => \cnt|ff1|Q~0_combout\);

-- Location: FF_X15_Y2_N23
\cnt|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \cnt|ff1|Q~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|ff1|Q~q\);

-- Location: LCCOMB_X15_Y2_N14
\cnt|ff2|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|ff2|Q~0_combout\ = \cnt|ff2|Q~q\ $ (((\cnt|ff1|Q~q\ & \cnt|ff0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ff1|Q~q\,
	datac => \cnt|ff0|Q~q\,
	datad => \cnt|ff2|Q~q\,
	combout => \cnt|ff2|Q~0_combout\);

-- Location: LCCOMB_X15_Y2_N18
\cnt|ff2|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|ff2|Q~feeder_combout\ = \cnt|ff2|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt|ff2|Q~0_combout\,
	combout => \cnt|ff2|Q~feeder_combout\);

-- Location: FF_X15_Y2_N19
\cnt|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cnt|ff2|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|ff2|Q~q\);

-- Location: LCCOMB_X15_Y2_N12
\cnt|ff3|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|ff3|Q~0_combout\ = \cnt|ff3|Q~q\ $ (((\cnt|ff1|Q~q\ & (\cnt|ff2|Q~q\ & \cnt|ff0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ff1|Q~q\,
	datab => \cnt|ff2|Q~q\,
	datac => \cnt|ff0|Q~q\,
	datad => \cnt|ff3|Q~q\,
	combout => \cnt|ff3|Q~0_combout\);

-- Location: LCCOMB_X15_Y2_N10
\cnt|ff3|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|ff3|Q~feeder_combout\ = \cnt|ff3|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt|ff3|Q~0_combout\,
	combout => \cnt|ff3|Q~feeder_combout\);

-- Location: FF_X15_Y2_N11
\cnt|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cnt|ff3|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|ff3|Q~q\);

-- Location: LCCOMB_X15_Y2_N16
\cnt|ad3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|ad3|y~combout\ = (\cnt|ff3|Q~q\ & (\cnt|ff0|Q~q\ & (\cnt|ff1|Q~q\ & \cnt|ff2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ff3|Q~q\,
	datab => \cnt|ff0|Q~q\,
	datac => \cnt|ff1|Q~q\,
	datad => \cnt|ff2|Q~q\,
	combout => \cnt|ad3|y~combout\);

-- Location: LCCOMB_X15_Y2_N30
\cnt|ff4|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt|ff4|Q~0_combout\ = \cnt|ad3|y~combout\ $ (\cnt|ff4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ad3|y~combout\,
	datac => \cnt|ff4|Q~q\,
	combout => \cnt|ff4|Q~0_combout\);

-- Location: FF_X15_Y2_N31
\cnt|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \cnt|ff4|Q~0_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|ff4|Q~q\);

-- Location: LCCOMB_X15_Y2_N26
\cmp|and3|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp|and3|y~0_combout\ = ((\cnt|ff0|Q~q\) # ((\cnt|ff1|Q~q\) # (\cnt|ff2|Q~q\))) # (!\cnt|ff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ff3|Q~q\,
	datab => \cnt|ff0|Q~q\,
	datac => \cnt|ff1|Q~q\,
	datad => \cnt|ff2|Q~q\,
	combout => \cmp|and3|y~0_combout\);

-- Location: LCCOMB_X15_Y2_N24
\cmp|and3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cmp|and3|y~combout\ = LCELL((\cnt|ff4|Q~q\ & !\cmp|and3|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt|ff4|Q~q\,
	datad => \cmp|and3|y~0_combout\,
	combout => \cmp|and3|y~combout\);

-- Location: IOIBUF_X14_Y0_N1
\serialIn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_serialIn,
	o => \serialIn~input_o\);

-- Location: LCCOMB_X14_Y2_N30
\crc0|xor3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc0|xor3|y~combout\ = \serialIn~input_o\ $ (\crc0|ff7|Q~q\ $ (\crc0|ff2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialIn~input_o\,
	datac => \crc0|ff7|Q~q\,
	datad => \crc0|ff2|Q~q\,
	combout => \crc0|xor3|y~combout\);

-- Location: FF_X14_Y2_N31
\crc0|ff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc0|xor3|y~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc0|ff3|Q~q\);

-- Location: LCCOMB_X14_Y2_N12
\crc0|ff4|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc0|ff4|Q~feeder_combout\ = \crc0|ff3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \crc0|ff3|Q~q\,
	combout => \crc0|ff4|Q~feeder_combout\);

-- Location: FF_X14_Y2_N13
\crc0|ff4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc0|ff4|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc0|ff4|Q~q\);

-- Location: LCCOMB_X14_Y2_N6
\crc0|xor4|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc0|xor4|y~combout\ = \serialIn~input_o\ $ (\crc0|ff7|Q~q\ $ (\crc0|ff4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialIn~input_o\,
	datac => \crc0|ff7|Q~q\,
	datad => \crc0|ff4|Q~q\,
	combout => \crc0|xor4|y~combout\);

-- Location: FF_X14_Y2_N7
\crc0|ff5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc0|xor4|y~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc0|ff5|Q~q\);

-- Location: LCCOMB_X14_Y2_N8
\crc0|ff6|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc0|ff6|Q~feeder_combout\ = \crc0|ff5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc0|ff5|Q~q\,
	combout => \crc0|ff6|Q~feeder_combout\);

-- Location: FF_X14_Y2_N9
\crc0|ff6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc0|ff6|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc0|ff6|Q~q\);

-- Location: LCCOMB_X14_Y2_N22
\crc0|ff7|Q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc0|ff7|Q~feeder_combout\ = \crc0|ff6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \crc0|ff6|Q~q\,
	combout => \crc0|ff7|Q~feeder_combout\);

-- Location: FF_X14_Y2_N23
\crc0|ff7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc0|ff7|Q~feeder_combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc0|ff7|Q~q\);

-- Location: LCCOMB_X14_Y2_N26
\crc0|xor0|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc0|xor0|y~combout\ = \crc0|ff7|Q~q\ $ (\serialIn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \crc0|ff7|Q~q\,
	datad => \serialIn~input_o\,
	combout => \crc0|xor0|y~combout\);

-- Location: FF_X14_Y2_N27
\crc0|ff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc0|xor0|y~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc0|ff0|Q~q\);

-- Location: LCCOMB_X14_Y2_N28
\crc0|xor1|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc0|xor1|y~combout\ = \serialIn~input_o\ $ (\crc0|ff0|Q~q\ $ (\crc0|ff7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialIn~input_o\,
	datac => \crc0|ff0|Q~q\,
	datad => \crc0|ff7|Q~q\,
	combout => \crc0|xor1|y~combout\);

-- Location: FF_X14_Y2_N29
\crc0|ff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc0|xor1|y~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc0|ff1|Q~q\);

-- Location: LCCOMB_X14_Y2_N24
\crc0|xor2|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc0|xor2|y~combout\ = \serialIn~input_o\ $ (\crc0|ff7|Q~q\ $ (\crc0|ff1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serialIn~input_o\,
	datac => \crc0|ff7|Q~q\,
	datad => \crc0|ff1|Q~q\,
	combout => \crc0|xor2|y~combout\);

-- Location: FF_X14_Y2_N25
\crc0|ff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \crc0|xor2|y~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc0|ff2|Q~q\);

-- Location: LCCOMB_X14_Y2_N4
\or7|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \or7|y~1_combout\ = (\crc0|ff0|Q~q\) # (\crc0|ff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \crc0|ff0|Q~q\,
	datad => \crc0|ff1|Q~q\,
	combout => \or7|y~1_combout\);

-- Location: LCCOMB_X14_Y2_N2
\or7|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \or7|y~0_combout\ = (\crc0|ff7|Q~q\) # ((\crc0|ff5|Q~q\) # ((\crc0|ff6|Q~q\) # (\crc0|ff4|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc0|ff7|Q~q\,
	datab => \crc0|ff5|Q~q\,
	datac => \crc0|ff6|Q~q\,
	datad => \crc0|ff4|Q~q\,
	combout => \or7|y~0_combout\);

-- Location: LCCOMB_X14_Y2_N0
\or7|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \or7|y~combout\ = (\crc0|ff2|Q~q\) # ((\crc0|ff3|Q~q\) # ((\or7|y~1_combout\) # (\or7|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc0|ff2|Q~q\,
	datab => \crc0|ff3|Q~q\,
	datac => \or7|y~1_combout\,
	datad => \or7|y~0_combout\,
	combout => \or7|y~combout\);

-- Location: FF_X14_Y2_N1
\ff|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmp|and3|y~combout\,
	d => \or7|y~combout\,
	clrn => \nRst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff|Q~q\);

ww_error <= \error~output_o\;
END structure;


