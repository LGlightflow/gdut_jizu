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
-- Generated on "11/14/2022 12:37:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          f4b
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY f4b_vhd_vec_tst IS
END f4b_vhd_vec_tst;
ARCHITECTURE f4b_arch OF f4b_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ACC : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL BR_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL BRIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL CAROUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clkMBR : STD_LOGIC;
SIGNAL CONTROL : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL IROUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MAROUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RAM_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RAMIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT f4b
	PORT (
	ACC : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	BR_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	BRIN : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	CAROUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	clkMBR : IN STD_LOGIC;
	CONTROL : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	IROUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MAROUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RAM_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RAMIN : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : f4b
	PORT MAP (
-- list connections between master ports and signals
	ACC => ACC,
	BR_OUT => BR_OUT,
	BRIN => BRIN,
	CAROUT => CAROUT,
	clk => clk,
	clkMBR => clkMBR,
	CONTROL => CONTROL,
	IROUT => IROUT,
	MAROUT => MAROUT,
	PC => PC,
	RAM_OUT => RAM_OUT,
	RAMIN => RAMIN,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- clkMBR
t_prcs_clkMBR: PROCESS
BEGIN
LOOP
	clkMBR <= '0';
	WAIT FOR 10000 ps;
	clkMBR <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clkMBR;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
END f4b_arch;
