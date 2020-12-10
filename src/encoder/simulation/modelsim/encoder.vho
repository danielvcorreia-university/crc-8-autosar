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

-- DATE "12/10/2020 15:28:58"

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


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	encoder IS
    PORT (
	data_in : IN std_logic_vector(15 DOWNTO 0);
	data_out : BUFFER std_logic_vector(23 DOWNTO 0)
	);
END encoder;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[9]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[10]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[11]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[12]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[13]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[14]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[15]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[16]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[17]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[18]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[19]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[20]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[21]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[22]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[23]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(23 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \data_out[8]~output_o\ : std_logic;
SIGNAL \data_out[9]~output_o\ : std_logic;
SIGNAL \data_out[10]~output_o\ : std_logic;
SIGNAL \data_out[11]~output_o\ : std_logic;
SIGNAL \data_out[12]~output_o\ : std_logic;
SIGNAL \data_out[13]~output_o\ : std_logic;
SIGNAL \data_out[14]~output_o\ : std_logic;
SIGNAL \data_out[15]~output_o\ : std_logic;
SIGNAL \data_out[16]~output_o\ : std_logic;
SIGNAL \data_out[17]~output_o\ : std_logic;
SIGNAL \data_out[18]~output_o\ : std_logic;
SIGNAL \data_out[19]~output_o\ : std_logic;
SIGNAL \data_out[20]~output_o\ : std_logic;
SIGNAL \data_out[21]~output_o\ : std_logic;
SIGNAL \data_out[22]~output_o\ : std_logic;
SIGNAL \data_out[23]~output_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \d|y~combout\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \g|XOr2|y~0_combout\ : std_logic;
SIGNAL \r0|XOr4|XOr2|y~4_combout\ : std_logic;
SIGNAL \r0|XOr4|XOr2|y~5_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \b|y~combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \c|y~combout\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \j|XOr2|y~combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \r1|XOr2|y~combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \a|y~combout\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \k|XOr2|y~combout\ : std_logic;
SIGNAL \r2|XOr2|y~0_combout\ : std_logic;
SIGNAL \i|XOr2|y~0_combout\ : std_logic;
SIGNAL \r3|XOr3|y~combout\ : std_logic;
SIGNAL \r4|y~combout\ : std_logic;
SIGNAL \f|y~combout\ : std_logic;
SIGNAL \r5|XOr3|y~0_combout\ : std_logic;
SIGNAL \r6|y~combout\ : std_logic;
SIGNAL \r7|XOr2|y~0_combout\ : std_logic;
SIGNAL \r7|XOr2|y~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y22_N9
\data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|XOr4|XOr2|y~5_combout\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1|XOr2|y~combout\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2|XOr2|y~0_combout\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r3|XOr3|y~combout\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\data_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r4|y~combout\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\data_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r5|XOr3|y~0_combout\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\data_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r6|y~combout\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\data_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r7|XOr2|y~1_combout\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\data_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[0]~input_o\,
	devoe => ww_devoe,
	o => \data_out[8]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\data_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[1]~input_o\,
	devoe => ww_devoe,
	o => \data_out[9]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\data_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[2]~input_o\,
	devoe => ww_devoe,
	o => \data_out[10]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\data_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[3]~input_o\,
	devoe => ww_devoe,
	o => \data_out[11]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\data_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[4]~input_o\,
	devoe => ww_devoe,
	o => \data_out[12]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\data_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[5]~input_o\,
	devoe => ww_devoe,
	o => \data_out[13]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\data_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[6]~input_o\,
	devoe => ww_devoe,
	o => \data_out[14]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\data_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[7]~input_o\,
	devoe => ww_devoe,
	o => \data_out[15]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\data_out[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[8]~input_o\,
	devoe => ww_devoe,
	o => \data_out[16]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\data_out[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[9]~input_o\,
	devoe => ww_devoe,
	o => \data_out[17]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\data_out[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[10]~input_o\,
	devoe => ww_devoe,
	o => \data_out[18]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\data_out[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[11]~input_o\,
	devoe => ww_devoe,
	o => \data_out[19]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\data_out[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[12]~input_o\,
	devoe => ww_devoe,
	o => \data_out[20]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\data_out[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[13]~input_o\,
	devoe => ww_devoe,
	o => \data_out[21]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\data_out[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[14]~input_o\,
	devoe => ww_devoe,
	o => \data_out[22]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\data_out[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_in[15]~input_o\,
	devoe => ww_devoe,
	o => \data_out[23]~output_o\);

-- Location: IOIBUF_X33_Y11_N8
\data_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\data_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X32_Y25_N10
\d|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d|y~combout\ = \data_in[5]~input_o\ $ (\data_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[5]~input_o\,
	datac => \data_in[7]~input_o\,
	combout => \d|y~combout\);

-- Location: IOIBUF_X33_Y16_N1
\data_in[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\data_in[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: IOIBUF_X20_Y31_N1
\data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X24_Y31_N1
\data_in[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: IOIBUF_X29_Y31_N1
\data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\data_in[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\data_in[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\data_in[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: LCCOMB_X32_Y25_N28
\g|XOr2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g|XOr2|y~0_combout\ = \data_in[12]~input_o\ $ (\data_in[11]~input_o\ $ (\data_in[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[12]~input_o\,
	datac => \data_in[11]~input_o\,
	datad => \data_in[15]~input_o\,
	combout => \g|XOr2|y~0_combout\);

-- Location: LCCOMB_X32_Y25_N14
\r0|XOr4|XOr2|y~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r0|XOr4|XOr2|y~4_combout\ = \data_in[0]~input_o\ $ (\data_in[8]~input_o\ $ (\data_in[3]~input_o\ $ (\g|XOr2|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datab => \data_in[8]~input_o\,
	datac => \data_in[3]~input_o\,
	datad => \g|XOr2|y~0_combout\,
	combout => \r0|XOr4|XOr2|y~4_combout\);

-- Location: LCCOMB_X32_Y25_N12
\r0|XOr4|XOr2|y~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r0|XOr4|XOr2|y~5_combout\ = \d|y~combout\ $ (\data_in[10]~input_o\ $ (\data_in[9]~input_o\ $ (\r0|XOr4|XOr2|y~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|y~combout\,
	datab => \data_in[10]~input_o\,
	datac => \data_in[9]~input_o\,
	datad => \r0|XOr4|XOr2|y~4_combout\,
	combout => \r0|XOr4|XOr2|y~5_combout\);

-- Location: IOIBUF_X33_Y12_N1
\data_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LCCOMB_X32_Y25_N26
\b|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \b|y~combout\ = \data_in[0]~input_o\ $ (\data_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[0]~input_o\,
	datad => \data_in[4]~input_o\,
	combout => \b|y~combout\);

-- Location: IOIBUF_X14_Y31_N8
\data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X27_Y27_N8
\c|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c|y~combout\ = \data_in[1]~input_o\ $ (\data_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in[1]~input_o\,
	datad => \data_in[3]~input_o\,
	combout => \c|y~combout\);

-- Location: IOIBUF_X33_Y27_N8
\data_in[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: LCCOMB_X32_Y25_N16
\j|XOr2|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \j|XOr2|y~combout\ = \data_in[5]~input_o\ $ (\c|y~combout\ $ (\data_in[7]~input_o\ $ (\data_in[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[5]~input_o\,
	datab => \c|y~combout\,
	datac => \data_in[7]~input_o\,
	datad => \data_in[13]~input_o\,
	combout => \j|XOr2|y~combout\);

-- Location: IOIBUF_X22_Y31_N1
\data_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X32_Y25_N20
\r1|XOr2|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r1|XOr2|y~combout\ = \b|y~combout\ $ (\j|XOr2|y~combout\ $ (\data_in[6]~input_o\ $ (\data_in[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|y~combout\,
	datab => \j|XOr2|y~combout\,
	datac => \data_in[6]~input_o\,
	datad => \data_in[15]~input_o\,
	combout => \r1|XOr2|y~combout\);

-- Location: IOIBUF_X31_Y31_N8
\data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X32_Y25_N8
\a|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a|y~combout\ = \data_in[9]~input_o\ $ (\data_in[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[9]~input_o\,
	datac => \data_in[10]~input_o\,
	combout => \a|y~combout\);

-- Location: IOIBUF_X33_Y10_N1
\data_in[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: LCCOMB_X32_Y25_N6
\k|XOr2|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \k|XOr2|y~combout\ = \data_in[2]~input_o\ $ (\c|y~combout\ $ (\a|y~combout\ $ (\data_in[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datab => \c|y~combout\,
	datac => \a|y~combout\,
	datad => \data_in[14]~input_o\,
	combout => \k|XOr2|y~combout\);

-- Location: LCCOMB_X32_Y25_N24
\r2|XOr2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r2|XOr2|y~0_combout\ = \b|y~combout\ $ (\g|XOr2|y~0_combout\ $ (\data_in[6]~input_o\ $ (\k|XOr2|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|y~combout\,
	datab => \g|XOr2|y~0_combout\,
	datac => \data_in[6]~input_o\,
	datad => \k|XOr2|y~combout\,
	combout => \r2|XOr2|y~0_combout\);

-- Location: LCCOMB_X32_Y25_N18
\i|XOr2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i|XOr2|y~0_combout\ = \data_in[0]~input_o\ $ (\data_in[4]~input_o\ $ (\data_in[9]~input_o\ $ (\data_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datab => \data_in[4]~input_o\,
	datac => \data_in[9]~input_o\,
	datad => \data_in[2]~input_o\,
	combout => \i|XOr2|y~0_combout\);

-- Location: LCCOMB_X27_Y27_N10
\r3|XOr3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r3|XOr3|y~combout\ = \data_in[1]~input_o\ $ (\data_in[8]~input_o\ $ (\i|XOr2|y~0_combout\ $ (\data_in[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datab => \data_in[8]~input_o\,
	datac => \i|XOr2|y~0_combout\,
	datad => \data_in[13]~input_o\,
	combout => \r3|XOr3|y~combout\);

-- Location: LCCOMB_X31_Y25_N16
\r4|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r4|y~combout\ = \k|XOr2|y~combout\ $ (\data_in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k|XOr2|y~combout\,
	datac => \data_in[5]~input_o\,
	combout => \r4|y~combout\);

-- Location: LCCOMB_X32_Y25_N4
\f|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \f|y~combout\ = \data_in[6]~input_o\ $ (\data_in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[6]~input_o\,
	datac => \data_in[8]~input_o\,
	combout => \f|y~combout\);

-- Location: LCCOMB_X32_Y25_N22
\r5|XOr3|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r5|XOr3|y~0_combout\ = \d|y~combout\ $ (\i|XOr2|y~0_combout\ $ (\f|y~combout\ $ (\data_in[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|y~combout\,
	datab => \i|XOr2|y~0_combout\,
	datac => \f|y~combout\,
	datad => \data_in[12]~input_o\,
	combout => \r5|XOr3|y~0_combout\);

-- Location: LCCOMB_X32_Y25_N30
\r6|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r6|y~combout\ = \data_in[9]~input_o\ $ (\f|y~combout\ $ (\data_in[10]~input_o\ $ (\j|XOr2|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[9]~input_o\,
	datab => \f|y~combout\,
	datac => \data_in[10]~input_o\,
	datad => \j|XOr2|y~combout\,
	combout => \r6|y~combout\);

-- Location: LCCOMB_X32_Y25_N0
\r7|XOr2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r7|XOr2|y~0_combout\ = \data_in[14]~input_o\ $ (\data_in[4]~input_o\ $ (\data_in[7]~input_o\ $ (\data_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[14]~input_o\,
	datab => \data_in[4]~input_o\,
	datac => \data_in[7]~input_o\,
	datad => \data_in[2]~input_o\,
	combout => \r7|XOr2|y~0_combout\);

-- Location: LCCOMB_X32_Y25_N2
\r7|XOr2|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r7|XOr2|y~1_combout\ = \data_in[11]~input_o\ $ (\a|y~combout\ $ (\f|y~combout\ $ (\r7|XOr2|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[11]~input_o\,
	datab => \a|y~combout\,
	datac => \f|y~combout\,
	datad => \r7|XOr2|y~0_combout\,
	combout => \r7|XOr2|y~1_combout\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_data_out(8) <= \data_out[8]~output_o\;

ww_data_out(9) <= \data_out[9]~output_o\;

ww_data_out(10) <= \data_out[10]~output_o\;

ww_data_out(11) <= \data_out[11]~output_o\;

ww_data_out(12) <= \data_out[12]~output_o\;

ww_data_out(13) <= \data_out[13]~output_o\;

ww_data_out(14) <= \data_out[14]~output_o\;

ww_data_out(15) <= \data_out[15]~output_o\;

ww_data_out(16) <= \data_out[16]~output_o\;

ww_data_out(17) <= \data_out[17]~output_o\;

ww_data_out(18) <= \data_out[18]~output_o\;

ww_data_out(19) <= \data_out[19]~output_o\;

ww_data_out(20) <= \data_out[20]~output_o\;

ww_data_out(21) <= \data_out[21]~output_o\;

ww_data_out(22) <= \data_out[22]~output_o\;

ww_data_out(23) <= \data_out[23]~output_o\;
END structure;


