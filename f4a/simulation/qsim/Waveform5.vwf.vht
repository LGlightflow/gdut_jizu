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
-- Generated on "11/05/2022 11:04:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ram
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ram_vhd_vec_tst IS
END ram_vhd_vec_tst;
ARCHITECTURE ram_arch OF ram_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en : STD_LOGIC;
SIGNAL r_w : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT ram
	PORT (
	aBus : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dBus : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	en : IN STD_LOGIC;
	r_w : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ram
	PORT MAP (
-- list connections between master ports and signals
	aBus => aBus,
	dBus => dBus,
	en => en,
	r_w => r_w,
	reset => reset
	);

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '1';
WAIT;
END PROCESS t_prcs_en;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- r_w
t_prcs_r_w: PROCESS
BEGIN
	r_w <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 12
	LOOP
		r_w <= '0';
		WAIT FOR 40000 ps;
		r_w <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_r_w;
-- aBus[7]
t_prcs_aBus_7: PROCESS
BEGIN
	aBus(7) <= '0';
WAIT;
END PROCESS t_prcs_aBus_7;
-- aBus[6]
t_prcs_aBus_6: PROCESS
BEGIN
	aBus(6) <= '0';
WAIT;
END PROCESS t_prcs_aBus_6;
-- aBus[5]
t_prcs_aBus_5: PROCESS
BEGIN
	aBus(5) <= '0';
WAIT;
END PROCESS t_prcs_aBus_5;
-- aBus[4]
t_prcs_aBus_4: PROCESS
BEGIN
	aBus(4) <= '0';
WAIT;
END PROCESS t_prcs_aBus_4;
-- aBus[3]
t_prcs_aBus_3: PROCESS
BEGIN
	aBus(3) <= '0';
WAIT;
END PROCESS t_prcs_aBus_3;
-- aBus[2]
t_prcs_aBus_2: PROCESS
BEGIN
	aBus(2) <= '0';
	WAIT FOR 40000 ps;
	aBus(2) <= '1';
	WAIT FOR 120000 ps;
	aBus(2) <= '0';
WAIT;
END PROCESS t_prcs_aBus_2;
-- aBus[1]
t_prcs_aBus_1: PROCESS
BEGIN
	aBus(1) <= '0';
	WAIT FOR 40000 ps;
	aBus(1) <= '1';
	WAIT FOR 40000 ps;
	aBus(1) <= '0';
WAIT;
END PROCESS t_prcs_aBus_1;
-- aBus[0]
t_prcs_aBus_0: PROCESS
BEGIN
	aBus(0) <= '0';
	WAIT FOR 80000 ps;
	aBus(0) <= '1';
	WAIT FOR 80000 ps;
	aBus(0) <= '0';
WAIT;
END PROCESS t_prcs_aBus_0;
-- dBus[7]
t_prcs_dBus_7: PROCESS
BEGIN
	dBus(7) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_7;
-- dBus[6]
t_prcs_dBus_6: PROCESS
BEGIN
	dBus(6) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_6;
-- dBus[5]
t_prcs_dBus_5: PROCESS
BEGIN
	dBus(5) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_5;
-- dBus[4]
t_prcs_dBus_4: PROCESS
BEGIN
	dBus(4) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_4;
-- dBus[3]
t_prcs_dBus_3: PROCESS
BEGIN
	dBus(3) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_3;
-- dBus[2]
t_prcs_dBus_2: PROCESS
BEGIN
	dBus(2) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_2;
-- dBus[1]
t_prcs_dBus_1: PROCESS
BEGIN
	dBus(1) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_1;
-- dBus[0]
t_prcs_dBus_0: PROCESS
BEGIN
	dBus(0) <= 'Z';
WAIT;
END PROCESS t_prcs_dBus_0;
END ram_arch;
