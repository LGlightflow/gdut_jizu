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
-- Generated on "10/22/2022 09:51:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SINGT
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SINGT_vhd_vec_tst IS
END SINGT_vhd_vec_tst;
ARCHITECTURE SINGT_arch OF SINGT_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DOUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT SINGT
	PORT (
	CLK : IN STD_LOGIC;
	DOUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SINGT
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DOUT => DOUT
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 24
	LOOP
		CLK <= '0';
		WAIT FOR 20000 ps;
		CLK <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;
END SINGT_arch;
