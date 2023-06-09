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
-- Generated on "11/05/2022 10:00:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          accumulator
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY accumulator_vhd_vec_tst IS
END accumulator_vhd_vec_tst;
ARCHITECTURE accumulator_arch OF accumulator_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aluD : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL dBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en_D : STD_LOGIC;
SIGNAL ld : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL selAlu : STD_LOGIC;
COMPONENT accumulator
	PORT (
	aluD : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	dBus : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	en_D : IN STD_LOGIC;
	ld : IN STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	selAlu : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : accumulator
	PORT MAP (
-- list connections between master ports and signals
	aluD => aluD,
	clk => clk,
	dBus => dBus,
	en_D => en_D,
	ld => ld,
	q => q,
	reset => reset,
	selAlu => selAlu
	);
-- aluD[7]
t_prcs_aluD_7: PROCESS
BEGIN
	aluD(7) <= '0';
WAIT;
END PROCESS t_prcs_aluD_7;
-- aluD[6]
t_prcs_aluD_6: PROCESS
BEGIN
	aluD(6) <= '0';
WAIT;
END PROCESS t_prcs_aluD_6;
-- aluD[5]
t_prcs_aluD_5: PROCESS
BEGIN
	aluD(5) <= '0';
WAIT;
END PROCESS t_prcs_aluD_5;
-- aluD[4]
t_prcs_aluD_4: PROCESS
BEGIN
	aluD(4) <= '0';
WAIT;
END PROCESS t_prcs_aluD_4;
-- aluD[3]
t_prcs_aluD_3: PROCESS
BEGIN
	aluD(3) <= '0';
WAIT;
END PROCESS t_prcs_aluD_3;
-- aluD[2]
t_prcs_aluD_2: PROCESS
BEGIN
	aluD(2) <= '0';
WAIT;
END PROCESS t_prcs_aluD_2;
-- aluD[1]
t_prcs_aluD_1: PROCESS
BEGIN
	aluD(1) <= '0';
WAIT;
END PROCESS t_prcs_aluD_1;
-- aluD[0]
t_prcs_aluD_0: PROCESS
BEGIN
	aluD(0) <= '0';
WAIT;
END PROCESS t_prcs_aluD_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- dBus[7]
t_prcs_dBus_7: PROCESS
BEGIN
	dBus(7) <= '0';
	WAIT FOR 260000 ps;
	dBus(7) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_7;
-- dBus[6]
t_prcs_dBus_6: PROCESS
BEGIN
	dBus(6) <= '0';
	WAIT FOR 260000 ps;
	dBus(6) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_6;
-- dBus[5]
t_prcs_dBus_5: PROCESS
BEGIN
	dBus(5) <= '0';
	WAIT FOR 260000 ps;
	dBus(5) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_5;
-- dBus[4]
t_prcs_dBus_4: PROCESS
BEGIN
	dBus(4) <= '0';
	WAIT FOR 90000 ps;
	dBus(4) <= '1';
	WAIT FOR 90000 ps;
	dBus(4) <= '0';
	WAIT FOR 80000 ps;
	dBus(4) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_4;
-- dBus[3]
t_prcs_dBus_3: PROCESS
BEGIN
	dBus(3) <= '0';
	WAIT FOR 180000 ps;
	dBus(3) <= '1';
	WAIT FOR 80000 ps;
	dBus(3) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_3;
-- dBus[2]
t_prcs_dBus_2: PROCESS
BEGIN
	dBus(2) <= '0';
	WAIT FOR 90000 ps;
	dBus(2) <= '1';
	WAIT FOR 90000 ps;
	dBus(2) <= '0';
	WAIT FOR 80000 ps;
	dBus(2) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_2;
-- dBus[1]
t_prcs_dBus_1: PROCESS
BEGIN
	dBus(1) <= '0';
	WAIT FOR 180000 ps;
	dBus(1) <= '1';
	WAIT FOR 80000 ps;
	dBus(1) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_1;
-- dBus[0]
t_prcs_dBus_0: PROCESS
BEGIN
	dBus(0) <= '0';
	WAIT FOR 90000 ps;
	dBus(0) <= '1';
	WAIT FOR 90000 ps;
	dBus(0) <= '0';
	WAIT FOR 80000 ps;
	dBus(0) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_0;

-- en_D
t_prcs_en_D: PROCESS
BEGIN
	en_D <= '0';
WAIT;
END PROCESS t_prcs_en_D;

-- ld
t_prcs_ld: PROCESS
BEGIN
	ld <= '1';
WAIT;
END PROCESS t_prcs_ld;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- selAlu
t_prcs_selAlu: PROCESS
BEGIN
	selAlu <= '0';
	WAIT FOR 40000 ps;
	selAlu <= '1';
	WAIT FOR 60000 ps;
	selAlu <= '0';
WAIT;
END PROCESS t_prcs_selAlu;
END accumulator_arch;
