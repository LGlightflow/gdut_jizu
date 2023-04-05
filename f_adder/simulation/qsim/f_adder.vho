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

-- DATE "10/15/2022 18:29:37"

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

ENTITY 	f_adder IS
    PORT (
	ain : IN std_logic;
	bin : IN std_logic;
	cin : IN std_logic;
	cout : OUT std_logic;
	sum : OUT std_logic
	);
END f_adder;

-- Design Ports Information
-- cout	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ain	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF f_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ain : std_logic;
SIGNAL ww_bin : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_sum : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \ain~input_o\ : std_logic;
SIGNAL \bin~input_o\ : std_logic;
SIGNAL \u3|c~combout\ : std_logic;
SIGNAL \u2|Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_cin~input_o\ : std_logic;
SIGNAL \ALT_INV_bin~input_o\ : std_logic;
SIGNAL \ALT_INV_ain~input_o\ : std_logic;

BEGIN

ww_ain <= ain;
ww_bin <= bin;
ww_cin <= cin;
cout <= ww_cout;
sum <= ww_sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cin~input_o\ <= NOT \cin~input_o\;
\ALT_INV_bin~input_o\ <= NOT \bin~input_o\;
\ALT_INV_ain~input_o\ <= NOT \ain~input_o\;

-- Location: IOOBUF_X2_Y0_N42
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|c~combout\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOOBUF_X4_Y0_N53
\sum~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_sum);

-- Location: IOIBUF_X4_Y0_N1
\cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\ain~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ain,
	o => \ain~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\bin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin,
	o => \bin~input_o\);

-- Location: MLABCELL_X3_Y1_N0
\u3|c\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|c~combout\ = ( \bin~input_o\ & ( (\ain~input_o\) # (\cin~input_o\) ) ) # ( !\bin~input_o\ & ( (\cin~input_o\ & \ain~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cin~input_o\,
	datac => \ALT_INV_ain~input_o\,
	dataf => \ALT_INV_bin~input_o\,
	combout => \u3|c~combout\);

-- Location: MLABCELL_X3_Y1_N39
\u2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u2|Mux0~0_combout\ = ( \bin~input_o\ & ( !\ain~input_o\ $ (\cin~input_o\) ) ) # ( !\bin~input_o\ & ( !\ain~input_o\ $ (!\cin~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ain~input_o\,
	datac => \ALT_INV_cin~input_o\,
	dataf => \ALT_INV_bin~input_o\,
	combout => \u2|Mux0~0_combout\);

-- Location: LABCELL_X35_Y17_N0
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


