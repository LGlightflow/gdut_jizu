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
-- Generated on "10/15/2022 18:29:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          f_adder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY f_adder_vhd_vec_tst IS
END f_adder_vhd_vec_tst;
ARCHITECTURE f_adder_arch OF f_adder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ain : STD_LOGIC;
SIGNAL bin : STD_LOGIC;
SIGNAL cin : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
SIGNAL sum : STD_LOGIC;
COMPONENT f_adder
	PORT (
	ain : IN STD_LOGIC;
	bin : IN STD_LOGIC;
	cin : IN STD_LOGIC;
	cout : OUT STD_LOGIC;
	sum : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : f_adder
	PORT MAP (
-- list connections between master ports and signals
	ain => ain,
	bin => bin,
	cin => cin,
	cout => cout,
	sum => sum
	);

-- ain
t_prcs_ain: PROCESS
BEGIN
	ain <= '0';
	WAIT FOR 240000 ps;
	ain <= '1';
	WAIT FOR 240000 ps;
	ain <= '0';
WAIT;
END PROCESS t_prcs_ain;

-- bin
t_prcs_bin: PROCESS
BEGIN
	bin <= '0';
	WAIT FOR 120000 ps;
	bin <= '1';
	WAIT FOR 120000 ps;
	bin <= '0';
	WAIT FOR 120000 ps;
	bin <= '1';
	WAIT FOR 120000 ps;
	bin <= '0';
WAIT;
END PROCESS t_prcs_bin;

-- cin
t_prcs_cin: PROCESS
BEGIN
	cin <= '0';
	WAIT FOR 60000 ps;
	cin <= '1';
	WAIT FOR 60000 ps;
	cin <= '0';
	WAIT FOR 60000 ps;
	cin <= '1';
	WAIT FOR 60000 ps;
	cin <= '0';
	WAIT FOR 60000 ps;
	cin <= '1';
	WAIT FOR 60000 ps;
	cin <= '0';
	WAIT FOR 70000 ps;
	cin <= '1';
	WAIT FOR 50000 ps;
	cin <= '0';
WAIT;
END PROCESS t_prcs_cin;
END f_adder_arch;
