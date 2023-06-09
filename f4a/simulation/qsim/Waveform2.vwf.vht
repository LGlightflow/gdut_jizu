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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/05/2022 09:47:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          program_counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY program_counter_vhd_vec_tst IS
END program_counter_vhd_vec_tst;
ARCHITECTURE program_counter_arch OF program_counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL dBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en_A : STD_LOGIC;
SIGNAL inc : STD_LOGIC;
SIGNAL ld : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT program_counter
	PORT (
	aBus : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	dBus : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	en_A : IN STD_LOGIC;
	inc : IN STD_LOGIC;
	ld : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : program_counter
	PORT MAP (
-- list connections between master ports and signals
	aBus => aBus,
	clk => clk,
	dBus => dBus,
	en_A => en_A,
	inc => inc,
	ld => ld,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_clk;
-- dBus[7]
t_prcs_dBus_7: PROCESS
BEGIN
	dBus(7) <= '0';
WAIT;
END PROCESS t_prcs_dBus_7;
-- dBus[6]
t_prcs_dBus_6: PROCESS
BEGIN
	dBus(6) <= '0';
	WAIT FOR 40000 ps;
	dBus(6) <= '1';
	WAIT FOR 40000 ps;
	dBus(6) <= '0';
	WAIT FOR 40000 ps;
	dBus(6) <= '1';
	WAIT FOR 40000 ps;
	dBus(6) <= '0';
WAIT;
END PROCESS t_prcs_dBus_6;
-- dBus[5]
t_prcs_dBus_5: PROCESS
BEGIN
	dBus(5) <= '0';
WAIT;
END PROCESS t_prcs_dBus_5;
-- dBus[4]
t_prcs_dBus_4: PROCESS
BEGIN
	dBus(4) <= '1';
	WAIT FOR 160000 ps;
	dBus(4) <= '0';
WAIT;
END PROCESS t_prcs_dBus_4;
-- dBus[3]
t_prcs_dBus_3: PROCESS
BEGIN
	dBus(3) <= '1';
	WAIT FOR 160000 ps;
	dBus(3) <= '0';
WAIT;
END PROCESS t_prcs_dBus_3;
-- dBus[2]
t_prcs_dBus_2: PROCESS
BEGIN
	dBus(2) <= '0';
	WAIT FOR 40000 ps;
	dBus(2) <= '1';
	WAIT FOR 40000 ps;
	dBus(2) <= '0';
	WAIT FOR 40000 ps;
	dBus(2) <= '1';
	WAIT FOR 40000 ps;
	dBus(2) <= '0';
WAIT;
END PROCESS t_prcs_dBus_2;
-- dBus[1]
t_prcs_dBus_1: PROCESS
BEGIN
	dBus(1) <= '0';
WAIT;
END PROCESS t_prcs_dBus_1;
-- dBus[0]
t_prcs_dBus_0: PROCESS
BEGIN
	dBus(0) <= '0';
	WAIT FOR 150000 ps;
	dBus(0) <= '1';
	WAIT FOR 10000 ps;
	dBus(0) <= '0';
WAIT;
END PROCESS t_prcs_dBus_0;

-- en_A
t_prcs_en_A: PROCESS
BEGIN
LOOP
	en_A <= '0';
	WAIT FOR 20000 ps;
	en_A <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en_A;

-- inc
t_prcs_inc: PROCESS
BEGIN
	inc <= '1';
	WAIT FOR 10000 ps;
	inc <= '0';
	WAIT FOR 20000 ps;
	inc <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 23
	LOOP
		inc <= '0';
		WAIT FOR 20000 ps;
		inc <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	inc <= '0';
	WAIT FOR 20000 ps;
	inc <= '1';
WAIT;
END PROCESS t_prcs_inc;

-- ld
t_prcs_ld: PROCESS
BEGIN
LOOP
	ld <= '0';
	WAIT FOR 20000 ps;
	ld <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ld;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 30000 ps;
	FOR i IN 1 TO 16
	LOOP
		reset <= '0';
		WAIT FOR 30000 ps;
		reset <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END program_counter_arch;
