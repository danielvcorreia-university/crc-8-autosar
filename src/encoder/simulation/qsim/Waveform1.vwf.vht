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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/09/2020 17:57:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          serialChecker
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY serialChecker_vhd_vec_tst IS
END serialChecker_vhd_vec_tst;
ARCHITECTURE serialChecker_arch OF serialChecker_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL error : STD_LOGIC;
SIGNAL nRst : STD_LOGIC;
SIGNAL serialIn : STD_LOGIC;
COMPONENT serialChecker
	PORT (
	clk : IN STD_LOGIC;
	error : OUT STD_LOGIC;
	nRst : IN STD_LOGIC;
	serialIn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : serialChecker
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	error => error,
	nRst => nRst,
	serialIn => serialIn
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- nRst
t_prcs_nRst: PROCESS
BEGIN
	nRst <= '0';
	WAIT FOR 13348 ps;
	nRst <= '1';
	WAIT FOR 300472 ps;
	nRst <= '0';
WAIT;
END PROCESS t_prcs_nRst;

-- serialIn
t_prcs_serialIn: PROCESS
BEGIN
	serialIn <= '0';
	WAIT FOR 12460 ps;
	serialIn <= '1';
	WAIT FOR 5523 ps;
	serialIn <= '0';
	WAIT FOR 25275 ps;
	serialIn <= '1';
	WAIT FOR 4319 ps;
	serialIn <= '0';
	WAIT FOR 25205 ps;
	serialIn <= '1';
	WAIT FOR 16072 ps;
	serialIn <= '0';
	WAIT FOR 23434 ps;
	serialIn <= '1';
	WAIT FOR 45454 ps;
	serialIn <= '0';
	WAIT FOR 24568 ps;
	serialIn <= '1';
	WAIT FOR 5734 ps;
	serialIn <= '0';
	WAIT FOR 14727 ps;
	serialIn <= '1';
	WAIT FOR 35187 ps;
	serialIn <= '0';
	WAIT FOR 6565 ps;
	serialIn <= '1';
	WAIT FOR 6817 ps;
	serialIn <= '0';
WAIT;
END PROCESS t_prcs_serialIn;
END serialChecker_arch;
