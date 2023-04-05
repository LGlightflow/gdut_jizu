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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"
-- CREATED		"Sun Nov 13 23:02:46 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 
-- use the following when compiling in Quartus Prime
--LIBRARY lpm;
--USE lpm.lpm_components.all; 

-- use the following when compiling in third party tools --
-- add lpm_pack.vhd from the Quartus Prime library
LIBRARY work;
USE work.lpm_components.all;

ENTITY lpm_rom_0 IS 
PORT 
( 
	inclock	:	IN	 STD_LOGIC;
	address	:	IN	 STD_LOGIC_VECTOR(7 DOWNTO 0);
	q	:	OUT	 STD_LOGIC_VECTOR(31 DOWNTO 0)
); 
END lpm_rom_0;

ARCHITECTURE bdf_type OF lpm_rom_0 IS 
BEGIN 

-- instantiate LPM macrofunction 

b2v_inst13 : lpm_rom
GENERIC MAP(LPM_ADDRESS_CONTROL => "REGISTERED",
			LPM_FILE => "rom.mif",
			LPM_NUMWORDS => 256,
			LPM_OUTDATA => "UNREGISTERED",
			LPM_WIDTH => 32,
			LPM_WIDTHAD => 8)
PORT MAP(inclock => inclock,
		 address => address,
		 q => q);

END bdf_type; 