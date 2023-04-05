-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "10/15/2022 12:46:02"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux21a IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	s : IN std_logic;
	y : BUFFER std_logic
	);
END mux21a;

-- Design Ports Information
-- y	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux21a IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_s~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_s <= s;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_s~input_o\ <= NOT \s~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;

-- Location: IOOBUF_X6_Y0_N19
\y~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~0_combout\,
	devoe => ww_devoe,
	o => ww_y);

-- Location: IOIBUF_X6_Y0_N35
\s~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: MLABCELL_X6_Y1_N0
\y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~0_combout\ = ( \a~input_o\ & ( (!\s~input_o\) # (\b~input_o\) ) ) # ( !\a~input_o\ & ( (\s~input_o\ & \b~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~input_o\,
	datac => \ALT_INV_b~input_o\,
	dataf => \ALT_INV_a~input_o\,
	combout => \y~0_combout\);

-- Location: LABCELL_X80_Y37_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


