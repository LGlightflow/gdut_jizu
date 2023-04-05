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

-- DATE "12/23/2022 23:35:30"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	f4b IS
    PORT (
	ACC : OUT std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	clkMBR : IN std_logic;
	BR_OUT : OUT std_logic_vector(15 DOWNTO 0);
	BRIN : OUT std_logic_vector(15 DOWNTO 0);
	CAROUT : OUT std_logic_vector(7 DOWNTO 0);
	CONTROL : OUT std_logic_vector(31 DOWNTO 0);
	IROUT : OUT std_logic_vector(7 DOWNTO 0);
	MAROUT : OUT std_logic_vector(7 DOWNTO 0);
	PC : OUT std_logic_vector(7 DOWNTO 0);
	RAM_OUT : OUT std_logic_vector(15 DOWNTO 0);
	RAMIN : OUT std_logic_vector(15 DOWNTO 0)
	);
END f4b;

-- Design Ports Information
-- ACC[15]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[14]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[13]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[12]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[11]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[10]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[9]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[8]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[7]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[5]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[15]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[14]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[13]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[12]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[11]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[10]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[8]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[7]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[5]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[4]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BR_OUT[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[15]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[13]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[12]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[11]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[10]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[9]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[8]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[7]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[6]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[4]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRIN[0]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[7]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[4]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[0]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[31]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[30]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[29]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[28]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[27]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[26]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[25]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[24]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[23]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[22]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[21]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[20]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[19]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[18]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[17]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[16]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[15]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[14]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[13]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[12]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[11]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[10]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[5]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[7]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[3]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[7]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[6]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[5]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[0]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[15]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[14]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[13]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[12]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[11]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[10]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[2]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[15]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[14]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[13]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[12]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[11]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[10]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[9]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[8]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[4]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMIN[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkMBR	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF f4b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ACC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clkMBR : std_logic;
SIGNAL ww_BR_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_BRIN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CAROUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CONTROL : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_IROUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MAROUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAM_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RAMIN : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|Mult0~8_AX_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|Mult0~8_AY_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst|Mult0~24\ : std_logic;
SIGNAL \inst|Mult0~25\ : std_logic;
SIGNAL \inst|Mult0~26\ : std_logic;
SIGNAL \inst|Mult0~27\ : std_logic;
SIGNAL \inst|Mult0~28\ : std_logic;
SIGNAL \inst|Mult0~29\ : std_logic;
SIGNAL \inst|Mult0~30\ : std_logic;
SIGNAL \inst|Mult0~31\ : std_logic;
SIGNAL \inst|Mult0~32\ : std_logic;
SIGNAL \inst|Mult0~33\ : std_logic;
SIGNAL \inst|Mult0~34\ : std_logic;
SIGNAL \inst|Mult0~35\ : std_logic;
SIGNAL \inst|Mult0~36\ : std_logic;
SIGNAL \inst|Mult0~37\ : std_logic;
SIGNAL \inst|Mult0~38\ : std_logic;
SIGNAL \inst|Mult0~39\ : std_logic;
SIGNAL \inst|Mult0~40\ : std_logic;
SIGNAL \inst|Mult0~41\ : std_logic;
SIGNAL \inst|Mult0~42\ : std_logic;
SIGNAL \inst|Mult0~43\ : std_logic;
SIGNAL \inst|Mult0~44\ : std_logic;
SIGNAL \inst|Mult0~45\ : std_logic;
SIGNAL \inst|Mult0~46\ : std_logic;
SIGNAL \inst|Mult0~47\ : std_logic;
SIGNAL \inst|Mult0~48\ : std_logic;
SIGNAL \inst|Mult0~49\ : std_logic;
SIGNAL \inst|Mult0~50\ : std_logic;
SIGNAL \inst|Mult0~51\ : std_logic;
SIGNAL \inst|Mult0~52\ : std_logic;
SIGNAL \inst|Mult0~53\ : std_logic;
SIGNAL \inst|Mult0~54\ : std_logic;
SIGNAL \inst|Mult0~55\ : std_logic;
SIGNAL \inst|Mult0~56\ : std_logic;
SIGNAL \inst|Mult0~57\ : std_logic;
SIGNAL \inst|Mult0~58\ : std_logic;
SIGNAL \inst|Mult0~59\ : std_logic;
SIGNAL \inst|Mult0~60\ : std_logic;
SIGNAL \inst|Mult0~61\ : std_logic;
SIGNAL \inst|Mult0~62\ : std_logic;
SIGNAL \inst|Mult0~63\ : std_logic;
SIGNAL \inst|Mult0~64\ : std_logic;
SIGNAL \inst|Mult0~65\ : std_logic;
SIGNAL \inst|Mult0~66\ : std_logic;
SIGNAL \inst|Mult0~67\ : std_logic;
SIGNAL \inst|Mult0~68\ : std_logic;
SIGNAL \inst|Mult0~69\ : std_logic;
SIGNAL \inst|Mult0~70\ : std_logic;
SIGNAL \inst|Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clkMBR~input_o\ : std_logic;
SIGNAL \clkMBR~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst7|MBR_BR[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|temp~11_combout\ : std_logic;
SIGNAL \inst7|MBR_RAM[15]~0_combout\ : std_logic;
SIGNAL \inst7|temp[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|temp~10_combout\ : std_logic;
SIGNAL \inst7|MBR_RAM[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|temp~9_combout\ : std_logic;
SIGNAL \inst7|MBR_BR[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|MBR_BR[2]~feeder_combout\ : std_logic;
SIGNAL \inst7|MBR_BR[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|MBR_BR[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|temp[8]~feeder_combout\ : std_logic;
SIGNAL \inst7|temp~7_combout\ : std_logic;
SIGNAL \inst7|temp~6_combout\ : std_logic;
SIGNAL \inst7|temp~5_combout\ : std_logic;
SIGNAL \inst7|temp~4_combout\ : std_logic;
SIGNAL \inst7|MBR_BR[9]~feeder_combout\ : std_logic;
SIGNAL \inst7|MBR_BR[11]~feeder_combout\ : std_logic;
SIGNAL \inst7|MBR_BR[12]~feeder_combout\ : std_logic;
SIGNAL \inst7|MBR_BR[13]~feeder_combout\ : std_logic;
SIGNAL \inst7|temp[13]~feeder_combout\ : std_logic;
SIGNAL \inst7|temp~2_combout\ : std_logic;
SIGNAL \inst7|MBR_RAM[13]~feeder_combout\ : std_logic;
SIGNAL \inst7|temp~1_combout\ : std_logic;
SIGNAL \inst7|temp~0_combout\ : std_logic;
SIGNAL \inst7|MBR_OP[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|MBR_OP[5]~0_combout\ : std_logic;
SIGNAL \inst3|Add0~30\ : std_logic;
SIGNAL \inst3|Add0~26\ : std_logic;
SIGNAL \inst3|Add0~22\ : std_logic;
SIGNAL \inst3|Add0~18\ : std_logic;
SIGNAL \inst3|Add0~14\ : std_logic;
SIGNAL \inst3|Add0~10\ : std_logic;
SIGNAL \inst3|Add0~6\ : std_logic;
SIGNAL \inst3|Add0~1_sumout\ : std_logic;
SIGNAL \inst3|CARout[0]~0_combout\ : std_logic;
SIGNAL \inst3|CARout[0]~1_combout\ : std_logic;
SIGNAL \inst3|CARout[0]~2_combout\ : std_logic;
SIGNAL \inst|ACC[3]~6_combout\ : std_logic;
SIGNAL \inst2|BRout[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|BRout[0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst2|BRout[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Add0~66_cout\ : std_logic;
SIGNAL \inst|Add0~62\ : std_logic;
SIGNAL \inst|Add0~57_sumout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal4~1_combout\ : std_logic;
SIGNAL \inst|ACC~35_combout\ : std_logic;
SIGNAL \inst|ACC~36_combout\ : std_logic;
SIGNAL \inst|ACC[3]~9_combout\ : std_logic;
SIGNAL \inst|ACC[3]~10_combout\ : std_logic;
SIGNAL \inst2|BRout[14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst2|BRout[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|BRout[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|BRout[12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst2|BRout[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|BRout[11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst2|BRout[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|BRout[10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst2|BRout[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|BRout[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|BRout[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|BRout[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|BRout[6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst2|BRout[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|BRout[5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst2|BRout[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|BRout[4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst2|BRout[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|BRout[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst2|BRout[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|BRout[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Add0~58\ : std_logic;
SIGNAL \inst|Add0~54\ : std_logic;
SIGNAL \inst|Add0~50\ : std_logic;
SIGNAL \inst|Add0~46\ : std_logic;
SIGNAL \inst|Add0~42\ : std_logic;
SIGNAL \inst|Add0~38\ : std_logic;
SIGNAL \inst|Add0~34\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|ACC~5_combout\ : std_logic;
SIGNAL \inst|ACC~8_combout\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|ACC~11_combout\ : std_logic;
SIGNAL \inst|ACC~12_combout\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|ACC~13_combout\ : std_logic;
SIGNAL \inst|ACC~14_combout\ : std_logic;
SIGNAL \inst7|temp~3_combout\ : std_logic;
SIGNAL \inst7|MBR_BR[8]~feeder_combout\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|ACC~15_combout\ : std_logic;
SIGNAL \inst|ACC~16_combout\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|ACC~17_combout\ : std_logic;
SIGNAL \inst|ACC~18_combout\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|ACC~19_combout\ : std_logic;
SIGNAL \inst|ACC~20_combout\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|ACC~21_combout\ : std_logic;
SIGNAL \inst|ACC~22_combout\ : std_logic;
SIGNAL \inst|Add0~33_sumout\ : std_logic;
SIGNAL \inst|ACC~23_combout\ : std_logic;
SIGNAL \inst|ACC~24_combout\ : std_logic;
SIGNAL \inst7|temp~8_combout\ : std_logic;
SIGNAL \inst3|Add0~5_sumout\ : std_logic;
SIGNAL \inst7|MBR_BR[5]~0_combout\ : std_logic;
SIGNAL \inst|Add0~37_sumout\ : std_logic;
SIGNAL \inst|ACC~25_combout\ : std_logic;
SIGNAL \inst|ACC~26_combout\ : std_logic;
SIGNAL \inst|Add0~41_sumout\ : std_logic;
SIGNAL \inst|ACC~27_combout\ : std_logic;
SIGNAL \inst|ACC~28_combout\ : std_logic;
SIGNAL \inst|Add0~45_sumout\ : std_logic;
SIGNAL \inst|ACC~29_combout\ : std_logic;
SIGNAL \inst|ACC~30_combout\ : std_logic;
SIGNAL \inst|Add0~49_sumout\ : std_logic;
SIGNAL \inst|ACC~31_combout\ : std_logic;
SIGNAL \inst|ACC~32_combout\ : std_logic;
SIGNAL \inst7|temp~12_combout\ : std_logic;
SIGNAL \inst3|Add0~9_sumout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|ACC~7_combout\ : std_logic;
SIGNAL \inst|Add0~53_sumout\ : std_logic;
SIGNAL \inst|ACC~33_combout\ : std_logic;
SIGNAL \inst|ACC~34_combout\ : std_logic;
SIGNAL \inst7|temp~13_combout\ : std_logic;
SIGNAL \inst3|Add0~13_sumout\ : std_logic;
SIGNAL \inst7|temp~14_combout\ : std_logic;
SIGNAL \inst7|MBR_MAR[7]~feeder_combout\ : std_logic;
SIGNAL \inst6|MARout[7]~feeder_combout\ : std_logic;
SIGNAL \inst8|PCout[7]~feeder_combout\ : std_logic;
SIGNAL \inst8|PCout[6]~feeder_combout\ : std_logic;
SIGNAL \inst8|PCout[5]~feeder_combout\ : std_logic;
SIGNAL \inst8|PCout[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|PCout[3]~feeder_combout\ : std_logic;
SIGNAL \inst8|PCout[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|PCout[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|PCout[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|Add0~29_sumout\ : std_logic;
SIGNAL \inst8|PCout[4]~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst8|PCout[4]~1_combout\ : std_logic;
SIGNAL \inst8|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|PCout[4]~2_combout\ : std_logic;
SIGNAL \inst8|Add0~30\ : std_logic;
SIGNAL \inst8|Add0~25_sumout\ : std_logic;
SIGNAL \inst8|Add0~26\ : std_logic;
SIGNAL \inst8|Add0~21_sumout\ : std_logic;
SIGNAL \inst8|Add0~22\ : std_logic;
SIGNAL \inst8|Add0~17_sumout\ : std_logic;
SIGNAL \inst8|Add0~18\ : std_logic;
SIGNAL \inst8|Add0~13_sumout\ : std_logic;
SIGNAL \inst8|Add0~14\ : std_logic;
SIGNAL \inst8|Add0~9_sumout\ : std_logic;
SIGNAL \inst8|Add0~10\ : std_logic;
SIGNAL \inst8|Add0~5_sumout\ : std_logic;
SIGNAL \inst8|Add0~6\ : std_logic;
SIGNAL \inst8|Add0~1_sumout\ : std_logic;
SIGNAL \inst6|MARout[1]~0_combout\ : std_logic;
SIGNAL \inst7|MBR_MAR[6]~feeder_combout\ : std_logic;
SIGNAL \inst6|MARout[6]~feeder_combout\ : std_logic;
SIGNAL \inst6|MARout[5]~feeder_combout\ : std_logic;
SIGNAL \inst6|MARout[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|MBR_MAR[3]~feeder_combout\ : std_logic;
SIGNAL \inst6|MARout[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|MBR_MAR[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|MARout[2]~feeder_combout\ : std_logic;
SIGNAL \inst7|MBR_MAR[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|MARout[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|MBR_MAR[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|MARout[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~17_sumout\ : std_logic;
SIGNAL \inst|temp[15]~0_combout\ : std_logic;
SIGNAL \inst|ACC~0_combout\ : std_logic;
SIGNAL \inst|ACC~1_combout\ : std_logic;
SIGNAL \inst|ACC~37_combout\ : std_logic;
SIGNAL \inst|Add0~61_sumout\ : std_logic;
SIGNAL \inst|ACC~38_combout\ : std_logic;
SIGNAL \inst|ACC~39_combout\ : std_logic;
SIGNAL \inst7|temp~15_combout\ : std_logic;
SIGNAL \inst7|MBR_OP[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~21_sumout\ : std_logic;
SIGNAL \inst7|MBR_OP[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~25_sumout\ : std_logic;
SIGNAL \inst3|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|Add0~29_sumout\ : std_logic;
SIGNAL \inst2|BRout[15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst2|BRout[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|ACC~2_combout\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \inst|ACC~3_combout\ : std_logic;
SIGNAL \inst|ACC~4_combout\ : std_logic;
SIGNAL \inst8|PCout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|MBR_OP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ACC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst13|srom|rom_block|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst7|MBR_BR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst6|MARout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|CARout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|sram|ram_block|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|MBR_MAR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|temp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst7|MBR_RAM\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_clkMBR~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|ALT_INV_temp~10_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_temp~7_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_temp~2_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~38_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~37_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~35_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~33_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~31_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~29_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~27_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~25_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~23_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~21_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~19_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~17_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~15_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~13_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~11_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC[3]~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_ACC~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_BRout[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|ALT_INV_temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|ALT_INV_MBR_MAR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|ALT_INV_PCout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|ALT_INV_MBR_OP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\ : std_logic_vector(26 DOWNTO 8);
SIGNAL \inst3|ALT_INV_CARout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|ALT_INV_MBR_BR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_ACC\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ACC <= ww_ACC;
ww_clk <= clk;
ww_reset <= reset;
ww_clkMBR <= clkMBR;
BR_OUT <= ww_BR_OUT;
BRIN <= ww_BRIN;
CAROUT <= ww_CAROUT;
CONTROL <= ww_CONTROL;
IROUT <= ww_IROUT;
MAROUT <= ww_MAROUT;
PC <= ww_PC;
RAM_OUT <= ww_RAM_OUT;
RAMIN <= ww_RAMIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst13|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst3|CARout\(7) & \inst3|CARout\(6) & \inst3|CARout\(5) & \inst3|CARout\(4) & \inst3|CARout\(3) & \inst3|CARout\(2) & \inst3|CARout\(1) & \inst3|CARout\(0));

\inst13|srom|rom_block|auto_generated|q_a\(0) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst13|srom|rom_block|auto_generated|q_a\(1) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst13|srom|rom_block|auto_generated|q_a\(2) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst13|srom|rom_block|auto_generated|q_a\(3) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst13|srom|rom_block|auto_generated|q_a\(4) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst13|srom|rom_block|auto_generated|q_a\(5) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst13|srom|rom_block|auto_generated|q_a\(6) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst13|srom|rom_block|auto_generated|q_a\(7) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst13|srom|rom_block|auto_generated|q_a\(8) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst13|srom|rom_block|auto_generated|q_a\(9) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst13|srom|rom_block|auto_generated|q_a\(10) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst13|srom|rom_block|auto_generated|q_a\(11) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst13|srom|rom_block|auto_generated|q_a\(12) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst13|srom|rom_block|auto_generated|q_a\(13) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst13|srom|rom_block|auto_generated|q_a\(14) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst13|srom|rom_block|auto_generated|q_a\(15) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst13|srom|rom_block|auto_generated|q_a\(16) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst13|srom|rom_block|auto_generated|q_a\(17) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst13|srom|rom_block|auto_generated|q_a\(18) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst13|srom|rom_block|auto_generated|q_a\(19) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst13|srom|rom_block|auto_generated|q_a\(20) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst13|srom|rom_block|auto_generated|q_a\(21) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst13|srom|rom_block|auto_generated|q_a\(22) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst13|srom|rom_block|auto_generated|q_a\(23) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\inst13|srom|rom_block|auto_generated|q_a\(24) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\inst13|srom|rom_block|auto_generated|q_a\(25) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\inst13|srom|rom_block|auto_generated|q_a\(26) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\inst13|srom|rom_block|auto_generated|q_a\(27) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\inst13|srom|rom_block|auto_generated|q_a\(28) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\inst13|srom|rom_block|auto_generated|q_a\(29) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\inst13|srom|rom_block|auto_generated|q_a\(30) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\inst13|srom|rom_block|auto_generated|q_a\(31) <= \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \inst7|MBR_RAM\(15) & \inst7|MBR_RAM\(14) & \inst7|MBR_RAM\(13) & \inst7|MBR_RAM\(12) & \inst7|MBR_RAM\(11) & \inst7|MBR_RAM\(10) & \inst7|MBR_RAM\(9)
& \inst7|MBR_RAM\(8) & \inst7|MBR_RAM\(7) & \inst7|MBR_RAM\(6) & \inst7|MBR_RAM\(5) & \inst7|MBR_RAM\(4) & \inst7|MBR_RAM\(3) & \inst7|MBR_RAM\(2) & \inst7|MBR_RAM\(1) & \inst7|MBR_RAM\(0));

\inst14|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst6|MARout\(7) & \inst6|MARout\(6) & \inst6|MARout\(5) & \inst6|MARout\(4) & \inst6|MARout\(3) & \inst6|MARout\(2) & \inst6|MARout\(1) & \inst6|MARout\(0));

\inst14|sram|ram_block|auto_generated|q_a\(0) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst14|sram|ram_block|auto_generated|q_a\(1) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst14|sram|ram_block|auto_generated|q_a\(2) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst14|sram|ram_block|auto_generated|q_a\(3) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst14|sram|ram_block|auto_generated|q_a\(4) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst14|sram|ram_block|auto_generated|q_a\(5) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst14|sram|ram_block|auto_generated|q_a\(6) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst14|sram|ram_block|auto_generated|q_a\(7) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst14|sram|ram_block|auto_generated|q_a\(8) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst14|sram|ram_block|auto_generated|q_a\(9) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst14|sram|ram_block|auto_generated|q_a\(10) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst14|sram|ram_block|auto_generated|q_a\(11) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst14|sram|ram_block|auto_generated|q_a\(12) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst14|sram|ram_block|auto_generated|q_a\(13) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst14|sram|ram_block|auto_generated|q_a\(14) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst14|sram|ram_block|auto_generated|q_a\(15) <= \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\inst|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\inst|Mult0~8_CLK_bus\ <= (gnd & \inst13|srom|rom_block|auto_generated|q_a\(22) & NOT \clk~inputCLKENA0_outclk\);

\inst|Mult0~8_ENA_bus\ <= (vcc & vcc & \inst|temp[15]~0_combout\);

\inst|Mult0~8_AX_bus\ <= (\inst7|MBR_BR\(15) & \inst7|MBR_BR\(14) & \inst7|MBR_BR\(13) & \inst7|MBR_BR\(12) & \inst7|MBR_BR\(11) & \inst7|MBR_BR\(10) & \inst7|MBR_BR\(9) & \inst7|MBR_BR\(8) & \inst7|MBR_BR\(7) & \inst7|MBR_BR\(6) & 
\inst7|MBR_BR\(5) & \inst7|MBR_BR\(4) & \inst7|MBR_BR\(3) & \inst7|MBR_BR\(2) & \inst7|MBR_BR\(1) & \inst7|MBR_BR\(0));

\inst|Mult0~8_AY_bus\ <= (\inst|ACC\(15) & \inst|ACC\(14) & \inst|ACC\(13) & \inst|ACC\(12) & \inst|ACC\(11) & \inst|ACC\(10) & \inst|ACC\(9) & \inst|ACC\(8) & \inst|ACC\(7) & \inst|ACC\(6) & \inst|ACC\(5) & \inst|ACC\(4) & 
\inst|ACC\(3) & \inst|ACC\(2) & \inst|ACC\(1) & \inst|ACC\(0));

\inst|temp\(0) <= \inst|Mult0~8_RESULTA_bus\(0);
\inst|temp\(1) <= \inst|Mult0~8_RESULTA_bus\(1);
\inst|temp\(2) <= \inst|Mult0~8_RESULTA_bus\(2);
\inst|temp\(3) <= \inst|Mult0~8_RESULTA_bus\(3);
\inst|temp\(4) <= \inst|Mult0~8_RESULTA_bus\(4);
\inst|temp\(5) <= \inst|Mult0~8_RESULTA_bus\(5);
\inst|temp\(6) <= \inst|Mult0~8_RESULTA_bus\(6);
\inst|temp\(7) <= \inst|Mult0~8_RESULTA_bus\(7);
\inst|temp\(8) <= \inst|Mult0~8_RESULTA_bus\(8);
\inst|temp\(9) <= \inst|Mult0~8_RESULTA_bus\(9);
\inst|temp\(10) <= \inst|Mult0~8_RESULTA_bus\(10);
\inst|temp\(11) <= \inst|Mult0~8_RESULTA_bus\(11);
\inst|temp\(12) <= \inst|Mult0~8_RESULTA_bus\(12);
\inst|temp\(13) <= \inst|Mult0~8_RESULTA_bus\(13);
\inst|temp\(14) <= \inst|Mult0~8_RESULTA_bus\(14);
\inst|temp\(15) <= \inst|Mult0~8_RESULTA_bus\(15);
\inst|Mult0~24\ <= \inst|Mult0~8_RESULTA_bus\(16);
\inst|Mult0~25\ <= \inst|Mult0~8_RESULTA_bus\(17);
\inst|Mult0~26\ <= \inst|Mult0~8_RESULTA_bus\(18);
\inst|Mult0~27\ <= \inst|Mult0~8_RESULTA_bus\(19);
\inst|Mult0~28\ <= \inst|Mult0~8_RESULTA_bus\(20);
\inst|Mult0~29\ <= \inst|Mult0~8_RESULTA_bus\(21);
\inst|Mult0~30\ <= \inst|Mult0~8_RESULTA_bus\(22);
\inst|Mult0~31\ <= \inst|Mult0~8_RESULTA_bus\(23);
\inst|Mult0~32\ <= \inst|Mult0~8_RESULTA_bus\(24);
\inst|Mult0~33\ <= \inst|Mult0~8_RESULTA_bus\(25);
\inst|Mult0~34\ <= \inst|Mult0~8_RESULTA_bus\(26);
\inst|Mult0~35\ <= \inst|Mult0~8_RESULTA_bus\(27);
\inst|Mult0~36\ <= \inst|Mult0~8_RESULTA_bus\(28);
\inst|Mult0~37\ <= \inst|Mult0~8_RESULTA_bus\(29);
\inst|Mult0~38\ <= \inst|Mult0~8_RESULTA_bus\(30);
\inst|Mult0~39\ <= \inst|Mult0~8_RESULTA_bus\(31);
\inst|Mult0~40\ <= \inst|Mult0~8_RESULTA_bus\(32);
\inst|Mult0~41\ <= \inst|Mult0~8_RESULTA_bus\(33);
\inst|Mult0~42\ <= \inst|Mult0~8_RESULTA_bus\(34);
\inst|Mult0~43\ <= \inst|Mult0~8_RESULTA_bus\(35);
\inst|Mult0~44\ <= \inst|Mult0~8_RESULTA_bus\(36);
\inst|Mult0~45\ <= \inst|Mult0~8_RESULTA_bus\(37);
\inst|Mult0~46\ <= \inst|Mult0~8_RESULTA_bus\(38);
\inst|Mult0~47\ <= \inst|Mult0~8_RESULTA_bus\(39);
\inst|Mult0~48\ <= \inst|Mult0~8_RESULTA_bus\(40);
\inst|Mult0~49\ <= \inst|Mult0~8_RESULTA_bus\(41);
\inst|Mult0~50\ <= \inst|Mult0~8_RESULTA_bus\(42);
\inst|Mult0~51\ <= \inst|Mult0~8_RESULTA_bus\(43);
\inst|Mult0~52\ <= \inst|Mult0~8_RESULTA_bus\(44);
\inst|Mult0~53\ <= \inst|Mult0~8_RESULTA_bus\(45);
\inst|Mult0~54\ <= \inst|Mult0~8_RESULTA_bus\(46);
\inst|Mult0~55\ <= \inst|Mult0~8_RESULTA_bus\(47);
\inst|Mult0~56\ <= \inst|Mult0~8_RESULTA_bus\(48);
\inst|Mult0~57\ <= \inst|Mult0~8_RESULTA_bus\(49);
\inst|Mult0~58\ <= \inst|Mult0~8_RESULTA_bus\(50);
\inst|Mult0~59\ <= \inst|Mult0~8_RESULTA_bus\(51);
\inst|Mult0~60\ <= \inst|Mult0~8_RESULTA_bus\(52);
\inst|Mult0~61\ <= \inst|Mult0~8_RESULTA_bus\(53);
\inst|Mult0~62\ <= \inst|Mult0~8_RESULTA_bus\(54);
\inst|Mult0~63\ <= \inst|Mult0~8_RESULTA_bus\(55);
\inst|Mult0~64\ <= \inst|Mult0~8_RESULTA_bus\(56);
\inst|Mult0~65\ <= \inst|Mult0~8_RESULTA_bus\(57);
\inst|Mult0~66\ <= \inst|Mult0~8_RESULTA_bus\(58);
\inst|Mult0~67\ <= \inst|Mult0~8_RESULTA_bus\(59);
\inst|Mult0~68\ <= \inst|Mult0~8_RESULTA_bus\(60);
\inst|Mult0~69\ <= \inst|Mult0~8_RESULTA_bus\(61);
\inst|Mult0~70\ <= \inst|Mult0~8_RESULTA_bus\(62);
\inst|Mult0~71\ <= \inst|Mult0~8_RESULTA_bus\(63);
\ALT_INV_clkMBR~inputCLKENA0_outclk\ <= NOT \clkMBR~inputCLKENA0_outclk\;
\ALT_INV_clk~inputCLKENA0_outclk\ <= NOT \clk~inputCLKENA0_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\inst3|ALT_INV_Equal3~0_combout\ <= NOT \inst3|Equal3~0_combout\;
\inst|ALT_INV_Equal1~0_combout\ <= NOT \inst|Equal1~0_combout\;
\inst7|ALT_INV_temp\(0) <= NOT \inst7|temp\(0);
\inst7|ALT_INV_temp\(1) <= NOT \inst7|temp\(1);
\inst7|ALT_INV_temp\(2) <= NOT \inst7|temp\(2);
\inst7|ALT_INV_temp\(3) <= NOT \inst7|temp\(3);
\inst7|ALT_INV_temp\(4) <= NOT \inst7|temp\(4);
\inst7|ALT_INV_temp~10_combout\ <= NOT \inst7|temp~10_combout\;
\inst7|ALT_INV_temp\(5) <= NOT \inst7|temp\(5);
\inst7|ALT_INV_temp\(6) <= NOT \inst7|temp\(6);
\inst7|ALT_INV_temp\(7) <= NOT \inst7|temp\(7);
\inst7|ALT_INV_temp~7_combout\ <= NOT \inst7|temp~7_combout\;
\inst7|ALT_INV_temp\(8) <= NOT \inst7|temp\(8);
\inst7|ALT_INV_temp\(9) <= NOT \inst7|temp\(9);
\inst7|ALT_INV_temp\(10) <= NOT \inst7|temp\(10);
\inst7|ALT_INV_temp\(11) <= NOT \inst7|temp\(11);
\inst7|ALT_INV_temp\(12) <= NOT \inst7|temp\(12);
\inst7|ALT_INV_temp~2_combout\ <= NOT \inst7|temp~2_combout\;
\inst7|ALT_INV_temp\(13) <= NOT \inst7|temp\(13);
\inst7|ALT_INV_temp\(14) <= NOT \inst7|temp\(14);
\inst7|ALT_INV_temp\(15) <= NOT \inst7|temp\(15);
\inst8|ALT_INV_Equal0~0_combout\ <= NOT \inst8|Equal0~0_combout\;
\inst|ALT_INV_LessThan0~2_combout\ <= NOT \inst|LessThan0~2_combout\;
\inst|ALT_INV_LessThan0~1_combout\ <= NOT \inst|LessThan0~1_combout\;
\inst|ALT_INV_LessThan0~0_combout\ <= NOT \inst|LessThan0~0_combout\;
\inst|ALT_INV_ACC~38_combout\ <= NOT \inst|ACC~38_combout\;
\inst|ALT_INV_ACC~37_combout\ <= NOT \inst|ACC~37_combout\;
\inst|ALT_INV_ACC~35_combout\ <= NOT \inst|ACC~35_combout\;
\inst|ALT_INV_ACC~33_combout\ <= NOT \inst|ACC~33_combout\;
\inst|ALT_INV_ACC~31_combout\ <= NOT \inst|ACC~31_combout\;
\inst|ALT_INV_ACC~29_combout\ <= NOT \inst|ACC~29_combout\;
\inst|ALT_INV_ACC~27_combout\ <= NOT \inst|ACC~27_combout\;
\inst|ALT_INV_ACC~25_combout\ <= NOT \inst|ACC~25_combout\;
\inst|ALT_INV_ACC~23_combout\ <= NOT \inst|ACC~23_combout\;
\inst|ALT_INV_ACC~21_combout\ <= NOT \inst|ACC~21_combout\;
\inst|ALT_INV_ACC~19_combout\ <= NOT \inst|ACC~19_combout\;
\inst|ALT_INV_ACC~17_combout\ <= NOT \inst|ACC~17_combout\;
\inst|ALT_INV_ACC~15_combout\ <= NOT \inst|ACC~15_combout\;
\inst|ALT_INV_ACC~13_combout\ <= NOT \inst|ACC~13_combout\;
\inst|ALT_INV_ACC~11_combout\ <= NOT \inst|ACC~11_combout\;
\inst|ALT_INV_ACC~7_combout\ <= NOT \inst|ACC~7_combout\;
\inst|ALT_INV_ACC[3]~6_combout\ <= NOT \inst|ACC[3]~6_combout\;
\inst|ALT_INV_ACC~5_combout\ <= NOT \inst|ACC~5_combout\;
\inst|ALT_INV_ACC~3_combout\ <= NOT \inst|ACC~3_combout\;
\inst|ALT_INV_ACC~2_combout\ <= NOT \inst|ACC~2_combout\;
\inst|ALT_INV_ACC~1_combout\ <= NOT \inst|ACC~1_combout\;
\inst|ALT_INV_Equal2~0_combout\ <= NOT \inst|Equal2~0_combout\;
\inst|ALT_INV_ACC~0_combout\ <= NOT \inst|ACC~0_combout\;
\inst|ALT_INV_Equal4~1_combout\ <= NOT \inst|Equal4~1_combout\;
\inst|ALT_INV_Equal4~0_combout\ <= NOT \inst|Equal4~0_combout\;
\inst2|ALT_INV_BRout[0]~_Duplicate_1_q\ <= NOT \inst2|BRout[0]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[1]~_Duplicate_1_q\ <= NOT \inst2|BRout[1]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[2]~_Duplicate_1_q\ <= NOT \inst2|BRout[2]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[3]~_Duplicate_1_q\ <= NOT \inst2|BRout[3]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[4]~_Duplicate_1_q\ <= NOT \inst2|BRout[4]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[5]~_Duplicate_1_q\ <= NOT \inst2|BRout[5]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[6]~_Duplicate_1_q\ <= NOT \inst2|BRout[6]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[7]~_Duplicate_1_q\ <= NOT \inst2|BRout[7]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[8]~_Duplicate_1_q\ <= NOT \inst2|BRout[8]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[9]~_Duplicate_1_q\ <= NOT \inst2|BRout[9]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[10]~_Duplicate_1_q\ <= NOT \inst2|BRout[10]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[11]~_Duplicate_1_q\ <= NOT \inst2|BRout[11]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[12]~_Duplicate_1_q\ <= NOT \inst2|BRout[12]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[13]~_Duplicate_1_q\ <= NOT \inst2|BRout[13]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[14]~_Duplicate_1_q\ <= NOT \inst2|BRout[14]~_Duplicate_1_q\;
\inst2|ALT_INV_BRout[15]~_Duplicate_1_q\ <= NOT \inst2|BRout[15]~_Duplicate_1_q\;
\inst|ALT_INV_temp\(15) <= NOT \inst|temp\(15);
\inst|ALT_INV_temp\(14) <= NOT \inst|temp\(14);
\inst|ALT_INV_temp\(13) <= NOT \inst|temp\(13);
\inst|ALT_INV_temp\(12) <= NOT \inst|temp\(12);
\inst|ALT_INV_temp\(11) <= NOT \inst|temp\(11);
\inst|ALT_INV_temp\(10) <= NOT \inst|temp\(10);
\inst|ALT_INV_temp\(9) <= NOT \inst|temp\(9);
\inst|ALT_INV_temp\(8) <= NOT \inst|temp\(8);
\inst|ALT_INV_temp\(7) <= NOT \inst|temp\(7);
\inst|ALT_INV_temp\(6) <= NOT \inst|temp\(6);
\inst|ALT_INV_temp\(5) <= NOT \inst|temp\(5);
\inst|ALT_INV_temp\(4) <= NOT \inst|temp\(4);
\inst|ALT_INV_temp\(3) <= NOT \inst|temp\(3);
\inst|ALT_INV_temp\(2) <= NOT \inst|temp\(2);
\inst|ALT_INV_temp\(1) <= NOT \inst|temp\(1);
\inst|ALT_INV_temp\(0) <= NOT \inst|temp\(0);
\inst7|ALT_INV_MBR_MAR\(0) <= NOT \inst7|MBR_MAR\(0);
\inst7|ALT_INV_MBR_MAR\(1) <= NOT \inst7|MBR_MAR\(1);
\inst7|ALT_INV_MBR_MAR\(2) <= NOT \inst7|MBR_MAR\(2);
\inst7|ALT_INV_MBR_MAR\(3) <= NOT \inst7|MBR_MAR\(3);
\inst7|ALT_INV_MBR_MAR\(4) <= NOT \inst7|MBR_MAR\(4);
\inst7|ALT_INV_MBR_MAR\(5) <= NOT \inst7|MBR_MAR\(5);
\inst7|ALT_INV_MBR_MAR\(6) <= NOT \inst7|MBR_MAR\(6);
\inst7|ALT_INV_MBR_MAR\(7) <= NOT \inst7|MBR_MAR\(7);
\inst|ALT_INV_Add0~61_sumout\ <= NOT \inst|Add0~61_sumout\;
\inst|ALT_INV_Add0~57_sumout\ <= NOT \inst|Add0~57_sumout\;
\inst|ALT_INV_Add0~53_sumout\ <= NOT \inst|Add0~53_sumout\;
\inst|ALT_INV_Add0~49_sumout\ <= NOT \inst|Add0~49_sumout\;
\inst|ALT_INV_Add0~45_sumout\ <= NOT \inst|Add0~45_sumout\;
\inst|ALT_INV_Add0~41_sumout\ <= NOT \inst|Add0~41_sumout\;
\inst|ALT_INV_Add0~37_sumout\ <= NOT \inst|Add0~37_sumout\;
\inst|ALT_INV_Add0~33_sumout\ <= NOT \inst|Add0~33_sumout\;
\inst|ALT_INV_Add0~29_sumout\ <= NOT \inst|Add0~29_sumout\;
\inst|ALT_INV_Add0~25_sumout\ <= NOT \inst|Add0~25_sumout\;
\inst|ALT_INV_Add0~21_sumout\ <= NOT \inst|Add0~21_sumout\;
\inst|ALT_INV_Add0~17_sumout\ <= NOT \inst|Add0~17_sumout\;
\inst|ALT_INV_Add0~13_sumout\ <= NOT \inst|Add0~13_sumout\;
\inst|ALT_INV_Add0~9_sumout\ <= NOT \inst|Add0~9_sumout\;
\inst|ALT_INV_Add0~5_sumout\ <= NOT \inst|Add0~5_sumout\;
\inst|ALT_INV_Add0~1_sumout\ <= NOT \inst|Add0~1_sumout\;
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(1) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(1);
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(2) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(2);
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(3) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(3);
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(5) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(5);
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(6) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(6);
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(7) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(7);
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(8) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(8);
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(9) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(9);
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(10) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(10);
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(11) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(11);
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(12) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(12);
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(13) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(13);
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(15) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(15);
\inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(0) <= NOT \inst14|sram|ram_block|auto_generated|q_a\(0);
\inst8|ALT_INV_PCout\(0) <= NOT \inst8|PCout\(0);
\inst8|ALT_INV_PCout\(1) <= NOT \inst8|PCout\(1);
\inst8|ALT_INV_PCout\(2) <= NOT \inst8|PCout\(2);
\inst8|ALT_INV_PCout\(3) <= NOT \inst8|PCout\(3);
\inst8|ALT_INV_PCout\(4) <= NOT \inst8|PCout\(4);
\inst8|ALT_INV_PCout\(5) <= NOT \inst8|PCout\(5);
\inst8|ALT_INV_PCout\(6) <= NOT \inst8|PCout\(6);
\inst8|ALT_INV_PCout\(7) <= NOT \inst8|PCout\(7);
\inst7|ALT_INV_MBR_OP\(0) <= NOT \inst7|MBR_OP\(0);
\inst7|ALT_INV_MBR_OP\(1) <= NOT \inst7|MBR_OP\(1);
\inst7|ALT_INV_MBR_OP\(2) <= NOT \inst7|MBR_OP\(2);
\inst7|ALT_INV_MBR_OP\(3) <= NOT \inst7|MBR_OP\(3);
\inst7|ALT_INV_MBR_OP\(4) <= NOT \inst7|MBR_OP\(4);
\inst7|ALT_INV_MBR_OP\(5) <= NOT \inst7|MBR_OP\(5);
\inst7|ALT_INV_MBR_OP\(6) <= NOT \inst7|MBR_OP\(6);
\inst7|ALT_INV_MBR_OP\(7) <= NOT \inst7|MBR_OP\(7);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(8) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(8);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(9) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(9);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(10) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(10);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(11) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(11);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(12);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(13);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(14) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(14);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(15) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(15);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(16) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(16);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(17) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(17);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(18) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(18);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(19) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(19);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(20);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(21) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(21);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(23) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(23);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(24) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(24);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(25) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(25);
\inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(26) <= NOT \inst13|srom|rom_block|auto_generated|q_a\(26);
\inst3|ALT_INV_CARout\(0) <= NOT \inst3|CARout\(0);
\inst3|ALT_INV_CARout\(1) <= NOT \inst3|CARout\(1);
\inst3|ALT_INV_CARout\(2) <= NOT \inst3|CARout\(2);
\inst3|ALT_INV_CARout\(3) <= NOT \inst3|CARout\(3);
\inst3|ALT_INV_CARout\(4) <= NOT \inst3|CARout\(4);
\inst3|ALT_INV_CARout\(5) <= NOT \inst3|CARout\(5);
\inst3|ALT_INV_CARout\(6) <= NOT \inst3|CARout\(6);
\inst3|ALT_INV_CARout\(7) <= NOT \inst3|CARout\(7);
\inst7|ALT_INV_MBR_BR\(0) <= NOT \inst7|MBR_BR\(0);
\inst7|ALT_INV_MBR_BR\(3) <= NOT \inst7|MBR_BR\(3);
\inst7|ALT_INV_MBR_BR\(4) <= NOT \inst7|MBR_BR\(4);
\inst7|ALT_INV_MBR_BR\(5) <= NOT \inst7|MBR_BR\(5);
\inst7|ALT_INV_MBR_BR\(6) <= NOT \inst7|MBR_BR\(6);
\inst7|ALT_INV_MBR_BR\(10) <= NOT \inst7|MBR_BR\(10);
\inst7|ALT_INV_MBR_BR\(11) <= NOT \inst7|MBR_BR\(11);
\inst7|ALT_INV_MBR_BR\(12) <= NOT \inst7|MBR_BR\(12);
\inst7|ALT_INV_MBR_BR\(14) <= NOT \inst7|MBR_BR\(14);
\inst7|ALT_INV_MBR_BR\(15) <= NOT \inst7|MBR_BR\(15);
\inst|ALT_INV_ACC\(0) <= NOT \inst|ACC\(0);
\inst|ALT_INV_ACC\(1) <= NOT \inst|ACC\(1);
\inst|ALT_INV_ACC\(2) <= NOT \inst|ACC\(2);
\inst|ALT_INV_ACC\(3) <= NOT \inst|ACC\(3);
\inst|ALT_INV_ACC\(4) <= NOT \inst|ACC\(4);
\inst|ALT_INV_ACC\(5) <= NOT \inst|ACC\(5);
\inst|ALT_INV_ACC\(6) <= NOT \inst|ACC\(6);
\inst|ALT_INV_ACC\(7) <= NOT \inst|ACC\(7);
\inst|ALT_INV_ACC\(8) <= NOT \inst|ACC\(8);
\inst|ALT_INV_ACC\(9) <= NOT \inst|ACC\(9);
\inst|ALT_INV_ACC\(10) <= NOT \inst|ACC\(10);
\inst|ALT_INV_ACC\(11) <= NOT \inst|ACC\(11);
\inst|ALT_INV_ACC\(12) <= NOT \inst|ACC\(12);
\inst|ALT_INV_ACC\(13) <= NOT \inst|ACC\(13);
\inst|ALT_INV_ACC\(14) <= NOT \inst|ACC\(14);
\inst|ALT_INV_ACC\(15) <= NOT \inst|ACC\(15);

-- Location: IOOBUF_X89_Y4_N96
\ACC[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(15),
	devoe => ww_devoe,
	o => ww_ACC(15));

-- Location: IOOBUF_X89_Y6_N56
\ACC[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(14),
	devoe => ww_devoe,
	o => ww_ACC(14));

-- Location: IOOBUF_X89_Y6_N22
\ACC[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(13),
	devoe => ww_devoe,
	o => ww_ACC(13));

-- Location: IOOBUF_X89_Y9_N5
\ACC[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(12),
	devoe => ww_devoe,
	o => ww_ACC(12));

-- Location: IOOBUF_X89_Y8_N56
\ACC[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(11),
	devoe => ww_devoe,
	o => ww_ACC(11));

-- Location: IOOBUF_X89_Y4_N79
\ACC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(10),
	devoe => ww_devoe,
	o => ww_ACC(10));

-- Location: IOOBUF_X89_Y4_N62
\ACC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(9),
	devoe => ww_devoe,
	o => ww_ACC(9));

-- Location: IOOBUF_X89_Y6_N39
\ACC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(8),
	devoe => ww_devoe,
	o => ww_ACC(8));

-- Location: IOOBUF_X89_Y8_N22
\ACC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(7),
	devoe => ww_devoe,
	o => ww_ACC(7));

-- Location: IOOBUF_X89_Y6_N5
\ACC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(6),
	devoe => ww_devoe,
	o => ww_ACC(6));

-- Location: IOOBUF_X72_Y0_N19
\ACC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(5),
	devoe => ww_devoe,
	o => ww_ACC(5));

-- Location: IOOBUF_X89_Y4_N45
\ACC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(4),
	devoe => ww_devoe,
	o => ww_ACC(4));

-- Location: IOOBUF_X70_Y0_N19
\ACC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(3),
	devoe => ww_devoe,
	o => ww_ACC(3));

-- Location: IOOBUF_X72_Y0_N2
\ACC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(2),
	devoe => ww_devoe,
	o => ww_ACC(2));

-- Location: IOOBUF_X89_Y9_N22
\ACC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(1),
	devoe => ww_devoe,
	o => ww_ACC(1));

-- Location: IOOBUF_X89_Y9_N56
\ACC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(0),
	devoe => ww_devoe,
	o => ww_ACC(0));

-- Location: IOOBUF_X28_Y0_N36
\BR_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[15]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(15));

-- Location: IOOBUF_X8_Y0_N53
\BR_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[14]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(14));

-- Location: IOOBUF_X30_Y0_N19
\BR_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[13]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(13));

-- Location: IOOBUF_X89_Y37_N22
\BR_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[12]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(12));

-- Location: IOOBUF_X38_Y0_N36
\BR_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[11]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(11));

-- Location: IOOBUF_X56_Y0_N53
\BR_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[10]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(10));

-- Location: IOOBUF_X6_Y0_N53
\BR_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[9]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(9));

-- Location: IOOBUF_X89_Y37_N56
\BR_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[8]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(8));

-- Location: IOOBUF_X89_Y35_N96
\BR_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[7]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(7));

-- Location: IOOBUF_X50_Y0_N42
\BR_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[6]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(6));

-- Location: IOOBUF_X8_Y0_N36
\BR_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[5]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(5));

-- Location: IOOBUF_X34_Y0_N76
\BR_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[4]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(4));

-- Location: IOOBUF_X84_Y81_N36
\BR_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[3]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(3));

-- Location: IOOBUF_X36_Y0_N2
\BR_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[2]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(2));

-- Location: IOOBUF_X89_Y8_N39
\BR_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[1]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(1));

-- Location: IOOBUF_X28_Y0_N53
\BR_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|BRout[0]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_BR_OUT(0));

-- Location: IOOBUF_X86_Y81_N2
\BRIN[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(15),
	devoe => ww_devoe,
	o => ww_BRIN(15));

-- Location: IOOBUF_X38_Y0_N19
\BRIN[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(14),
	devoe => ww_devoe,
	o => ww_BRIN(14));

-- Location: IOOBUF_X52_Y0_N2
\BRIN[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(13),
	devoe => ww_devoe,
	o => ww_BRIN(13));

-- Location: IOOBUF_X4_Y0_N19
\BRIN[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(12),
	devoe => ww_devoe,
	o => ww_BRIN(12));

-- Location: IOOBUF_X89_Y37_N5
\BRIN[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(11),
	devoe => ww_devoe,
	o => ww_BRIN(11));

-- Location: IOOBUF_X34_Y0_N42
\BRIN[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(10),
	devoe => ww_devoe,
	o => ww_BRIN(10));

-- Location: IOOBUF_X86_Y81_N36
\BRIN[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(9),
	devoe => ww_devoe,
	o => ww_BRIN(9));

-- Location: IOOBUF_X36_Y0_N36
\BRIN[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(8),
	devoe => ww_devoe,
	o => ww_BRIN(8));

-- Location: IOOBUF_X86_Y81_N19
\BRIN[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(7),
	devoe => ww_devoe,
	o => ww_BRIN(7));

-- Location: IOOBUF_X89_Y37_N39
\BRIN[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(6),
	devoe => ww_devoe,
	o => ww_BRIN(6));

-- Location: IOOBUF_X89_Y36_N22
\BRIN[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(5),
	devoe => ww_devoe,
	o => ww_BRIN(5));

-- Location: IOOBUF_X52_Y0_N36
\BRIN[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(4),
	devoe => ww_devoe,
	o => ww_BRIN(4));

-- Location: IOOBUF_X89_Y36_N39
\BRIN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(3),
	devoe => ww_devoe,
	o => ww_BRIN(3));

-- Location: IOOBUF_X54_Y0_N2
\BRIN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(2),
	devoe => ww_devoe,
	o => ww_BRIN(2));

-- Location: IOOBUF_X40_Y0_N19
\BRIN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(1),
	devoe => ww_devoe,
	o => ww_BRIN(1));

-- Location: IOOBUF_X84_Y81_N2
\BRIN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_BR\(0),
	devoe => ww_devoe,
	o => ww_BRIN(0));

-- Location: IOOBUF_X72_Y81_N19
\CAROUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|CARout\(7),
	devoe => ww_devoe,
	o => ww_CAROUT(7));

-- Location: IOOBUF_X64_Y0_N53
\CAROUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|CARout\(6),
	devoe => ww_devoe,
	o => ww_CAROUT(6));

-- Location: IOOBUF_X72_Y81_N53
\CAROUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|CARout\(5),
	devoe => ww_devoe,
	o => ww_CAROUT(5));

-- Location: IOOBUF_X76_Y81_N2
\CAROUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|CARout\(4),
	devoe => ww_devoe,
	o => ww_CAROUT(4));

-- Location: IOOBUF_X54_Y0_N53
\CAROUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|CARout\(3),
	devoe => ww_devoe,
	o => ww_CAROUT(3));

-- Location: IOOBUF_X76_Y81_N19
\CAROUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|CARout\(2),
	devoe => ww_devoe,
	o => ww_CAROUT(2));

-- Location: IOOBUF_X76_Y81_N53
\CAROUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|CARout\(1),
	devoe => ww_devoe,
	o => ww_CAROUT(1));

-- Location: IOOBUF_X76_Y81_N36
\CAROUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|CARout\(0),
	devoe => ww_devoe,
	o => ww_CAROUT(0));

-- Location: IOOBUF_X32_Y0_N2
\CONTROL[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => ww_CONTROL(31));

-- Location: IOOBUF_X30_Y0_N53
\CONTROL[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => ww_CONTROL(30));

-- Location: IOOBUF_X54_Y0_N19
\CONTROL[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => ww_CONTROL(29));

-- Location: IOOBUF_X40_Y0_N36
\CONTROL[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => ww_CONTROL(28));

-- Location: IOOBUF_X89_Y36_N56
\CONTROL[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => ww_CONTROL(27));

-- Location: IOOBUF_X66_Y0_N93
\CONTROL[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => ww_CONTROL(26));

-- Location: IOOBUF_X89_Y38_N5
\CONTROL[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => ww_CONTROL(25));

-- Location: IOOBUF_X66_Y0_N42
\CONTROL[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => ww_CONTROL(24));

-- Location: IOOBUF_X66_Y81_N93
\CONTROL[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => ww_CONTROL(23));

-- Location: IOOBUF_X89_Y9_N39
\CONTROL[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => ww_CONTROL(22));

-- Location: IOOBUF_X58_Y0_N93
\CONTROL[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => ww_CONTROL(21));

-- Location: IOOBUF_X72_Y0_N36
\CONTROL[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => ww_CONTROL(20));

-- Location: IOOBUF_X89_Y36_N5
\CONTROL[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => ww_CONTROL(19));

-- Location: IOOBUF_X70_Y81_N36
\CONTROL[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => ww_CONTROL(18));

-- Location: IOOBUF_X40_Y0_N53
\CONTROL[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => ww_CONTROL(17));

-- Location: IOOBUF_X58_Y0_N76
\CONTROL[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => ww_CONTROL(16));

-- Location: IOOBUF_X70_Y0_N53
\CONTROL[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_CONTROL(15));

-- Location: IOOBUF_X70_Y0_N2
\CONTROL[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_CONTROL(14));

-- Location: IOOBUF_X70_Y0_N36
\CONTROL[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_CONTROL(13));

-- Location: IOOBUF_X72_Y0_N53
\CONTROL[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_CONTROL(12));

-- Location: IOOBUF_X34_Y0_N59
\CONTROL[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_CONTROL(11));

-- Location: IOOBUF_X32_Y0_N36
\CONTROL[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_CONTROL(10));

-- Location: IOOBUF_X28_Y0_N2
\CONTROL[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_CONTROL(9));

-- Location: IOOBUF_X26_Y0_N76
\CONTROL[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_CONTROL(8));

-- Location: IOOBUF_X66_Y81_N76
\CONTROL[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_CONTROL(7));

-- Location: IOOBUF_X60_Y0_N53
\CONTROL[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_CONTROL(6));

-- Location: IOOBUF_X68_Y81_N19
\CONTROL[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_CONTROL(5));

-- Location: IOOBUF_X58_Y0_N59
\CONTROL[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_CONTROL(4));

-- Location: IOOBUF_X66_Y0_N76
\CONTROL[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_CONTROL(3));

-- Location: IOOBUF_X66_Y81_N59
\CONTROL[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_CONTROL(2));

-- Location: IOOBUF_X78_Y81_N19
\CONTROL[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_CONTROL(1));

-- Location: IOOBUF_X52_Y0_N19
\CONTROL[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|srom|rom_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_CONTROL(0));

-- Location: IOOBUF_X56_Y0_N36
\IROUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_OP\(7),
	devoe => ww_devoe,
	o => ww_IROUT(7));

-- Location: IOOBUF_X56_Y0_N19
\IROUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_OP\(6),
	devoe => ww_devoe,
	o => ww_IROUT(6));

-- Location: IOOBUF_X68_Y81_N2
\IROUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_OP\(5),
	devoe => ww_devoe,
	o => ww_IROUT(5));

-- Location: IOOBUF_X66_Y81_N42
\IROUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_OP\(4),
	devoe => ww_devoe,
	o => ww_IROUT(4));

-- Location: IOOBUF_X84_Y81_N19
\IROUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_OP\(3),
	devoe => ww_devoe,
	o => ww_IROUT(3));

-- Location: IOOBUF_X89_Y38_N22
\IROUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_OP\(2),
	devoe => ww_devoe,
	o => ww_IROUT(2));

-- Location: IOOBUF_X52_Y0_N53
\IROUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_OP\(1),
	devoe => ww_devoe,
	o => ww_IROUT(1));

-- Location: IOOBUF_X89_Y35_N79
\IROUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_OP\(0),
	devoe => ww_devoe,
	o => ww_IROUT(0));

-- Location: IOOBUF_X70_Y81_N19
\MAROUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|MARout\(7),
	devoe => ww_devoe,
	o => ww_MAROUT(7));

-- Location: IOOBUF_X60_Y0_N2
\MAROUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|MARout\(6),
	devoe => ww_devoe,
	o => ww_MAROUT(6));

-- Location: IOOBUF_X70_Y81_N53
\MAROUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|MARout\(5),
	devoe => ww_devoe,
	o => ww_MAROUT(5));

-- Location: IOOBUF_X64_Y0_N36
\MAROUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|MARout\(4),
	devoe => ww_devoe,
	o => ww_MAROUT(4));

-- Location: IOOBUF_X28_Y0_N19
\MAROUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|MARout\(3),
	devoe => ww_devoe,
	o => ww_MAROUT(3));

-- Location: IOOBUF_X64_Y0_N2
\MAROUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|MARout\(2),
	devoe => ww_devoe,
	o => ww_MAROUT(2));

-- Location: IOOBUF_X56_Y0_N2
\MAROUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|MARout\(1),
	devoe => ww_devoe,
	o => ww_MAROUT(1));

-- Location: IOOBUF_X68_Y0_N36
\MAROUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|MARout\(0),
	devoe => ww_devoe,
	o => ww_MAROUT(0));

-- Location: IOOBUF_X70_Y81_N2
\PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(7),
	devoe => ww_devoe,
	o => ww_PC(7));

-- Location: IOOBUF_X32_Y0_N19
\PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(6),
	devoe => ww_devoe,
	o => ww_PC(6));

-- Location: IOOBUF_X26_Y0_N93
\PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(5),
	devoe => ww_devoe,
	o => ww_PC(5));

-- Location: IOOBUF_X62_Y0_N19
\PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(4),
	devoe => ww_devoe,
	o => ww_PC(4));

-- Location: IOOBUF_X72_Y81_N36
\PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(3),
	devoe => ww_devoe,
	o => ww_PC(3));

-- Location: IOOBUF_X74_Y81_N93
\PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(2),
	devoe => ww_devoe,
	o => ww_PC(2));

-- Location: IOOBUF_X30_Y0_N2
\PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(1),
	devoe => ww_devoe,
	o => ww_PC(1));

-- Location: IOOBUF_X78_Y81_N36
\PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|PCout\(0),
	devoe => ww_devoe,
	o => ww_PC(0));

-- Location: IOOBUF_X36_Y0_N19
\RAM_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_RAM_OUT(15));

-- Location: IOOBUF_X38_Y0_N2
\RAM_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_RAM_OUT(14));

-- Location: IOOBUF_X30_Y0_N36
\RAM_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_RAM_OUT(13));

-- Location: IOOBUF_X54_Y0_N36
\RAM_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_RAM_OUT(12));

-- Location: IOOBUF_X38_Y0_N53
\RAM_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_RAM_OUT(11));

-- Location: IOOBUF_X26_Y0_N59
\RAM_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_RAM_OUT(10));

-- Location: IOOBUF_X50_Y0_N76
\RAM_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_RAM_OUT(9));

-- Location: IOOBUF_X50_Y0_N93
\RAM_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_RAM_OUT(8));

-- Location: IOOBUF_X8_Y0_N19
\RAM_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_RAM_OUT(7));

-- Location: IOOBUF_X50_Y0_N59
\RAM_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_RAM_OUT(6));

-- Location: IOOBUF_X62_Y0_N53
\RAM_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_RAM_OUT(5));

-- Location: IOOBUF_X64_Y0_N19
\RAM_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_RAM_OUT(4));

-- Location: IOOBUF_X58_Y0_N42
\RAM_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_RAM_OUT(3));

-- Location: IOOBUF_X66_Y0_N59
\RAM_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_RAM_OUT(2));

-- Location: IOOBUF_X26_Y0_N42
\RAM_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_RAM_OUT(1));

-- Location: IOOBUF_X68_Y0_N53
\RAM_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|sram|ram_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_RAM_OUT(0));

-- Location: IOOBUF_X60_Y0_N36
\RAMIN[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(15),
	devoe => ww_devoe,
	o => ww_RAMIN(15));

-- Location: IOOBUF_X78_Y81_N53
\RAMIN[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(14),
	devoe => ww_devoe,
	o => ww_RAMIN(14));

-- Location: IOOBUF_X36_Y0_N53
\RAMIN[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(13),
	devoe => ww_devoe,
	o => ww_RAMIN(13));

-- Location: IOOBUF_X62_Y0_N36
\RAMIN[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(12),
	devoe => ww_devoe,
	o => ww_RAMIN(12));

-- Location: IOOBUF_X82_Y81_N59
\RAMIN[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(11),
	devoe => ww_devoe,
	o => ww_RAMIN(11));

-- Location: IOOBUF_X82_Y81_N76
\RAMIN[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(10),
	devoe => ww_devoe,
	o => ww_RAMIN(10));

-- Location: IOOBUF_X34_Y0_N93
\RAMIN[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(9),
	devoe => ww_devoe,
	o => ww_RAMIN(9));

-- Location: IOOBUF_X78_Y81_N2
\RAMIN[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(8),
	devoe => ww_devoe,
	o => ww_RAMIN(8));

-- Location: IOOBUF_X32_Y0_N53
\RAMIN[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(7),
	devoe => ww_devoe,
	o => ww_RAMIN(7));

-- Location: IOOBUF_X60_Y0_N19
\RAMIN[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(6),
	devoe => ww_devoe,
	o => ww_RAMIN(6));

-- Location: IOOBUF_X68_Y0_N2
\RAMIN[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(5),
	devoe => ww_devoe,
	o => ww_RAMIN(5));

-- Location: IOOBUF_X62_Y0_N2
\RAMIN[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(4),
	devoe => ww_devoe,
	o => ww_RAMIN(4));

-- Location: IOOBUF_X89_Y38_N56
\RAMIN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(3),
	devoe => ww_devoe,
	o => ww_RAMIN(3));

-- Location: IOOBUF_X40_Y0_N2
\RAMIN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(2),
	devoe => ww_devoe,
	o => ww_RAMIN(2));

-- Location: IOOBUF_X82_Y81_N42
\RAMIN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(1),
	devoe => ww_devoe,
	o => ww_RAMIN(1));

-- Location: IOOBUF_X68_Y0_N19
\RAMIN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MBR_RAM\(0),
	devoe => ww_devoe,
	o => ww_RAMIN(0));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y35_N44
\clkMBR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkMBR,
	o => \clkMBR~input_o\);

-- Location: CLKCTRL_G8
\clkMBR~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clkMBR~input_o\,
	outclk => \clkMBR~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y8_N4
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X75_Y8_N30
\inst7|MBR_BR[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_BR[0]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(0),
	combout => \inst7|MBR_BR[0]~feeder_combout\);

-- Location: FF_X79_Y7_N53
\inst7|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~11_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(4));

-- Location: LABCELL_X79_Y7_N36
\inst7|temp~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~11_combout\ = ( \inst7|temp\(4) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(20)) # (\inst|ACC\(4)) ) ) # ( !\inst7|temp\(4) & ( (\inst|ACC\(4) & \inst13|srom|rom_block|auto_generated|q_a\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_ACC\(4),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst7|ALT_INV_temp\(4),
	combout => \inst7|temp~11_combout\);

-- Location: LABCELL_X77_Y8_N45
\inst7|MBR_RAM[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_RAM[15]~0_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(17) & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(17),
	combout => \inst7|MBR_RAM[15]~0_combout\);

-- Location: FF_X79_Y7_N28
\inst7|MBR_RAM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~11_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(4));

-- Location: LABCELL_X75_Y7_N39
\inst7|temp[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp[5]~feeder_combout\ = ( \inst7|temp~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_temp~10_combout\,
	combout => \inst7|temp[5]~feeder_combout\);

-- Location: FF_X75_Y7_N41
\inst7|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|temp[5]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(5));

-- Location: LABCELL_X75_Y7_N21
\inst7|temp~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~10_combout\ = ( \inst|ACC\(5) & ( \inst7|temp\(5) ) ) # ( !\inst|ACC\(5) & ( \inst7|temp\(5) & ( !\inst13|srom|rom_block|auto_generated|q_a\(20) ) ) ) # ( \inst|ACC\(5) & ( !\inst7|temp\(5) & ( \inst13|srom|rom_block|auto_generated|q_a\(20) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datae => \inst|ALT_INV_ACC\(5),
	dataf => \inst7|ALT_INV_temp\(5),
	combout => \inst7|temp~10_combout\);

-- Location: LABCELL_X75_Y7_N57
\inst7|MBR_RAM[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_RAM[5]~feeder_combout\ = ( \inst7|temp~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_temp~10_combout\,
	combout => \inst7|MBR_RAM[5]~feeder_combout\);

-- Location: FF_X75_Y7_N58
\inst7|MBR_RAM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_RAM[5]~feeder_combout\,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(5));

-- Location: FF_X79_Y7_N14
\inst7|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~9_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(6));

-- Location: LABCELL_X79_Y7_N39
\inst7|temp~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~9_combout\ = ( \inst7|temp\(6) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(20)) # (\inst|ACC\(6)) ) ) # ( !\inst7|temp\(6) & ( (\inst|ACC\(6) & \inst13|srom|rom_block|auto_generated|q_a\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(6),
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst7|ALT_INV_temp\(6),
	combout => \inst7|temp~9_combout\);

-- Location: FF_X79_Y7_N25
\inst7|MBR_RAM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~9_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(6));

-- Location: LABCELL_X83_Y8_N21
\inst7|MBR_BR[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_BR[1]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(1),
	combout => \inst7|MBR_BR[1]~feeder_combout\);

-- Location: FF_X83_Y8_N23
\inst7|MBR_BR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_BR[1]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(1));

-- Location: MLABCELL_X82_Y8_N45
\inst7|MBR_BR[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_BR[2]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(2),
	combout => \inst7|MBR_BR[2]~feeder_combout\);

-- Location: FF_X82_Y8_N47
\inst7|MBR_BR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_BR[2]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(2));

-- Location: FF_X82_Y8_N29
\inst7|MBR_BR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst14|sram|ram_block|auto_generated|q_a\(3),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(3));

-- Location: FF_X83_Y8_N59
\inst7|MBR_BR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst14|sram|ram_block|auto_generated|q_a\(4),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(4));

-- Location: MLABCELL_X82_Y8_N3
\inst7|MBR_BR[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_BR[5]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(5),
	combout => \inst7|MBR_BR[5]~feeder_combout\);

-- Location: FF_X82_Y8_N5
\inst7|MBR_BR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_BR[5]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(5));

-- Location: FF_X82_Y8_N44
\inst7|MBR_BR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst14|sram|ram_block|auto_generated|q_a\(6),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(6));

-- Location: MLABCELL_X82_Y8_N33
\inst7|MBR_BR[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_BR[7]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(7),
	combout => \inst7|MBR_BR[7]~feeder_combout\);

-- Location: FF_X82_Y8_N35
\inst7|MBR_BR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_BR[7]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(7));

-- Location: MLABCELL_X78_Y7_N15
\inst7|temp[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp[8]~feeder_combout\ = ( \inst7|temp~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_temp~7_combout\,
	combout => \inst7|temp[8]~feeder_combout\);

-- Location: FF_X78_Y7_N17
\inst7|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|temp[8]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(8));

-- Location: MLABCELL_X78_Y7_N27
\inst7|temp~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~7_combout\ = ( \inst|ACC\(8) & ( \inst7|temp\(8) ) ) # ( !\inst|ACC\(8) & ( \inst7|temp\(8) & ( !\inst13|srom|rom_block|auto_generated|q_a\(20) ) ) ) # ( \inst|ACC\(8) & ( !\inst7|temp\(8) & ( \inst13|srom|rom_block|auto_generated|q_a\(20) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datae => \inst|ALT_INV_ACC\(8),
	dataf => \inst7|ALT_INV_temp\(8),
	combout => \inst7|temp~7_combout\);

-- Location: FF_X78_Y7_N41
\inst7|MBR_RAM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~7_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(8));

-- Location: FF_X80_Y7_N53
\inst7|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~6_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(9));

-- Location: LABCELL_X80_Y7_N39
\inst7|temp~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~6_combout\ = ( \inst7|temp\(9) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(20)) # (\inst|ACC\(9)) ) ) # ( !\inst7|temp\(9) & ( (\inst|ACC\(9) & \inst13|srom|rom_block|auto_generated|q_a\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(9),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst7|ALT_INV_temp\(9),
	combout => \inst7|temp~6_combout\);

-- Location: FF_X80_Y7_N32
\inst7|MBR_RAM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~6_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(9));

-- Location: FF_X80_Y7_N17
\inst7|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~5_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(10));

-- Location: LABCELL_X80_Y7_N48
\inst7|temp~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~5_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(20) & ( \inst7|temp\(10) & ( \inst|ACC\(10) ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(20) & ( \inst7|temp\(10) ) ) # ( \inst13|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst7|temp\(10) & ( \inst|ACC\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_ACC\(10),
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst7|ALT_INV_temp\(10),
	combout => \inst7|temp~5_combout\);

-- Location: FF_X80_Y7_N35
\inst7|MBR_RAM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~5_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(10));

-- Location: FF_X80_Y7_N28
\inst7|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~4_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(11));

-- Location: LABCELL_X80_Y7_N36
\inst7|temp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~4_combout\ = ( \inst7|temp\(11) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(20)) # (\inst|ACC\(11)) ) ) # ( !\inst7|temp\(11) & ( (\inst|ACC\(11) & \inst13|srom|rom_block|auto_generated|q_a\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ACC\(11),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst7|ALT_INV_temp\(11),
	combout => \inst7|temp~4_combout\);

-- Location: FF_X80_Y7_N23
\inst7|MBR_RAM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~4_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(11));

-- Location: MLABCELL_X82_Y8_N39
\inst7|MBR_BR[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_BR[9]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(9),
	combout => \inst7|MBR_BR[9]~feeder_combout\);

-- Location: FF_X82_Y8_N41
\inst7|MBR_BR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_BR[9]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(9));

-- Location: FF_X83_Y8_N41
\inst7|MBR_BR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst14|sram|ram_block|auto_generated|q_a\(10),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(10));

-- Location: MLABCELL_X82_Y8_N12
\inst7|MBR_BR[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_BR[11]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(11),
	combout => \inst7|MBR_BR[11]~feeder_combout\);

-- Location: FF_X82_Y8_N14
\inst7|MBR_BR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_BR[11]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(11));

-- Location: LABCELL_X83_Y8_N15
\inst7|MBR_BR[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_BR[12]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst7|MBR_BR[12]~feeder_combout\);

-- Location: FF_X83_Y8_N17
\inst7|MBR_BR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_BR[12]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(12));

-- Location: MLABCELL_X82_Y8_N21
\inst7|MBR_BR[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_BR[13]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst7|MBR_BR[13]~feeder_combout\);

-- Location: FF_X82_Y8_N23
\inst7|MBR_BR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_BR[13]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(13));

-- Location: FF_X82_Y8_N56
\inst7|MBR_BR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst14|sram|ram_block|auto_generated|q_a\(14),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(14));

-- Location: LABCELL_X81_Y7_N54
\inst7|temp[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp[13]~feeder_combout\ = ( \inst7|temp~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_temp~2_combout\,
	combout => \inst7|temp[13]~feeder_combout\);

-- Location: FF_X81_Y7_N56
\inst7|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|temp[13]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(13));

-- Location: LABCELL_X81_Y7_N21
\inst7|temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~2_combout\ = ( \inst7|temp\(13) & ( \inst|ACC\(13) ) ) # ( !\inst7|temp\(13) & ( \inst|ACC\(13) & ( \inst13|srom|rom_block|auto_generated|q_a\(20) ) ) ) # ( \inst7|temp\(13) & ( !\inst|ACC\(13) & ( 
-- !\inst13|srom|rom_block|auto_generated|q_a\(20) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datae => \inst7|ALT_INV_temp\(13),
	dataf => \inst|ALT_INV_ACC\(13),
	combout => \inst7|temp~2_combout\);

-- Location: LABCELL_X81_Y7_N42
\inst7|MBR_RAM[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_RAM[13]~feeder_combout\ = ( \inst7|temp~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_temp~2_combout\,
	combout => \inst7|MBR_RAM[13]~feeder_combout\);

-- Location: FF_X81_Y7_N44
\inst7|MBR_RAM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_RAM[13]~feeder_combout\,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(13));

-- Location: FF_X78_Y7_N26
\inst7|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~1_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(14));

-- Location: MLABCELL_X78_Y7_N6
\inst7|temp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~1_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(20) & ( \inst7|temp\(14) & ( \inst|ACC\(14) ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(20) & ( \inst7|temp\(14) ) ) # ( \inst13|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst7|temp\(14) & ( \inst|ACC\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_ACC\(14),
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst7|ALT_INV_temp\(14),
	combout => \inst7|temp~1_combout\);

-- Location: FF_X78_Y7_N11
\inst7|MBR_RAM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~1_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(14));

-- Location: FF_X79_Y8_N35
\inst7|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(15));

-- Location: LABCELL_X79_Y8_N45
\inst7|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~0_combout\ = ( \inst7|temp\(15) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(20)) # (\inst|ACC\(15)) ) ) # ( !\inst7|temp\(15) & ( (\inst|ACC\(15) & \inst13|srom|rom_block|auto_generated|q_a\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ACC\(15),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst7|ALT_INV_temp\(15),
	combout => \inst7|temp~0_combout\);

-- Location: FF_X79_Y8_N23
\inst7|MBR_RAM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~0_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(15));

-- Location: M10K_X76_Y7_N0
\inst14|sram|ram_block|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A00016000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C000012C0032B0022A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ram.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst14|altram:sram|altsyncram:ram_block|altsyncram_7pf1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \inst13|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst14|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X75_Y8_N26
\inst7|MBR_BR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst14|sram|ram_block|auto_generated|q_a\(15),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(15));

-- Location: DSP_X86_Y8_N0
\inst|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 16,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 16,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst|Mult0~8_ACLR_bus\,
	clk => \inst|Mult0~8_CLK_bus\,
	ena => \inst|Mult0~8_ENA_bus\,
	ax => \inst|Mult0~8_AX_bus\,
	ay => \inst|Mult0~8_AY_bus\,
	resulta => \inst|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X77_Y8_N57
\inst7|MBR_OP[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_OP[7]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(15),
	combout => \inst7|MBR_OP[7]~feeder_combout\);

-- Location: M10K_X76_Y8_N0
\inst13|srom|rom_block|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100004B000000000000040800000000C0B0000000810200000084000000000000000000000000000408000000008050000000840000000000000000000000000004080000000080A20000008400000000000000000000000000040800000008092000000084000000000000000000000000000408000000008082",
	mem_init0 => "000000840000000000000000040800000000C0700000008102000000840000000000000000040800000000C0600000008102000000840000000000000000040800000000C0400000008102000000840000000000000000040800000000C0300000008102000000840000000000000000040800000000C030000000810A0000008400000000000000000000000000040800000000920200000084000000000000000000000000000000000000000000000000000000000100004B0001000046000100003C00010000370001000032000100002D000100002800010000410001000023000100001E0001000019000100001400020000000000A000000000810000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom:inst13|altrom:srom|altsyncram:rom_block|altsyncram_r661:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 40,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst13|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X77_Y8_N33
\inst7|MBR_OP[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_OP[5]~0_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(21) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(21) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(21),
	combout => \inst7|MBR_OP[5]~0_combout\);

-- Location: FF_X77_Y8_N59
\inst7|MBR_OP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_OP[7]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst7|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_OP\(7));

-- Location: FF_X77_Y8_N5
\inst7|MBR_OP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst14|sram|ram_block|auto_generated|q_a\(8),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst7|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_OP\(0));

-- Location: LABCELL_X77_Y7_N0
\inst3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~29_sumout\ = SUM(( \inst3|CARout\(0) ) + ( (\inst7|MBR_OP\(0)) # (\inst3|Equal3~0_combout\) ) + ( !VCC ))
-- \inst3|Add0~30\ = CARRY(( \inst3|CARout\(0) ) + ( (\inst7|MBR_OP\(0)) # (\inst3|Equal3~0_combout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Equal3~0_combout\,
	datac => \inst7|ALT_INV_MBR_OP\(0),
	datad => \inst3|ALT_INV_CARout\(0),
	cin => GND,
	sumout => \inst3|Add0~29_sumout\,
	cout => \inst3|Add0~30\);

-- Location: LABCELL_X77_Y7_N3
\inst3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~25_sumout\ = SUM(( \inst3|CARout\(1) ) + ( (!\inst3|Equal3~0_combout\ & \inst7|MBR_OP\(1)) ) + ( \inst3|Add0~30\ ))
-- \inst3|Add0~26\ = CARRY(( \inst3|CARout\(1) ) + ( (!\inst3|Equal3~0_combout\ & \inst7|MBR_OP\(1)) ) + ( \inst3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Equal3~0_combout\,
	datac => \inst7|ALT_INV_MBR_OP\(1),
	datad => \inst3|ALT_INV_CARout\(1),
	cin => \inst3|Add0~30\,
	sumout => \inst3|Add0~25_sumout\,
	cout => \inst3|Add0~26\);

-- Location: LABCELL_X77_Y7_N6
\inst3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~21_sumout\ = SUM(( \inst3|CARout\(2) ) + ( (!\inst3|Equal3~0_combout\ & \inst7|MBR_OP\(2)) ) + ( \inst3|Add0~26\ ))
-- \inst3|Add0~22\ = CARRY(( \inst3|CARout\(2) ) + ( (!\inst3|Equal3~0_combout\ & \inst7|MBR_OP\(2)) ) + ( \inst3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Equal3~0_combout\,
	datac => \inst7|ALT_INV_MBR_OP\(2),
	datad => \inst3|ALT_INV_CARout\(2),
	cin => \inst3|Add0~26\,
	sumout => \inst3|Add0~21_sumout\,
	cout => \inst3|Add0~22\);

-- Location: LABCELL_X77_Y7_N9
\inst3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~17_sumout\ = SUM(( \inst3|CARout\(3) ) + ( (!\inst3|Equal3~0_combout\ & \inst7|MBR_OP\(3)) ) + ( \inst3|Add0~22\ ))
-- \inst3|Add0~18\ = CARRY(( \inst3|CARout\(3) ) + ( (!\inst3|Equal3~0_combout\ & \inst7|MBR_OP\(3)) ) + ( \inst3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Equal3~0_combout\,
	datac => \inst7|ALT_INV_MBR_OP\(3),
	datad => \inst3|ALT_INV_CARout\(3),
	cin => \inst3|Add0~22\,
	sumout => \inst3|Add0~17_sumout\,
	cout => \inst3|Add0~18\);

-- Location: LABCELL_X77_Y7_N12
\inst3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~13_sumout\ = SUM(( \inst3|CARout\(4) ) + ( (!\inst3|Equal3~0_combout\ & \inst7|MBR_OP\(4)) ) + ( \inst3|Add0~18\ ))
-- \inst3|Add0~14\ = CARRY(( \inst3|CARout\(4) ) + ( (!\inst3|Equal3~0_combout\ & \inst7|MBR_OP\(4)) ) + ( \inst3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Equal3~0_combout\,
	datac => \inst7|ALT_INV_MBR_OP\(4),
	datad => \inst3|ALT_INV_CARout\(4),
	cin => \inst3|Add0~18\,
	sumout => \inst3|Add0~13_sumout\,
	cout => \inst3|Add0~14\);

-- Location: LABCELL_X77_Y7_N15
\inst3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~9_sumout\ = SUM(( \inst3|CARout\(5) ) + ( (!\inst3|Equal3~0_combout\ & \inst7|MBR_OP\(5)) ) + ( \inst3|Add0~14\ ))
-- \inst3|Add0~10\ = CARRY(( \inst3|CARout\(5) ) + ( (!\inst3|Equal3~0_combout\ & \inst7|MBR_OP\(5)) ) + ( \inst3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Equal3~0_combout\,
	datac => \inst7|ALT_INV_MBR_OP\(5),
	datad => \inst3|ALT_INV_CARout\(5),
	cin => \inst3|Add0~14\,
	sumout => \inst3|Add0~9_sumout\,
	cout => \inst3|Add0~10\);

-- Location: LABCELL_X77_Y7_N18
\inst3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~5_sumout\ = SUM(( \inst3|CARout\(6) ) + ( (!\inst3|Equal3~0_combout\ & \inst7|MBR_OP\(6)) ) + ( \inst3|Add0~10\ ))
-- \inst3|Add0~6\ = CARRY(( \inst3|CARout\(6) ) + ( (!\inst3|Equal3~0_combout\ & \inst7|MBR_OP\(6)) ) + ( \inst3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Equal3~0_combout\,
	datac => \inst7|ALT_INV_MBR_OP\(6),
	datad => \inst3|ALT_INV_CARout\(6),
	cin => \inst3|Add0~10\,
	sumout => \inst3|Add0~5_sumout\,
	cout => \inst3|Add0~6\);

-- Location: LABCELL_X77_Y7_N21
\inst3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_sumout\ = SUM(( \inst3|CARout\(7) ) + ( (!\inst3|Equal3~0_combout\ & \inst7|MBR_OP\(7)) ) + ( \inst3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Equal3~0_combout\,
	datac => \inst7|ALT_INV_MBR_OP\(7),
	datad => \inst3|ALT_INV_CARout\(7),
	cin => \inst3|Add0~6\,
	sumout => \inst3|Add0~1_sumout\);

-- Location: LABCELL_X77_Y7_N48
\inst3|CARout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|CARout[0]~0_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(23) & ( \reset~input_o\ & ( ((\inst13|srom|rom_block|auto_generated|q_a\(24)) # (\inst13|srom|rom_block|auto_generated|q_a\(26))) # (\inst13|srom|rom_block|auto_generated|q_a\(25)) 
-- ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(23) & ( \reset~input_o\ & ( (!\inst13|srom|rom_block|auto_generated|q_a\(25) $ (\inst13|srom|rom_block|auto_generated|q_a\(24))) # (\inst13|srom|rom_block|auto_generated|q_a\(26)) ) ) ) # ( 
-- \inst13|srom|rom_block|auto_generated|q_a\(23) & ( !\reset~input_o\ ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(23) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111011011101110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(25),
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(26),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(24),
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(23),
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst3|CARout[0]~0_combout\);

-- Location: LABCELL_X77_Y7_N54
\inst3|CARout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|CARout[0]~1_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(23) & ( ((\inst13|srom|rom_block|auto_generated|q_a\(24)) # (\inst13|srom|rom_block|auto_generated|q_a\(25))) # (\inst13|srom|rom_block|auto_generated|q_a\(26)) ) ) # ( 
-- !\inst13|srom|rom_block|auto_generated|q_a\(23) & ( ((!\inst13|srom|rom_block|auto_generated|q_a\(25)) # (\inst13|srom|rom_block|auto_generated|q_a\(24))) # (\inst13|srom|rom_block|auto_generated|q_a\(26)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111001111111111111111110011111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(26),
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(25),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(24),
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(23),
	combout => \inst3|CARout[0]~1_combout\);

-- Location: LABCELL_X77_Y7_N27
\inst3|CARout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|CARout[0]~2_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(25) & ( \inst13|srom|rom_block|auto_generated|q_a\(26) & ( !\reset~input_o\ ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(25) & ( 
-- \inst13|srom|rom_block|auto_generated|q_a\(26) & ( (!\reset~input_o\) # ((!\inst13|srom|rom_block|auto_generated|q_a\(24) & !\inst13|srom|rom_block|auto_generated|q_a\(23))) ) ) ) # ( \inst13|srom|rom_block|auto_generated|q_a\(25) & ( 
-- !\inst13|srom|rom_block|auto_generated|q_a\(26) & ( (!\reset~input_o\) # ((!\inst13|srom|rom_block|auto_generated|q_a\(24) & !\inst13|srom|rom_block|auto_generated|q_a\(23))) ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(25) & ( 
-- !\inst13|srom|rom_block|auto_generated|q_a\(26) & ( (!\reset~input_o\) # (!\inst13|srom|rom_block|auto_generated|q_a\(24) $ (!\inst13|srom|rom_block|auto_generated|q_a\(23))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111100111111001100110011111100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(24),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(23),
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(25),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(26),
	combout => \inst3|CARout[0]~2_combout\);

-- Location: FF_X77_Y7_N23
\inst3|CARout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|Add0~1_sumout\,
	asdata => \inst13|srom|rom_block|auto_generated|q_a\(7),
	sclr => \inst3|CARout[0]~0_combout\,
	sload => \inst3|CARout[0]~1_combout\,
	ena => \inst3|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|CARout\(7));

-- Location: LABCELL_X77_Y8_N42
\inst|ACC[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC[3]~6_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(12) & ( (\inst|Equal4~0_combout\ & !\inst13|srom|rom_block|auto_generated|q_a\(13)) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(12) & ( (\inst|Equal4~0_combout\ & 
-- \inst13|srom|rom_block|auto_generated|q_a\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Equal4~0_combout\,
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst|ACC[3]~6_combout\);

-- Location: FF_X83_Y8_N8
\inst2|BRout[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	asdata => \inst7|MBR_BR\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[1]~_Duplicate_1_q\);

-- Location: LABCELL_X80_Y8_N54
\inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = ( !\inst13|srom|rom_block|auto_generated|q_a\(12) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(13) & (!\inst13|srom|rom_block|auto_generated|q_a\(15) & \inst13|srom|rom_block|auto_generated|q_a\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst|Equal1~0_combout\);

-- Location: LABCELL_X75_Y8_N39
\inst2|BRout[0]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout[0]~_Duplicate_1feeder_combout\ = ( \inst7|MBR_BR\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_BR\(0),
	combout => \inst2|BRout[0]~_Duplicate_1feeder_combout\);

-- Location: FF_X75_Y8_N41
\inst2|BRout[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	d => \inst2|BRout[0]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[0]~_Duplicate_1_q\);

-- Location: LABCELL_X80_Y8_N0
\inst|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~66_cout\ = CARRY(( \inst|Equal1~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Equal1~0_combout\,
	cin => GND,
	cout => \inst|Add0~66_cout\);

-- Location: LABCELL_X80_Y8_N3
\inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~61_sumout\ = SUM(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[0]~_Duplicate_1_q\) ) + ( \inst|ACC\(0) ) + ( \inst|Add0~66_cout\ ))
-- \inst|Add0~62\ = CARRY(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[0]~_Duplicate_1_q\) ) + ( \inst|ACC\(0) ) + ( \inst|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(0),
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout[0]~_Duplicate_1_q\,
	cin => \inst|Add0~66_cout\,
	sumout => \inst|Add0~61_sumout\,
	cout => \inst|Add0~62\);

-- Location: LABCELL_X80_Y8_N6
\inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~57_sumout\ = SUM(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[1]~_Duplicate_1_q\) ) + ( \inst|ACC\(1) ) + ( \inst|Add0~62\ ))
-- \inst|Add0~58\ = CARRY(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[1]~_Duplicate_1_q\) ) + ( \inst|ACC\(1) ) + ( \inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout[1]~_Duplicate_1_q\,
	dataf => \inst|ALT_INV_ACC\(1),
	cin => \inst|Add0~62\,
	sumout => \inst|Add0~57_sumout\,
	cout => \inst|Add0~58\);

-- Location: LABCELL_X79_Y8_N48
\inst|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = ( !\inst13|srom|rom_block|auto_generated|q_a\(15) & ( (\inst13|srom|rom_block|auto_generated|q_a\(13) & \inst13|srom|rom_block|auto_generated|q_a\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	combout => \inst|Equal2~0_combout\);

-- Location: LABCELL_X79_Y8_N0
\inst|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal4~1_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(15) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(12) & (!\inst13|srom|rom_block|auto_generated|q_a\(13) & !\inst13|srom|rom_block|auto_generated|q_a\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	combout => \inst|Equal4~1_combout\);

-- Location: LABCELL_X81_Y8_N18
\inst|ACC~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~35_combout\ = ( \inst|Equal4~1_combout\ & ( \inst|ACC\(1) & ( !\inst|Equal2~0_combout\ ) ) ) # ( !\inst|Equal4~1_combout\ & ( \inst|ACC\(1) & ( (!\inst|Equal2~0_combout\ & (((!\inst|Add0~57_sumout\)))) # (\inst|Equal2~0_combout\ & 
-- (!\inst13|srom|rom_block|auto_generated|q_a\(12) & (!\inst2|BRout[1]~_Duplicate_1_q\))) ) ) ) # ( \inst|Equal4~1_combout\ & ( !\inst|ACC\(1) & ( (!\inst2|BRout[1]~_Duplicate_1_q\ & \inst|Equal2~0_combout\) ) ) ) # ( !\inst|Equal4~1_combout\ & ( 
-- !\inst|ACC\(1) & ( (!\inst|Equal2~0_combout\ & (((!\inst|Add0~57_sumout\)))) # (\inst|Equal2~0_combout\ & ((!\inst13|srom|rom_block|auto_generated|q_a\(12)) # ((!\inst2|BRout[1]~_Duplicate_1_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011101110000000001100110011110000100010001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst2|ALT_INV_BRout[1]~_Duplicate_1_q\,
	datac => \inst|ALT_INV_Add0~57_sumout\,
	datad => \inst|ALT_INV_Equal2~0_combout\,
	datae => \inst|ALT_INV_Equal4~1_combout\,
	dataf => \inst|ALT_INV_ACC\(1),
	combout => \inst|ACC~35_combout\);

-- Location: LABCELL_X81_Y8_N12
\inst|ACC~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~36_combout\ = ( \inst|ACC~7_combout\ & ( \inst|ACC~35_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(1)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(0))) ) ) ) # ( !\inst|ACC~7_combout\ & ( \inst|ACC~35_combout\ & ( (\inst|ACC\(2) & 
-- \inst|ACC[3]~6_combout\) ) ) ) # ( \inst|ACC~7_combout\ & ( !\inst|ACC~35_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(1)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(0))) ) ) ) # ( !\inst|ACC~7_combout\ & ( !\inst|ACC~35_combout\ & ( 
-- (!\inst|ACC[3]~6_combout\) # (\inst|ACC\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011000011110101010100000000001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(0),
	datab => \inst|ALT_INV_ACC\(2),
	datac => \inst|ALT_INV_temp\(1),
	datad => \inst|ALT_INV_ACC[3]~6_combout\,
	datae => \inst|ALT_INV_ACC~7_combout\,
	dataf => \inst|ALT_INV_ACC~35_combout\,
	combout => \inst|ACC~36_combout\);

-- Location: LABCELL_X77_Y8_N12
\inst|ACC[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC[3]~9_combout\ = ( \reset~input_o\ & ( \inst13|srom|rom_block|auto_generated|q_a\(12) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(15) & (!\inst13|srom|rom_block|auto_generated|q_a\(13))) # (\inst13|srom|rom_block|auto_generated|q_a\(15) & 
-- ((\inst13|srom|rom_block|auto_generated|q_a\(14)))) ) ) ) # ( !\reset~input_o\ & ( \inst13|srom|rom_block|auto_generated|q_a\(12) ) ) # ( \reset~input_o\ & ( !\inst13|srom|rom_block|auto_generated|q_a\(12) & ( 
-- !\inst13|srom|rom_block|auto_generated|q_a\(15) $ (\inst13|srom|rom_block|auto_generated|q_a\(14)) ) ) ) # ( !\reset~input_o\ & ( !\inst13|srom|rom_block|auto_generated|q_a\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100000000111111111111111111111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datae => \ALT_INV_reset~input_o\,
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst|ACC[3]~9_combout\);

-- Location: LABCELL_X77_Y8_N0
\inst|ACC[3]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC[3]~10_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(11) & ( \inst13|srom|rom_block|auto_generated|q_a\(12) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(11) & ( \inst13|srom|rom_block|auto_generated|q_a\(12) & ( 
-- (!\reset~input_o\) # ((!\inst13|srom|rom_block|auto_generated|q_a\(15) & (\inst13|srom|rom_block|auto_generated|q_a\(13))) # (\inst13|srom|rom_block|auto_generated|q_a\(15) & ((!\inst13|srom|rom_block|auto_generated|q_a\(14))))) ) ) ) # ( 
-- \inst13|srom|rom_block|auto_generated|q_a\(11) & ( !\inst13|srom|rom_block|auto_generated|q_a\(12) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(11) & ( !\inst13|srom|rom_block|auto_generated|q_a\(12) & ( (!\reset~input_o\) # 
-- (!\inst13|srom|rom_block|auto_generated|q_a\(15) $ (!\inst13|srom|rom_block|auto_generated|q_a\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111010111111111111111110111111101110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(11),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst|ACC[3]~10_combout\);

-- Location: FF_X81_Y8_N14
\inst|ACC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~36_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(1));

-- Location: MLABCELL_X82_Y8_N6
\inst2|BRout[14]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout[14]~_Duplicate_1feeder_combout\ = ( \inst7|MBR_BR\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_BR\(14),
	combout => \inst2|BRout[14]~_Duplicate_1feeder_combout\);

-- Location: FF_X82_Y8_N7
\inst2|BRout[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	d => \inst2|BRout[14]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[14]~_Duplicate_1_q\);

-- Location: FF_X82_Y8_N11
\inst2|BRout[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	asdata => \inst7|MBR_BR\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[13]~_Duplicate_1_q\);

-- Location: LABCELL_X83_Y8_N24
\inst2|BRout[12]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout[12]~_Duplicate_1feeder_combout\ = ( \inst7|MBR_BR\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_BR\(12),
	combout => \inst2|BRout[12]~_Duplicate_1feeder_combout\);

-- Location: FF_X83_Y8_N26
\inst2|BRout[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	d => \inst2|BRout[12]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[12]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y8_N48
\inst2|BRout[11]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout[11]~_Duplicate_1feeder_combout\ = ( \inst7|MBR_BR\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_BR\(11),
	combout => \inst2|BRout[11]~_Duplicate_1feeder_combout\);

-- Location: FF_X82_Y8_N49
\inst2|BRout[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	d => \inst2|BRout[11]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[11]~_Duplicate_1_q\);

-- Location: LABCELL_X83_Y8_N30
\inst2|BRout[10]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout[10]~_Duplicate_1feeder_combout\ = ( \inst7|MBR_BR\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_BR\(10),
	combout => \inst2|BRout[10]~_Duplicate_1feeder_combout\);

-- Location: FF_X83_Y8_N32
\inst2|BRout[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	d => \inst2|BRout[10]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[10]~_Duplicate_1_q\);

-- Location: FF_X82_Y8_N52
\inst2|BRout[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	asdata => \inst7|MBR_BR\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[9]~_Duplicate_1_q\);

-- Location: FF_X82_Y8_N8
\inst2|BRout[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	asdata => \inst7|MBR_BR\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[8]~_Duplicate_1_q\);

-- Location: FF_X82_Y8_N50
\inst2|BRout[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	asdata => \inst7|MBR_BR\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[7]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y8_N9
\inst2|BRout[6]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout[6]~_Duplicate_1feeder_combout\ = ( \inst7|MBR_BR\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_BR\(6),
	combout => \inst2|BRout[6]~_Duplicate_1feeder_combout\);

-- Location: FF_X82_Y8_N10
\inst2|BRout[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	d => \inst2|BRout[6]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[6]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y8_N51
\inst2|BRout[5]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout[5]~_Duplicate_1feeder_combout\ = ( \inst7|MBR_BR\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_BR\(5),
	combout => \inst2|BRout[5]~_Duplicate_1feeder_combout\);

-- Location: FF_X82_Y8_N53
\inst2|BRout[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	d => \inst2|BRout[5]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[5]~_Duplicate_1_q\);

-- Location: LABCELL_X83_Y8_N51
\inst2|BRout[4]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout[4]~_Duplicate_1feeder_combout\ = ( \inst7|MBR_BR\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_BR\(4),
	combout => \inst2|BRout[4]~_Duplicate_1feeder_combout\);

-- Location: FF_X83_Y8_N53
\inst2|BRout[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	d => \inst2|BRout[4]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[4]~_Duplicate_1_q\);

-- Location: LABCELL_X81_Y8_N57
\inst2|BRout[3]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout[3]~_Duplicate_1feeder_combout\ = ( \inst7|MBR_BR\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_BR\(3),
	combout => \inst2|BRout[3]~_Duplicate_1feeder_combout\);

-- Location: FF_X81_Y8_N59
\inst2|BRout[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	d => \inst2|BRout[3]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[3]~_Duplicate_1_q\);

-- Location: FF_X81_Y8_N41
\inst2|BRout[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	asdata => \inst7|MBR_BR\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[2]~_Duplicate_1_q\);

-- Location: LABCELL_X80_Y8_N9
\inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~53_sumout\ = SUM(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[2]~_Duplicate_1_q\) ) + ( \inst|ACC\(2) ) + ( \inst|Add0~58\ ))
-- \inst|Add0~54\ = CARRY(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[2]~_Duplicate_1_q\) ) + ( \inst|ACC\(2) ) + ( \inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(2),
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout[2]~_Duplicate_1_q\,
	cin => \inst|Add0~58\,
	sumout => \inst|Add0~53_sumout\,
	cout => \inst|Add0~54\);

-- Location: LABCELL_X80_Y8_N12
\inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~49_sumout\ = SUM(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[3]~_Duplicate_1_q\) ) + ( \inst|ACC\(3) ) + ( \inst|Add0~54\ ))
-- \inst|Add0~50\ = CARRY(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[3]~_Duplicate_1_q\) ) + ( \inst|ACC\(3) ) + ( \inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout[3]~_Duplicate_1_q\,
	dataf => \inst|ALT_INV_ACC\(3),
	cin => \inst|Add0~54\,
	sumout => \inst|Add0~49_sumout\,
	cout => \inst|Add0~50\);

-- Location: LABCELL_X80_Y8_N15
\inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~45_sumout\ = SUM(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[4]~_Duplicate_1_q\) ) + ( \inst|ACC\(4) ) + ( \inst|Add0~50\ ))
-- \inst|Add0~46\ = CARRY(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[4]~_Duplicate_1_q\) ) + ( \inst|ACC\(4) ) + ( \inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout[4]~_Duplicate_1_q\,
	dataf => \inst|ALT_INV_ACC\(4),
	cin => \inst|Add0~50\,
	sumout => \inst|Add0~45_sumout\,
	cout => \inst|Add0~46\);

-- Location: LABCELL_X80_Y8_N18
\inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~41_sumout\ = SUM(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[5]~_Duplicate_1_q\) ) + ( \inst|ACC\(5) ) + ( \inst|Add0~46\ ))
-- \inst|Add0~42\ = CARRY(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[5]~_Duplicate_1_q\) ) + ( \inst|ACC\(5) ) + ( \inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(5),
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout[5]~_Duplicate_1_q\,
	cin => \inst|Add0~46\,
	sumout => \inst|Add0~41_sumout\,
	cout => \inst|Add0~42\);

-- Location: LABCELL_X80_Y8_N21
\inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~37_sumout\ = SUM(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[6]~_Duplicate_1_q\) ) + ( \inst|ACC\(6) ) + ( \inst|Add0~42\ ))
-- \inst|Add0~38\ = CARRY(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[6]~_Duplicate_1_q\) ) + ( \inst|ACC\(6) ) + ( \inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_ACC\(6),
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout[6]~_Duplicate_1_q\,
	cin => \inst|Add0~42\,
	sumout => \inst|Add0~37_sumout\,
	cout => \inst|Add0~38\);

-- Location: LABCELL_X80_Y8_N24
\inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~33_sumout\ = SUM(( \inst|ACC\(7) ) + ( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[7]~_Duplicate_1_q\) ) + ( \inst|Add0~38\ ))
-- \inst|Add0~34\ = CARRY(( \inst|ACC\(7) ) + ( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[7]~_Duplicate_1_q\) ) + ( \inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datac => \inst2|ALT_INV_BRout[7]~_Duplicate_1_q\,
	datad => \inst|ALT_INV_ACC\(7),
	cin => \inst|Add0~38\,
	sumout => \inst|Add0~33_sumout\,
	cout => \inst|Add0~34\);

-- Location: LABCELL_X80_Y8_N27
\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[8]~_Duplicate_1_q\) ) + ( \inst|ACC\(8) ) + ( \inst|Add0~34\ ))
-- \inst|Add0~30\ = CARRY(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[8]~_Duplicate_1_q\) ) + ( \inst|ACC\(8) ) + ( \inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout[8]~_Duplicate_1_q\,
	dataf => \inst|ALT_INV_ACC\(8),
	cin => \inst|Add0~34\,
	sumout => \inst|Add0~29_sumout\,
	cout => \inst|Add0~30\);

-- Location: LABCELL_X80_Y8_N30
\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[9]~_Duplicate_1_q\) ) + ( \inst|ACC\(9) ) + ( \inst|Add0~30\ ))
-- \inst|Add0~26\ = CARRY(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[9]~_Duplicate_1_q\) ) + ( \inst|ACC\(9) ) + ( \inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datac => \inst2|ALT_INV_BRout[9]~_Duplicate_1_q\,
	dataf => \inst|ALT_INV_ACC\(9),
	cin => \inst|Add0~30\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

-- Location: LABCELL_X80_Y8_N33
\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( \inst|ACC\(10) ) + ( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[10]~_Duplicate_1_q\) ) + ( \inst|Add0~26\ ))
-- \inst|Add0~22\ = CARRY(( \inst|ACC\(10) ) + ( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[10]~_Duplicate_1_q\) ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datac => \inst|ALT_INV_ACC\(10),
	dataf => \inst2|ALT_INV_BRout[10]~_Duplicate_1_q\,
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

-- Location: LABCELL_X80_Y8_N36
\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[11]~_Duplicate_1_q\) ) + ( \inst|ACC\(11) ) + ( \inst|Add0~22\ ))
-- \inst|Add0~18\ = CARRY(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[11]~_Duplicate_1_q\) ) + ( \inst|ACC\(11) ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_ACC\(11),
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout[11]~_Duplicate_1_q\,
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

-- Location: LABCELL_X80_Y8_N39
\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[12]~_Duplicate_1_q\) ) + ( \inst|ACC\(12) ) + ( \inst|Add0~18\ ))
-- \inst|Add0~14\ = CARRY(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[12]~_Duplicate_1_q\) ) + ( \inst|ACC\(12) ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(12),
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout[12]~_Duplicate_1_q\,
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

-- Location: LABCELL_X80_Y8_N42
\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \inst|ACC\(13) ) + ( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[13]~_Duplicate_1_q\) ) + ( \inst|Add0~14\ ))
-- \inst|Add0~10\ = CARRY(( \inst|ACC\(13) ) + ( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[13]~_Duplicate_1_q\) ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Equal1~0_combout\,
	datac => \inst2|ALT_INV_BRout[13]~_Duplicate_1_q\,
	datad => \inst|ALT_INV_ACC\(13),
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

-- Location: LABCELL_X80_Y8_N45
\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[14]~_Duplicate_1_q\) ) + ( \inst|ACC\(14) ) + ( \inst|Add0~10\ ))
-- \inst|Add0~6\ = CARRY(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[14]~_Duplicate_1_q\) ) + ( \inst|ACC\(14) ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Equal1~0_combout\,
	datac => \inst|ALT_INV_ACC\(14),
	datad => \inst2|ALT_INV_BRout[14]~_Duplicate_1_q\,
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

-- Location: MLABCELL_X78_Y7_N33
\inst|ACC~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~5_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(12) & ( \inst|Add0~5_sumout\ & ( (!\inst|Equal2~0_combout\ & (\inst|Equal4~1_combout\ & (\inst|ACC\(14)))) # (\inst|Equal2~0_combout\ & (((!\inst|ACC\(14) & 
-- !\inst2|BRout[14]~_Duplicate_1_q\)))) ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(12) & ( \inst|Add0~5_sumout\ & ( (!\inst|Equal4~1_combout\ & (\inst|Equal2~0_combout\ & ((!\inst|ACC\(14)) # (!\inst2|BRout[14]~_Duplicate_1_q\)))) # 
-- (\inst|Equal4~1_combout\ & ((!\inst|Equal2~0_combout\ & (\inst|ACC\(14))) # (\inst|Equal2~0_combout\ & (!\inst|ACC\(14) & !\inst2|BRout[14]~_Duplicate_1_q\)))) ) ) ) # ( \inst13|srom|rom_block|auto_generated|q_a\(12) & ( !\inst|Add0~5_sumout\ & ( 
-- (!\inst|Equal2~0_combout\ & ((!\inst|Equal4~1_combout\) # ((\inst|ACC\(14))))) # (\inst|Equal2~0_combout\ & (((!\inst|ACC\(14) & !\inst2|BRout[14]~_Duplicate_1_q\)))) ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(12) & ( !\inst|Add0~5_sumout\ & ( 
-- (!\inst|ACC\(14) & ((!\inst|Equal4~1_combout\) # ((\inst|Equal2~0_combout\ & !\inst2|BRout[14]~_Duplicate_1_q\)))) # (\inst|ACC\(14) & ((!\inst|Equal2~0_combout\) # ((!\inst|Equal4~1_combout\ & !\inst2|BRout[14]~_Duplicate_1_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111010101100101111001000110000110110001001000011010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal4~1_combout\,
	datab => \inst|ALT_INV_Equal2~0_combout\,
	datac => \inst|ALT_INV_ACC\(14),
	datad => \inst2|ALT_INV_BRout[14]~_Duplicate_1_q\,
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst|ALT_INV_Add0~5_sumout\,
	combout => \inst|ACC~5_combout\);

-- Location: MLABCELL_X78_Y7_N42
\inst|ACC~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~8_combout\ = ( \inst|ACC~7_combout\ & ( \inst|ACC~5_combout\ & ( (!\inst|ACC[3]~6_combout\ & (\inst|temp\(14))) # (\inst|ACC[3]~6_combout\ & ((\inst|ACC\(13)))) ) ) ) # ( !\inst|ACC~7_combout\ & ( \inst|ACC~5_combout\ & ( (\inst|ACC\(15) & 
-- \inst|ACC[3]~6_combout\) ) ) ) # ( \inst|ACC~7_combout\ & ( !\inst|ACC~5_combout\ & ( (!\inst|ACC[3]~6_combout\ & (\inst|temp\(14))) # (\inst|ACC[3]~6_combout\ & ((\inst|ACC\(13)))) ) ) ) # ( !\inst|ACC~7_combout\ & ( !\inst|ACC~5_combout\ & ( 
-- (!\inst|ACC[3]~6_combout\) # (\inst|ACC\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011010101010000111100000000001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_temp\(14),
	datab => \inst|ALT_INV_ACC\(15),
	datac => \inst|ALT_INV_ACC\(13),
	datad => \inst|ALT_INV_ACC[3]~6_combout\,
	datae => \inst|ALT_INV_ACC~7_combout\,
	dataf => \inst|ALT_INV_ACC~5_combout\,
	combout => \inst|ACC~8_combout\);

-- Location: FF_X78_Y7_N44
\inst|ACC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~8_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(14));

-- Location: LABCELL_X81_Y8_N30
\inst|ACC~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~11_combout\ = ( \inst|Equal4~1_combout\ & ( \inst|Add0~9_sumout\ & ( (!\inst|ACC\(13) & (!\inst2|BRout[13]~_Duplicate_1_q\ & \inst|Equal2~0_combout\)) # (\inst|ACC\(13) & ((!\inst|Equal2~0_combout\))) ) ) ) # ( !\inst|Equal4~1_combout\ & ( 
-- \inst|Add0~9_sumout\ & ( (\inst|Equal2~0_combout\ & ((!\inst13|srom|rom_block|auto_generated|q_a\(12) & ((!\inst2|BRout[13]~_Duplicate_1_q\) # (!\inst|ACC\(13)))) # (\inst13|srom|rom_block|auto_generated|q_a\(12) & (!\inst2|BRout[13]~_Duplicate_1_q\ & 
-- !\inst|ACC\(13))))) ) ) ) # ( \inst|Equal4~1_combout\ & ( !\inst|Add0~9_sumout\ & ( (!\inst|ACC\(13) & (!\inst2|BRout[13]~_Duplicate_1_q\ & \inst|Equal2~0_combout\)) # (\inst|ACC\(13) & ((!\inst|Equal2~0_combout\))) ) ) ) # ( !\inst|Equal4~1_combout\ & ( 
-- !\inst|Add0~9_sumout\ & ( (!\inst|Equal2~0_combout\) # ((!\inst13|srom|rom_block|auto_generated|q_a\(12) & ((!\inst2|BRout[13]~_Duplicate_1_q\) # (!\inst|ACC\(13)))) # (\inst13|srom|rom_block|auto_generated|q_a\(12) & (!\inst2|BRout[13]~_Duplicate_1_q\ & 
-- !\inst|ACC\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000000011111100000000000000111010000000111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst2|ALT_INV_BRout[13]~_Duplicate_1_q\,
	datac => \inst|ALT_INV_ACC\(13),
	datad => \inst|ALT_INV_Equal2~0_combout\,
	datae => \inst|ALT_INV_Equal4~1_combout\,
	dataf => \inst|ALT_INV_Add0~9_sumout\,
	combout => \inst|ACC~11_combout\);

-- Location: LABCELL_X81_Y8_N0
\inst|ACC~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~12_combout\ = ( \inst|ACC~7_combout\ & ( \inst|ACC~11_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(13)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(12))) ) ) ) # ( !\inst|ACC~7_combout\ & ( \inst|ACC~11_combout\ & ( (\inst|ACC\(14) & 
-- \inst|ACC[3]~6_combout\) ) ) ) # ( \inst|ACC~7_combout\ & ( !\inst|ACC~11_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(13)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(12))) ) ) ) # ( !\inst|ACC~7_combout\ & ( !\inst|ACC~11_combout\ & ( 
-- (!\inst|ACC[3]~6_combout\) # (\inst|ACC\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101000000111100111100010001000100010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(14),
	datab => \inst|ALT_INV_ACC[3]~6_combout\,
	datac => \inst|ALT_INV_ACC\(12),
	datad => \inst|ALT_INV_temp\(13),
	datae => \inst|ALT_INV_ACC~7_combout\,
	dataf => \inst|ALT_INV_ACC~11_combout\,
	combout => \inst|ACC~12_combout\);

-- Location: FF_X81_Y8_N2
\inst|ACC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~12_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(13));

-- Location: MLABCELL_X78_Y7_N48
\inst|ACC~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~13_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(12) & ( \inst|Add0~13_sumout\ & ( (!\inst|Equal2~0_combout\ & (((\inst|ACC\(12) & \inst|Equal4~1_combout\)))) # (\inst|Equal2~0_combout\ & (!\inst2|BRout[12]~_Duplicate_1_q\ & 
-- (!\inst|ACC\(12)))) ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(12) & ( \inst|Add0~13_sumout\ & ( (!\inst|Equal2~0_combout\ & (((\inst|ACC\(12) & \inst|Equal4~1_combout\)))) # (\inst|Equal2~0_combout\ & ((!\inst2|BRout[12]~_Duplicate_1_q\ & 
-- ((!\inst|ACC\(12)) # (!\inst|Equal4~1_combout\))) # (\inst2|BRout[12]~_Duplicate_1_q\ & (!\inst|ACC\(12) & !\inst|Equal4~1_combout\)))) ) ) ) # ( \inst13|srom|rom_block|auto_generated|q_a\(12) & ( !\inst|Add0~13_sumout\ & ( (!\inst|Equal2~0_combout\ & 
-- (((!\inst|Equal4~1_combout\) # (\inst|ACC\(12))))) # (\inst|Equal2~0_combout\ & (!\inst2|BRout[12]~_Duplicate_1_q\ & (!\inst|ACC\(12)))) ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(12) & ( !\inst|Add0~13_sumout\ & ( 
-- (!\inst2|BRout[12]~_Duplicate_1_q\ & ((!\inst|Equal4~1_combout\) # (!\inst|Equal2~0_combout\ $ (!\inst|ACC\(12))))) # (\inst2|BRout[12]~_Duplicate_1_q\ & ((!\inst|ACC\(12) & ((!\inst|Equal4~1_combout\))) # (\inst|ACC\(12) & (!\inst|Equal2~0_combout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000101100111011000010110000110010001011000010000000101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout[12]~_Duplicate_1_q\,
	datab => \inst|ALT_INV_Equal2~0_combout\,
	datac => \inst|ALT_INV_ACC\(12),
	datad => \inst|ALT_INV_Equal4~1_combout\,
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst|ALT_INV_Add0~13_sumout\,
	combout => \inst|ACC~13_combout\);

-- Location: MLABCELL_X78_Y7_N54
\inst|ACC~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~14_combout\ = ( \inst|ACC~7_combout\ & ( \inst|ACC~13_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(12)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(11))) ) ) ) # ( !\inst|ACC~7_combout\ & ( \inst|ACC~13_combout\ & ( (\inst|ACC\(13) & 
-- \inst|ACC[3]~6_combout\) ) ) ) # ( \inst|ACC~7_combout\ & ( !\inst|ACC~13_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(12)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(11))) ) ) ) # ( !\inst|ACC~7_combout\ & ( !\inst|ACC~13_combout\ & ( 
-- (!\inst|ACC[3]~6_combout\) # (\inst|ACC\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101000011110011001100000000010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(13),
	datab => \inst|ALT_INV_ACC\(11),
	datac => \inst|ALT_INV_temp\(12),
	datad => \inst|ALT_INV_ACC[3]~6_combout\,
	datae => \inst|ALT_INV_ACC~7_combout\,
	dataf => \inst|ALT_INV_ACC~13_combout\,
	combout => \inst|ACC~14_combout\);

-- Location: FF_X78_Y7_N56
\inst|ACC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~14_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(12));

-- Location: FF_X78_Y7_N53
\inst7|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~3_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(12));

-- Location: MLABCELL_X78_Y7_N36
\inst7|temp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~3_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(20) & ( \inst7|temp\(12) & ( \inst|ACC\(12) ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(20) & ( \inst7|temp\(12) ) ) # ( \inst13|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst7|temp\(12) & ( \inst|ACC\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ACC\(12),
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst7|ALT_INV_temp\(12),
	combout => \inst7|temp~3_combout\);

-- Location: FF_X78_Y7_N32
\inst7|MBR_RAM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~3_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(12));

-- Location: MLABCELL_X82_Y8_N24
\inst7|MBR_BR[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_BR[8]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(8),
	combout => \inst7|MBR_BR[8]~feeder_combout\);

-- Location: FF_X82_Y8_N26
\inst7|MBR_BR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_BR[8]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(8));

-- Location: LABCELL_X80_Y7_N24
\inst|ACC~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~15_combout\ = ( \inst|Equal2~0_combout\ & ( \inst|Add0~17_sumout\ & ( (!\inst|ACC\(11) & ((!\inst2|BRout[11]~_Duplicate_1_q\) # ((!\inst|Equal4~1_combout\ & !\inst13|srom|rom_block|auto_generated|q_a\(12))))) # (\inst|ACC\(11) & 
-- (!\inst|Equal4~1_combout\ & (!\inst13|srom|rom_block|auto_generated|q_a\(12) & !\inst2|BRout[11]~_Duplicate_1_q\))) ) ) ) # ( !\inst|Equal2~0_combout\ & ( \inst|Add0~17_sumout\ & ( (\inst|Equal4~1_combout\ & \inst|ACC\(11)) ) ) ) # ( 
-- \inst|Equal2~0_combout\ & ( !\inst|Add0~17_sumout\ & ( (!\inst|ACC\(11) & ((!\inst2|BRout[11]~_Duplicate_1_q\) # ((!\inst|Equal4~1_combout\ & !\inst13|srom|rom_block|auto_generated|q_a\(12))))) # (\inst|ACC\(11) & (!\inst|Equal4~1_combout\ & 
-- (!\inst13|srom|rom_block|auto_generated|q_a\(12) & !\inst2|BRout[11]~_Duplicate_1_q\))) ) ) ) # ( !\inst|Equal2~0_combout\ & ( !\inst|Add0~17_sumout\ & ( (!\inst|Equal4~1_combout\) # (\inst|ACC\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111110001000000000000101000001011111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal4~1_combout\,
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datac => \inst|ALT_INV_ACC\(11),
	datad => \inst2|ALT_INV_BRout[11]~_Duplicate_1_q\,
	datae => \inst|ALT_INV_Equal2~0_combout\,
	dataf => \inst|ALT_INV_Add0~17_sumout\,
	combout => \inst|ACC~15_combout\);

-- Location: LABCELL_X80_Y7_N0
\inst|ACC~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~16_combout\ = ( \inst|ACC~7_combout\ & ( \inst|ACC~15_combout\ & ( (!\inst|ACC[3]~6_combout\ & (\inst|temp\(11))) # (\inst|ACC[3]~6_combout\ & ((\inst|ACC\(10)))) ) ) ) # ( !\inst|ACC~7_combout\ & ( \inst|ACC~15_combout\ & ( (\inst|ACC\(12) & 
-- \inst|ACC[3]~6_combout\) ) ) ) # ( \inst|ACC~7_combout\ & ( !\inst|ACC~15_combout\ & ( (!\inst|ACC[3]~6_combout\ & (\inst|temp\(11))) # (\inst|ACC[3]~6_combout\ & ((\inst|ACC\(10)))) ) ) ) # ( !\inst|ACC~7_combout\ & ( !\inst|ACC~15_combout\ & ( 
-- (!\inst|ACC[3]~6_combout\) # (\inst|ACC\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111010101010011001100000000000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_temp\(11),
	datab => \inst|ALT_INV_ACC\(10),
	datac => \inst|ALT_INV_ACC\(12),
	datad => \inst|ALT_INV_ACC[3]~6_combout\,
	datae => \inst|ALT_INV_ACC~7_combout\,
	dataf => \inst|ALT_INV_ACC~15_combout\,
	combout => \inst|ACC~16_combout\);

-- Location: FF_X80_Y7_N2
\inst|ACC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~16_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(11));

-- Location: LABCELL_X80_Y7_N12
\inst|ACC~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~17_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(12) & ( \inst|Add0~21_sumout\ & ( (!\inst|Equal2~0_combout\ & (\inst|Equal4~1_combout\ & ((\inst|ACC\(10))))) # (\inst|Equal2~0_combout\ & (((!\inst2|BRout[10]~_Duplicate_1_q\ & 
-- !\inst|ACC\(10))))) ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(12) & ( \inst|Add0~21_sumout\ & ( (!\inst|Equal4~1_combout\ & (\inst|Equal2~0_combout\ & ((!\inst2|BRout[10]~_Duplicate_1_q\) # (!\inst|ACC\(10))))) # (\inst|Equal4~1_combout\ & 
-- ((!\inst|Equal2~0_combout\ & ((\inst|ACC\(10)))) # (\inst|Equal2~0_combout\ & (!\inst2|BRout[10]~_Duplicate_1_q\ & !\inst|ACC\(10))))) ) ) ) # ( \inst13|srom|rom_block|auto_generated|q_a\(12) & ( !\inst|Add0~21_sumout\ & ( (!\inst|Equal2~0_combout\ & 
-- ((!\inst|Equal4~1_combout\) # ((\inst|ACC\(10))))) # (\inst|Equal2~0_combout\ & (((!\inst2|BRout[10]~_Duplicate_1_q\ & !\inst|ACC\(10))))) ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(12) & ( !\inst|Add0~21_sumout\ & ( 
-- (!\inst2|BRout[10]~_Duplicate_1_q\ & ((!\inst|Equal4~1_combout\) # (!\inst|Equal2~0_combout\ $ (!\inst|ACC\(10))))) # (\inst2|BRout[10]~_Duplicate_1_q\ & ((!\inst|ACC\(10) & (!\inst|Equal4~1_combout\)) # (\inst|ACC\(10) & ((!\inst|Equal2~0_combout\))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111011111000101011001111000000001110010110000000110001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal4~1_combout\,
	datab => \inst2|ALT_INV_BRout[10]~_Duplicate_1_q\,
	datac => \inst|ALT_INV_Equal2~0_combout\,
	datad => \inst|ALT_INV_ACC\(10),
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst|ALT_INV_Add0~21_sumout\,
	combout => \inst|ACC~17_combout\);

-- Location: LABCELL_X80_Y7_N42
\inst|ACC~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~18_combout\ = ( \inst|ACC\(9) & ( \inst|ACC~17_combout\ & ( (!\inst|ACC~7_combout\ & (\inst|ACC\(11) & ((\inst|ACC[3]~6_combout\)))) # (\inst|ACC~7_combout\ & (((\inst|ACC[3]~6_combout\) # (\inst|temp\(10))))) ) ) ) # ( !\inst|ACC\(9) & ( 
-- \inst|ACC~17_combout\ & ( (!\inst|ACC~7_combout\ & (\inst|ACC\(11) & ((\inst|ACC[3]~6_combout\)))) # (\inst|ACC~7_combout\ & (((\inst|temp\(10) & !\inst|ACC[3]~6_combout\)))) ) ) ) # ( \inst|ACC\(9) & ( !\inst|ACC~17_combout\ & ( (!\inst|ACC~7_combout\ & 
-- (((!\inst|ACC[3]~6_combout\)) # (\inst|ACC\(11)))) # (\inst|ACC~7_combout\ & (((\inst|ACC[3]~6_combout\) # (\inst|temp\(10))))) ) ) ) # ( !\inst|ACC\(9) & ( !\inst|ACC~17_combout\ & ( (!\inst|ACC~7_combout\ & (((!\inst|ACC[3]~6_combout\)) # 
-- (\inst|ACC\(11)))) # (\inst|ACC~7_combout\ & (((\inst|temp\(10) & !\inst|ACC[3]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001101010000111100110101111100000011010100000000001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(11),
	datab => \inst|ALT_INV_temp\(10),
	datac => \inst|ALT_INV_ACC~7_combout\,
	datad => \inst|ALT_INV_ACC[3]~6_combout\,
	datae => \inst|ALT_INV_ACC\(9),
	dataf => \inst|ALT_INV_ACC~17_combout\,
	combout => \inst|ACC~18_combout\);

-- Location: FF_X80_Y7_N44
\inst|ACC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~18_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(10));

-- Location: LABCELL_X80_Y7_N30
\inst|ACC~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~19_combout\ = ( \inst|Equal2~0_combout\ & ( \inst|Add0~25_sumout\ & ( (!\inst|ACC\(9) & ((!\inst2|BRout[9]~_Duplicate_1_q\) # ((!\inst|Equal4~1_combout\ & !\inst13|srom|rom_block|auto_generated|q_a\(12))))) # (\inst|ACC\(9) & 
-- (!\inst|Equal4~1_combout\ & (!\inst13|srom|rom_block|auto_generated|q_a\(12) & !\inst2|BRout[9]~_Duplicate_1_q\))) ) ) ) # ( !\inst|Equal2~0_combout\ & ( \inst|Add0~25_sumout\ & ( (\inst|Equal4~1_combout\ & \inst|ACC\(9)) ) ) ) # ( \inst|Equal2~0_combout\ 
-- & ( !\inst|Add0~25_sumout\ & ( (!\inst|ACC\(9) & ((!\inst2|BRout[9]~_Duplicate_1_q\) # ((!\inst|Equal4~1_combout\ & !\inst13|srom|rom_block|auto_generated|q_a\(12))))) # (\inst|ACC\(9) & (!\inst|Equal4~1_combout\ & 
-- (!\inst13|srom|rom_block|auto_generated|q_a\(12) & !\inst2|BRout[9]~_Duplicate_1_q\))) ) ) ) # ( !\inst|Equal2~0_combout\ & ( !\inst|Add0~25_sumout\ & ( (!\inst|Equal4~1_combout\) # (\inst|ACC\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111110001000000000000101000001011111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal4~1_combout\,
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datac => \inst|ALT_INV_ACC\(9),
	datad => \inst2|ALT_INV_BRout[9]~_Duplicate_1_q\,
	datae => \inst|ALT_INV_Equal2~0_combout\,
	dataf => \inst|ALT_INV_Add0~25_sumout\,
	combout => \inst|ACC~19_combout\);

-- Location: LABCELL_X80_Y7_N54
\inst|ACC~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~20_combout\ = ( \inst|ACC~7_combout\ & ( \inst|ACC~19_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(9)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(8))) ) ) ) # ( !\inst|ACC~7_combout\ & ( \inst|ACC~19_combout\ & ( (\inst|ACC\(10) & 
-- \inst|ACC[3]~6_combout\) ) ) ) # ( \inst|ACC~7_combout\ & ( !\inst|ACC~19_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(9)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(8))) ) ) ) # ( !\inst|ACC~7_combout\ & ( !\inst|ACC~19_combout\ & ( 
-- (!\inst|ACC[3]~6_combout\) # (\inst|ACC\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101000011110011001100000000010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(10),
	datab => \inst|ALT_INV_ACC\(8),
	datac => \inst|ALT_INV_temp\(9),
	datad => \inst|ALT_INV_ACC[3]~6_combout\,
	datae => \inst|ALT_INV_ACC~7_combout\,
	dataf => \inst|ALT_INV_ACC~19_combout\,
	combout => \inst|ACC~20_combout\);

-- Location: FF_X80_Y7_N56
\inst|ACC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~20_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(9));

-- Location: LABCELL_X80_Y7_N18
\inst|ACC~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~21_combout\ = ( \inst|Equal2~0_combout\ & ( \inst|Add0~29_sumout\ & ( (!\inst2|BRout[8]~_Duplicate_1_q\ & ((!\inst|ACC\(8)) # ((!\inst|Equal4~1_combout\ & !\inst13|srom|rom_block|auto_generated|q_a\(12))))) # (\inst2|BRout[8]~_Duplicate_1_q\ & 
-- (!\inst|Equal4~1_combout\ & (!\inst13|srom|rom_block|auto_generated|q_a\(12) & !\inst|ACC\(8)))) ) ) ) # ( !\inst|Equal2~0_combout\ & ( \inst|Add0~29_sumout\ & ( (\inst|Equal4~1_combout\ & \inst|ACC\(8)) ) ) ) # ( \inst|Equal2~0_combout\ & ( 
-- !\inst|Add0~29_sumout\ & ( (!\inst2|BRout[8]~_Duplicate_1_q\ & ((!\inst|ACC\(8)) # ((!\inst|Equal4~1_combout\ & !\inst13|srom|rom_block|auto_generated|q_a\(12))))) # (\inst2|BRout[8]~_Duplicate_1_q\ & (!\inst|Equal4~1_combout\ & 
-- (!\inst13|srom|rom_block|auto_generated|q_a\(12) & !\inst|ACC\(8)))) ) ) ) # ( !\inst|Equal2~0_combout\ & ( !\inst|Add0~29_sumout\ & ( (!\inst|Equal4~1_combout\) # (\inst|ACC\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111111110001000000000000000010101011111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal4~1_combout\,
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datac => \inst2|ALT_INV_BRout[8]~_Duplicate_1_q\,
	datad => \inst|ALT_INV_ACC\(8),
	datae => \inst|ALT_INV_Equal2~0_combout\,
	dataf => \inst|ALT_INV_Add0~29_sumout\,
	combout => \inst|ACC~21_combout\);

-- Location: LABCELL_X80_Y7_N6
\inst|ACC~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~22_combout\ = ( \inst|ACC~7_combout\ & ( \inst|ACC~21_combout\ & ( (!\inst|ACC[3]~6_combout\ & (\inst|temp\(8))) # (\inst|ACC[3]~6_combout\ & ((\inst|ACC\(7)))) ) ) ) # ( !\inst|ACC~7_combout\ & ( \inst|ACC~21_combout\ & ( (\inst|ACC\(9) & 
-- \inst|ACC[3]~6_combout\) ) ) ) # ( \inst|ACC~7_combout\ & ( !\inst|ACC~21_combout\ & ( (!\inst|ACC[3]~6_combout\ & (\inst|temp\(8))) # (\inst|ACC[3]~6_combout\ & ((\inst|ACC\(7)))) ) ) ) # ( !\inst|ACC~7_combout\ & ( !\inst|ACC~21_combout\ & ( 
-- (!\inst|ACC[3]~6_combout\) # (\inst|ACC\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101001100110000111100000000010101010011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(9),
	datab => \inst|ALT_INV_temp\(8),
	datac => \inst|ALT_INV_ACC\(7),
	datad => \inst|ALT_INV_ACC[3]~6_combout\,
	datae => \inst|ALT_INV_ACC~7_combout\,
	dataf => \inst|ALT_INV_ACC~21_combout\,
	combout => \inst|ACC~22_combout\);

-- Location: FF_X80_Y7_N8
\inst|ACC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~22_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(8));

-- Location: LABCELL_X79_Y8_N18
\inst|ACC~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~23_combout\ = ( \inst|Equal4~1_combout\ & ( \inst|Add0~33_sumout\ & ( (!\inst|ACC\(7) & (!\inst2|BRout[7]~_Duplicate_1_q\ & \inst|Equal2~0_combout\)) # (\inst|ACC\(7) & ((!\inst|Equal2~0_combout\))) ) ) ) # ( !\inst|Equal4~1_combout\ & ( 
-- \inst|Add0~33_sumout\ & ( (\inst|Equal2~0_combout\ & ((!\inst2|BRout[7]~_Duplicate_1_q\ & ((!\inst|ACC\(7)) # (!\inst13|srom|rom_block|auto_generated|q_a\(12)))) # (\inst2|BRout[7]~_Duplicate_1_q\ & (!\inst|ACC\(7) & 
-- !\inst13|srom|rom_block|auto_generated|q_a\(12))))) ) ) ) # ( \inst|Equal4~1_combout\ & ( !\inst|Add0~33_sumout\ & ( (!\inst|ACC\(7) & (!\inst2|BRout[7]~_Duplicate_1_q\ & \inst|Equal2~0_combout\)) # (\inst|ACC\(7) & ((!\inst|Equal2~0_combout\))) ) ) ) # ( 
-- !\inst|Equal4~1_combout\ & ( !\inst|Add0~33_sumout\ & ( (!\inst|Equal2~0_combout\) # ((!\inst2|BRout[7]~_Duplicate_1_q\ & ((!\inst|ACC\(7)) # (!\inst13|srom|rom_block|auto_generated|q_a\(12)))) # (\inst2|BRout[7]~_Duplicate_1_q\ & (!\inst|ACC\(7) & 
-- !\inst13|srom|rom_block|auto_generated|q_a\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111000001110000011100000001110000010000011100000111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout[7]~_Duplicate_1_q\,
	datab => \inst|ALT_INV_ACC\(7),
	datac => \inst|ALT_INV_Equal2~0_combout\,
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datae => \inst|ALT_INV_Equal4~1_combout\,
	dataf => \inst|ALT_INV_Add0~33_sumout\,
	combout => \inst|ACC~23_combout\);

-- Location: MLABCELL_X78_Y7_N18
\inst|ACC~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~24_combout\ = ( \inst|ACC\(6) & ( \inst|ACC~23_combout\ & ( (!\inst|ACC[3]~6_combout\ & (((\inst|temp\(7) & \inst|ACC~7_combout\)))) # (\inst|ACC[3]~6_combout\ & (((\inst|ACC~7_combout\)) # (\inst|ACC\(8)))) ) ) ) # ( !\inst|ACC\(6) & ( 
-- \inst|ACC~23_combout\ & ( (!\inst|ACC[3]~6_combout\ & (((\inst|temp\(7) & \inst|ACC~7_combout\)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(8) & ((!\inst|ACC~7_combout\)))) ) ) ) # ( \inst|ACC\(6) & ( !\inst|ACC~23_combout\ & ( (!\inst|ACC[3]~6_combout\ & 
-- (((!\inst|ACC~7_combout\) # (\inst|temp\(7))))) # (\inst|ACC[3]~6_combout\ & (((\inst|ACC~7_combout\)) # (\inst|ACC\(8)))) ) ) ) # ( !\inst|ACC\(6) & ( !\inst|ACC~23_combout\ & ( (!\inst|ACC[3]~6_combout\ & (((!\inst|ACC~7_combout\) # (\inst|temp\(7))))) 
-- # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(8) & ((!\inst|ACC~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100001100110111010011111100010001000011000001000100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(8),
	datab => \inst|ALT_INV_ACC[3]~6_combout\,
	datac => \inst|ALT_INV_temp\(7),
	datad => \inst|ALT_INV_ACC~7_combout\,
	datae => \inst|ALT_INV_ACC\(6),
	dataf => \inst|ALT_INV_ACC~23_combout\,
	combout => \inst|ACC~24_combout\);

-- Location: FF_X78_Y7_N20
\inst|ACC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~24_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(7));

-- Location: FF_X78_Y7_N14
\inst7|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~8_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(7));

-- Location: MLABCELL_X78_Y7_N0
\inst7|temp~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~8_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(20) & ( \inst7|temp\(7) & ( \inst|ACC\(7) ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(20) & ( \inst7|temp\(7) ) ) # ( \inst13|srom|rom_block|auto_generated|q_a\(20) & ( 
-- !\inst7|temp\(7) & ( \inst|ACC\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(7),
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst7|ALT_INV_temp\(7),
	combout => \inst7|temp~8_combout\);

-- Location: FF_X78_Y7_N4
\inst7|MBR_RAM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~8_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(7));

-- Location: FF_X77_Y8_N8
\inst7|MBR_OP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst14|sram|ram_block|auto_generated|q_a\(14),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst7|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_OP\(6));

-- Location: FF_X77_Y7_N20
\inst3|CARout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|Add0~5_sumout\,
	asdata => \inst13|srom|rom_block|auto_generated|q_a\(6),
	sclr => \inst3|CARout[0]~0_combout\,
	sload => \inst3|CARout[0]~1_combout\,
	ena => \inst3|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|CARout\(6));

-- Location: LABCELL_X77_Y8_N51
\inst7|MBR_BR[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_BR[5]~0_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(16) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(16) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(16),
	combout => \inst7|MBR_BR[5]~0_combout\);

-- Location: FF_X75_Y8_N32
\inst7|MBR_BR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_BR[0]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst7|MBR_BR[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_BR\(0));

-- Location: LABCELL_X79_Y7_N6
\inst|ACC~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~25_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(12) & ( \inst|Add0~37_sumout\ & ( (!\inst|Equal2~0_combout\ & (\inst|Equal4~1_combout\ & (\inst|ACC\(6)))) # (\inst|Equal2~0_combout\ & (((!\inst|ACC\(6) & 
-- !\inst2|BRout[6]~_Duplicate_1_q\)))) ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(12) & ( \inst|Add0~37_sumout\ & ( (!\inst|Equal4~1_combout\ & (\inst|Equal2~0_combout\ & ((!\inst|ACC\(6)) # (!\inst2|BRout[6]~_Duplicate_1_q\)))) # 
-- (\inst|Equal4~1_combout\ & ((!\inst|Equal2~0_combout\ & (\inst|ACC\(6))) # (\inst|Equal2~0_combout\ & (!\inst|ACC\(6) & !\inst2|BRout[6]~_Duplicate_1_q\)))) ) ) ) # ( \inst13|srom|rom_block|auto_generated|q_a\(12) & ( !\inst|Add0~37_sumout\ & ( 
-- (!\inst|Equal2~0_combout\ & ((!\inst|Equal4~1_combout\) # ((\inst|ACC\(6))))) # (\inst|Equal2~0_combout\ & (((!\inst|ACC\(6) & !\inst2|BRout[6]~_Duplicate_1_q\)))) ) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(12) & ( !\inst|Add0~37_sumout\ & ( 
-- (!\inst|ACC\(6) & ((!\inst|Equal4~1_combout\) # ((\inst|Equal2~0_combout\ & !\inst2|BRout[6]~_Duplicate_1_q\)))) # (\inst|ACC\(6) & ((!\inst|Equal2~0_combout\) # ((!\inst|Equal4~1_combout\ & !\inst2|BRout[6]~_Duplicate_1_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111010101100101111001000110000110110001001000011010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal4~1_combout\,
	datab => \inst|ALT_INV_Equal2~0_combout\,
	datac => \inst|ALT_INV_ACC\(6),
	datad => \inst2|ALT_INV_BRout[6]~_Duplicate_1_q\,
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	dataf => \inst|ALT_INV_Add0~37_sumout\,
	combout => \inst|ACC~25_combout\);

-- Location: LABCELL_X79_Y7_N18
\inst|ACC~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~26_combout\ = ( \inst|ACC\(7) & ( \inst|ACC~25_combout\ & ( (!\inst|ACC~7_combout\ & (((\inst|ACC[3]~6_combout\)))) # (\inst|ACC~7_combout\ & ((!\inst|ACC[3]~6_combout\ & (\inst|temp\(6))) # (\inst|ACC[3]~6_combout\ & ((\inst|ACC\(5)))))) ) ) ) 
-- # ( !\inst|ACC\(7) & ( \inst|ACC~25_combout\ & ( (\inst|ACC~7_combout\ & ((!\inst|ACC[3]~6_combout\ & (\inst|temp\(6))) # (\inst|ACC[3]~6_combout\ & ((\inst|ACC\(5)))))) ) ) ) # ( \inst|ACC\(7) & ( !\inst|ACC~25_combout\ & ( (!\inst|ACC~7_combout\) # 
-- ((!\inst|ACC[3]~6_combout\ & (\inst|temp\(6))) # (\inst|ACC[3]~6_combout\ & ((\inst|ACC\(5))))) ) ) ) # ( !\inst|ACC\(7) & ( !\inst|ACC~25_combout\ & ( (!\inst|ACC~7_combout\ & (((!\inst|ACC[3]~6_combout\)))) # (\inst|ACC~7_combout\ & 
-- ((!\inst|ACC[3]~6_combout\ & (\inst|temp\(6))) # (\inst|ACC[3]~6_combout\ & ((\inst|ACC\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000011111101011111001100000101000000110000010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_temp\(6),
	datab => \inst|ALT_INV_ACC\(5),
	datac => \inst|ALT_INV_ACC~7_combout\,
	datad => \inst|ALT_INV_ACC[3]~6_combout\,
	datae => \inst|ALT_INV_ACC\(7),
	dataf => \inst|ALT_INV_ACC~25_combout\,
	combout => \inst|ACC~26_combout\);

-- Location: FF_X79_Y7_N20
\inst|ACC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~26_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(6));

-- Location: LABCELL_X79_Y7_N24
\inst|ACC~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~27_combout\ = ( \inst|Add0~41_sumout\ & ( \inst|Equal4~1_combout\ & ( (!\inst|Equal2~0_combout\ & ((\inst|ACC\(5)))) # (\inst|Equal2~0_combout\ & (!\inst2|BRout[5]~_Duplicate_1_q\ & !\inst|ACC\(5))) ) ) ) # ( !\inst|Add0~41_sumout\ & ( 
-- \inst|Equal4~1_combout\ & ( (!\inst|Equal2~0_combout\ & ((\inst|ACC\(5)))) # (\inst|Equal2~0_combout\ & (!\inst2|BRout[5]~_Duplicate_1_q\ & !\inst|ACC\(5))) ) ) ) # ( \inst|Add0~41_sumout\ & ( !\inst|Equal4~1_combout\ & ( (\inst|Equal2~0_combout\ & 
-- ((!\inst2|BRout[5]~_Duplicate_1_q\ & ((!\inst13|srom|rom_block|auto_generated|q_a\(12)) # (!\inst|ACC\(5)))) # (\inst2|BRout[5]~_Duplicate_1_q\ & (!\inst13|srom|rom_block|auto_generated|q_a\(12) & !\inst|ACC\(5))))) ) ) ) # ( !\inst|Add0~41_sumout\ & ( 
-- !\inst|Equal4~1_combout\ & ( (!\inst|Equal2~0_combout\) # ((!\inst2|BRout[5]~_Duplicate_1_q\ & ((!\inst13|srom|rom_block|auto_generated|q_a\(12)) # (!\inst|ACC\(5)))) # (\inst2|BRout[5]~_Duplicate_1_q\ & (!\inst13|srom|rom_block|auto_generated|q_a\(12) & 
-- !\inst|ACC\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100001100100010000000100010110011000010001011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout[5]~_Duplicate_1_q\,
	datab => \inst|ALT_INV_Equal2~0_combout\,
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datad => \inst|ALT_INV_ACC\(5),
	datae => \inst|ALT_INV_Add0~41_sumout\,
	dataf => \inst|ALT_INV_Equal4~1_combout\,
	combout => \inst|ACC~27_combout\);

-- Location: LABCELL_X79_Y7_N30
\inst|ACC~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~28_combout\ = ( \inst|ACC~7_combout\ & ( \inst|ACC~27_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(5)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(4))) ) ) ) # ( !\inst|ACC~7_combout\ & ( \inst|ACC~27_combout\ & ( (\inst|ACC\(6) & 
-- \inst|ACC[3]~6_combout\) ) ) ) # ( \inst|ACC~7_combout\ & ( !\inst|ACC~27_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(5)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(4))) ) ) ) # ( !\inst|ACC~7_combout\ & ( !\inst|ACC~27_combout\ & ( 
-- (!\inst|ACC[3]~6_combout\) # (\inst|ACC\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101000011110011001100000000010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(6),
	datab => \inst|ALT_INV_ACC\(4),
	datac => \inst|ALT_INV_temp\(5),
	datad => \inst|ALT_INV_ACC[3]~6_combout\,
	datae => \inst|ALT_INV_ACC~7_combout\,
	dataf => \inst|ALT_INV_ACC~27_combout\,
	combout => \inst|ACC~28_combout\);

-- Location: FF_X79_Y7_N32
\inst|ACC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~28_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(5));

-- Location: LABCELL_X79_Y7_N48
\inst|ACC~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~29_combout\ = ( \inst2|BRout[4]~_Duplicate_1_q\ & ( \inst|Add0~45_sumout\ & ( (!\inst|Equal2~0_combout\ & (((\inst|Equal4~1_combout\ & \inst|ACC\(4))))) # (\inst|Equal2~0_combout\ & (!\inst13|srom|rom_block|auto_generated|q_a\(12) & 
-- (!\inst|Equal4~1_combout\ & !\inst|ACC\(4)))) ) ) ) # ( !\inst2|BRout[4]~_Duplicate_1_q\ & ( \inst|Add0~45_sumout\ & ( (!\inst|Equal2~0_combout\ & (((\inst|Equal4~1_combout\ & \inst|ACC\(4))))) # (\inst|Equal2~0_combout\ & ((!\inst|ACC\(4)) # 
-- ((!\inst13|srom|rom_block|auto_generated|q_a\(12) & !\inst|Equal4~1_combout\)))) ) ) ) # ( \inst2|BRout[4]~_Duplicate_1_q\ & ( !\inst|Add0~45_sumout\ & ( (!\inst|ACC\(4) & (!\inst|Equal4~1_combout\ & ((!\inst13|srom|rom_block|auto_generated|q_a\(12)) # 
-- (!\inst|Equal2~0_combout\)))) # (\inst|ACC\(4) & (((!\inst|Equal2~0_combout\)))) ) ) ) # ( !\inst2|BRout[4]~_Duplicate_1_q\ & ( !\inst|Add0~45_sumout\ & ( (!\inst|Equal2~0_combout\ & (((!\inst|Equal4~1_combout\) # (\inst|ACC\(4))))) # 
-- (\inst|Equal2~0_combout\ & ((!\inst|ACC\(4)) # ((!\inst13|srom|rom_block|auto_generated|q_a\(12) & !\inst|Equal4~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111101100111000001100110000110011001011000010000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst|ALT_INV_Equal2~0_combout\,
	datac => \inst|ALT_INV_Equal4~1_combout\,
	datad => \inst|ALT_INV_ACC\(4),
	datae => \inst2|ALT_INV_BRout[4]~_Duplicate_1_q\,
	dataf => \inst|ALT_INV_Add0~45_sumout\,
	combout => \inst|ACC~29_combout\);

-- Location: LABCELL_X79_Y7_N42
\inst|ACC~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~30_combout\ = ( \inst|ACC~7_combout\ & ( \inst|ACC~29_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(4)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(3))) ) ) ) # ( !\inst|ACC~7_combout\ & ( \inst|ACC~29_combout\ & ( (\inst|ACC\(5) & 
-- \inst|ACC[3]~6_combout\) ) ) ) # ( \inst|ACC~7_combout\ & ( !\inst|ACC~29_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(4)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(3))) ) ) ) # ( !\inst|ACC~7_combout\ & ( !\inst|ACC~29_combout\ & ( 
-- (!\inst|ACC[3]~6_combout\) # (\inst|ACC\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011000011110101010100000000001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(3),
	datab => \inst|ALT_INV_ACC\(5),
	datac => \inst|ALT_INV_temp\(4),
	datad => \inst|ALT_INV_ACC[3]~6_combout\,
	datae => \inst|ALT_INV_ACC~7_combout\,
	dataf => \inst|ALT_INV_ACC~29_combout\,
	combout => \inst|ACC~30_combout\);

-- Location: FF_X79_Y7_N44
\inst|ACC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~30_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(4));

-- Location: LABCELL_X81_Y8_N48
\inst|ACC~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~31_combout\ = ( \inst|Equal4~1_combout\ & ( \inst|Add0~49_sumout\ & ( (!\inst|Equal2~0_combout\ & ((\inst|ACC\(3)))) # (\inst|Equal2~0_combout\ & (!\inst2|BRout[3]~_Duplicate_1_q\ & !\inst|ACC\(3))) ) ) ) # ( !\inst|Equal4~1_combout\ & ( 
-- \inst|Add0~49_sumout\ & ( (\inst|Equal2~0_combout\ & ((!\inst13|srom|rom_block|auto_generated|q_a\(12) & ((!\inst2|BRout[3]~_Duplicate_1_q\) # (!\inst|ACC\(3)))) # (\inst13|srom|rom_block|auto_generated|q_a\(12) & (!\inst2|BRout[3]~_Duplicate_1_q\ & 
-- !\inst|ACC\(3))))) ) ) ) # ( \inst|Equal4~1_combout\ & ( !\inst|Add0~49_sumout\ & ( (!\inst|Equal2~0_combout\ & ((\inst|ACC\(3)))) # (\inst|Equal2~0_combout\ & (!\inst2|BRout[3]~_Duplicate_1_q\ & !\inst|ACC\(3))) ) ) ) # ( !\inst|Equal4~1_combout\ & ( 
-- !\inst|Add0~49_sumout\ & ( (!\inst|Equal2~0_combout\) # ((!\inst13|srom|rom_block|auto_generated|q_a\(12) & ((!\inst2|BRout[3]~_Duplicate_1_q\) # (!\inst|ACC\(3)))) # (\inst13|srom|rom_block|auto_generated|q_a\(12) & (!\inst2|BRout[3]~_Duplicate_1_q\ & 
-- !\inst|ACC\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111000000011001111000000001110000010000000110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst2|ALT_INV_BRout[3]~_Duplicate_1_q\,
	datac => \inst|ALT_INV_Equal2~0_combout\,
	datad => \inst|ALT_INV_ACC\(3),
	datae => \inst|ALT_INV_Equal4~1_combout\,
	dataf => \inst|ALT_INV_Add0~49_sumout\,
	combout => \inst|ACC~31_combout\);

-- Location: LABCELL_X81_Y8_N6
\inst|ACC~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~32_combout\ = ( \inst|ACC~7_combout\ & ( \inst|ACC~31_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(3)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(2))) ) ) ) # ( !\inst|ACC~7_combout\ & ( \inst|ACC~31_combout\ & ( (\inst|ACC\(4) & 
-- \inst|ACC[3]~6_combout\) ) ) ) # ( \inst|ACC~7_combout\ & ( !\inst|ACC~31_combout\ & ( (!\inst|ACC[3]~6_combout\ & ((\inst|temp\(3)))) # (\inst|ACC[3]~6_combout\ & (\inst|ACC\(2))) ) ) ) # ( !\inst|ACC~7_combout\ & ( !\inst|ACC~31_combout\ & ( 
-- (!\inst|ACC[3]~6_combout\) # (\inst|ACC\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101000011110011001100000000010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(4),
	datab => \inst|ALT_INV_ACC\(2),
	datac => \inst|ALT_INV_temp\(3),
	datad => \inst|ALT_INV_ACC[3]~6_combout\,
	datae => \inst|ALT_INV_ACC~7_combout\,
	dataf => \inst|ALT_INV_ACC~31_combout\,
	combout => \inst|ACC~32_combout\);

-- Location: FF_X81_Y8_N8
\inst|ACC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~32_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(3));

-- Location: FF_X79_Y7_N11
\inst7|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~12_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(3));

-- Location: LABCELL_X79_Y7_N0
\inst7|temp~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~12_combout\ = ( \inst|ACC\(3) & ( \inst7|temp\(3) ) ) # ( !\inst|ACC\(3) & ( \inst7|temp\(3) & ( !\inst13|srom|rom_block|auto_generated|q_a\(20) ) ) ) # ( \inst|ACC\(3) & ( !\inst7|temp\(3) & ( \inst13|srom|rom_block|auto_generated|q_a\(20) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datae => \inst|ALT_INV_ACC\(3),
	dataf => \inst7|ALT_INV_temp\(3),
	combout => \inst7|temp~12_combout\);

-- Location: FF_X79_Y7_N4
\inst7|MBR_RAM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~12_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(3));

-- Location: FF_X77_Y8_N38
\inst7|MBR_OP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst14|sram|ram_block|auto_generated|q_a\(13),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst7|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_OP\(5));

-- Location: FF_X77_Y7_N17
\inst3|CARout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|Add0~9_sumout\,
	asdata => \inst13|srom|rom_block|auto_generated|q_a\(5),
	sclr => \inst3|CARout[0]~0_combout\,
	sload => \inst3|CARout[0]~1_combout\,
	ena => \inst3|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|CARout\(5));

-- Location: LABCELL_X77_Y8_N24
\inst|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = ( !\inst13|srom|rom_block|auto_generated|q_a\(14) & ( \inst13|srom|rom_block|auto_generated|q_a\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	combout => \inst|Equal4~0_combout\);

-- Location: LABCELL_X79_Y8_N39
\inst|ACC~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~7_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(13) & ( \inst|Equal4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Equal4~0_combout\,
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst|ACC~7_combout\);

-- Location: LABCELL_X81_Y8_N24
\inst|ACC~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~33_combout\ = ( \inst|Equal4~1_combout\ & ( \inst|Add0~53_sumout\ & ( (!\inst|Equal2~0_combout\ & ((\inst|ACC\(2)))) # (\inst|Equal2~0_combout\ & (!\inst2|BRout[2]~_Duplicate_1_q\ & !\inst|ACC\(2))) ) ) ) # ( !\inst|Equal4~1_combout\ & ( 
-- \inst|Add0~53_sumout\ & ( (\inst|Equal2~0_combout\ & ((!\inst2|BRout[2]~_Duplicate_1_q\ & ((!\inst13|srom|rom_block|auto_generated|q_a\(12)) # (!\inst|ACC\(2)))) # (\inst2|BRout[2]~_Duplicate_1_q\ & (!\inst13|srom|rom_block|auto_generated|q_a\(12) & 
-- !\inst|ACC\(2))))) ) ) ) # ( \inst|Equal4~1_combout\ & ( !\inst|Add0~53_sumout\ & ( (!\inst|Equal2~0_combout\ & ((\inst|ACC\(2)))) # (\inst|Equal2~0_combout\ & (!\inst2|BRout[2]~_Duplicate_1_q\ & !\inst|ACC\(2))) ) ) ) # ( !\inst|Equal4~1_combout\ & ( 
-- !\inst|Add0~53_sumout\ & ( (!\inst|Equal2~0_combout\) # ((!\inst2|BRout[2]~_Duplicate_1_q\ & ((!\inst13|srom|rom_block|auto_generated|q_a\(12)) # (!\inst|ACC\(2)))) # (\inst2|BRout[2]~_Duplicate_1_q\ & (!\inst13|srom|rom_block|auto_generated|q_a\(12) & 
-- !\inst|ACC\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101010010001001010101001010100010000000100010010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal2~0_combout\,
	datab => \inst2|ALT_INV_BRout[2]~_Duplicate_1_q\,
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datad => \inst|ALT_INV_ACC\(2),
	datae => \inst|ALT_INV_Equal4~1_combout\,
	dataf => \inst|ALT_INV_Add0~53_sumout\,
	combout => \inst|ACC~33_combout\);

-- Location: LABCELL_X81_Y8_N42
\inst|ACC~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~34_combout\ = ( \inst|ACC\(1) & ( \inst|ACC~33_combout\ & ( (!\inst|ACC~7_combout\ & (\inst|ACC\(3) & ((\inst|ACC[3]~6_combout\)))) # (\inst|ACC~7_combout\ & (((\inst|ACC[3]~6_combout\) # (\inst|temp\(2))))) ) ) ) # ( !\inst|ACC\(1) & ( 
-- \inst|ACC~33_combout\ & ( (!\inst|ACC~7_combout\ & (\inst|ACC\(3) & ((\inst|ACC[3]~6_combout\)))) # (\inst|ACC~7_combout\ & (((\inst|temp\(2) & !\inst|ACC[3]~6_combout\)))) ) ) ) # ( \inst|ACC\(1) & ( !\inst|ACC~33_combout\ & ( (!\inst|ACC~7_combout\ & 
-- (((!\inst|ACC[3]~6_combout\)) # (\inst|ACC\(3)))) # (\inst|ACC~7_combout\ & (((\inst|ACC[3]~6_combout\) # (\inst|temp\(2))))) ) ) ) # ( !\inst|ACC\(1) & ( !\inst|ACC~33_combout\ & ( (!\inst|ACC~7_combout\ & (((!\inst|ACC[3]~6_combout\)) # 
-- (\inst|ACC\(3)))) # (\inst|ACC~7_combout\ & (((\inst|temp\(2) & !\inst|ACC[3]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100100010101011110111011100000101001000100000010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC~7_combout\,
	datab => \inst|ALT_INV_ACC\(3),
	datac => \inst|ALT_INV_temp\(2),
	datad => \inst|ALT_INV_ACC[3]~6_combout\,
	datae => \inst|ALT_INV_ACC\(1),
	dataf => \inst|ALT_INV_ACC~33_combout\,
	combout => \inst|ACC~34_combout\);

-- Location: FF_X81_Y8_N44
\inst|ACC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~34_combout\,
	sclr => \inst|ACC[3]~9_combout\,
	ena => \inst|ACC[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(2));

-- Location: FF_X79_Y7_N17
\inst7|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~13_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(2));

-- Location: LABCELL_X79_Y7_N57
\inst7|temp~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~13_combout\ = ( \inst|ACC\(2) & ( \inst7|temp\(2) ) ) # ( !\inst|ACC\(2) & ( \inst7|temp\(2) & ( !\inst13|srom|rom_block|auto_generated|q_a\(20) ) ) ) # ( \inst|ACC\(2) & ( !\inst7|temp\(2) & ( \inst13|srom|rom_block|auto_generated|q_a\(20) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datae => \inst|ALT_INV_ACC\(2),
	dataf => \inst7|ALT_INV_temp\(2),
	combout => \inst7|temp~13_combout\);

-- Location: FF_X79_Y7_N55
\inst7|MBR_RAM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~13_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(2));

-- Location: FF_X77_Y8_N32
\inst7|MBR_OP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst14|sram|ram_block|auto_generated|q_a\(12),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst7|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_OP\(4));

-- Location: FF_X77_Y7_N14
\inst3|CARout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|Add0~13_sumout\,
	asdata => \inst13|srom|rom_block|auto_generated|q_a\(4),
	sclr => \inst3|CARout[0]~0_combout\,
	sload => \inst3|CARout[0]~1_combout\,
	ena => \inst3|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|CARout\(4));

-- Location: FF_X79_Y8_N53
\inst7|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~14_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(1));

-- Location: LABCELL_X79_Y8_N57
\inst7|temp~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~14_combout\ = ( \inst7|temp\(1) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(20)) # (\inst|ACC\(1)) ) ) # ( !\inst7|temp\(1) & ( (\inst13|srom|rom_block|auto_generated|q_a\(20) & \inst|ACC\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	datad => \inst|ALT_INV_ACC\(1),
	dataf => \inst7|ALT_INV_temp\(1),
	combout => \inst7|temp~14_combout\);

-- Location: FF_X79_Y8_N43
\inst7|MBR_RAM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~14_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(1));

-- Location: LABCELL_X75_Y8_N57
\inst7|MBR_MAR[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_MAR[7]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(7),
	combout => \inst7|MBR_MAR[7]~feeder_combout\);

-- Location: FF_X75_Y8_N59
\inst7|MBR_MAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_MAR[7]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_MAR\(7));

-- Location: LABCELL_X74_Y8_N0
\inst6|MARout[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|MARout[7]~feeder_combout\ = ( \inst7|MBR_MAR\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(7),
	combout => \inst6|MARout[7]~feeder_combout\);

-- Location: MLABCELL_X78_Y8_N24
\inst8|PCout[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|PCout[7]~feeder_combout\ = ( \inst7|MBR_MAR\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(7),
	combout => \inst8|PCout[7]~feeder_combout\);

-- Location: MLABCELL_X78_Y8_N45
\inst8|PCout[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|PCout[6]~feeder_combout\ = ( \inst7|MBR_MAR\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(6),
	combout => \inst8|PCout[6]~feeder_combout\);

-- Location: MLABCELL_X78_Y8_N39
\inst8|PCout[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|PCout[5]~feeder_combout\ = ( \inst7|MBR_MAR\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(5),
	combout => \inst8|PCout[5]~feeder_combout\);

-- Location: MLABCELL_X78_Y8_N42
\inst8|PCout[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|PCout[4]~feeder_combout\ = ( \inst7|MBR_MAR\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(4),
	combout => \inst8|PCout[4]~feeder_combout\);

-- Location: MLABCELL_X72_Y8_N39
\inst8|PCout[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|PCout[3]~feeder_combout\ = \inst7|MBR_MAR\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst7|ALT_INV_MBR_MAR\(3),
	combout => \inst8|PCout[3]~feeder_combout\);

-- Location: MLABCELL_X78_Y8_N54
\inst8|PCout[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|PCout[2]~feeder_combout\ = ( \inst7|MBR_MAR\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(2),
	combout => \inst8|PCout[2]~feeder_combout\);

-- Location: MLABCELL_X78_Y8_N48
\inst8|PCout[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|PCout[1]~feeder_combout\ = ( \inst7|MBR_MAR\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(1),
	combout => \inst8|PCout[1]~feeder_combout\);

-- Location: MLABCELL_X78_Y8_N36
\inst8|PCout[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|PCout[0]~feeder_combout\ = ( \inst7|MBR_MAR\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(0),
	combout => \inst8|PCout[0]~feeder_combout\);

-- Location: MLABCELL_X78_Y8_N0
\inst8|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~29_sumout\ = SUM(( \inst8|PCout\(0) ) + ( VCC ) + ( !VCC ))
-- \inst8|Add0~30\ = CARRY(( \inst8|PCout\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(0),
	cin => GND,
	sumout => \inst8|Add0~29_sumout\,
	cout => \inst8|Add0~30\);

-- Location: MLABCELL_X78_Y8_N57
\inst8|PCout[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|PCout[4]~0_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(10) & ( !\reset~input_o\ ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(10) & ( (!\reset~input_o\) # ((\inst13|srom|rom_block|auto_generated|q_a\(8) & 
-- !\inst13|srom|rom_block|auto_generated|q_a\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101010101011111010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(8),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(9),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(10),
	combout => \inst8|PCout[4]~0_combout\);

-- Location: LABCELL_X79_Y8_N51
\inst|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ( !\inst|ACC\(4) & ( (!\inst|ACC\(0) & (!\inst|ACC\(15) & !\inst|ACC\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(0),
	datab => \inst|ALT_INV_ACC\(15),
	datac => \inst|ALT_INV_ACC\(6),
	dataf => \inst|ALT_INV_ACC\(4),
	combout => \inst|LessThan0~0_combout\);

-- Location: LABCELL_X79_Y7_N12
\inst|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = ( !\inst|ACC\(10) & ( !\inst|ACC\(7) & ( (!\inst|ACC\(8) & (!\inst|ACC\(9) & (!\inst|ACC\(11) & !\inst|ACC\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(8),
	datab => \inst|ALT_INV_ACC\(9),
	datac => \inst|ALT_INV_ACC\(11),
	datad => \inst|ALT_INV_ACC\(3),
	datae => \inst|ALT_INV_ACC\(10),
	dataf => \inst|ALT_INV_ACC\(7),
	combout => \inst|LessThan0~1_combout\);

-- Location: LABCELL_X81_Y8_N36
\inst|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = ( !\inst|ACC\(14) & ( !\inst|ACC\(5) & ( (!\inst|ACC\(13) & (!\inst|ACC\(1) & (!\inst|ACC\(12) & !\inst|ACC\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC\(13),
	datab => \inst|ALT_INV_ACC\(1),
	datac => \inst|ALT_INV_ACC\(12),
	datad => \inst|ALT_INV_ACC\(2),
	datae => \inst|ALT_INV_ACC\(14),
	dataf => \inst|ALT_INV_ACC\(5),
	combout => \inst|LessThan0~2_combout\);

-- Location: MLABCELL_X78_Y8_N30
\inst8|PCout[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|PCout[4]~1_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(9) & ( !\inst13|srom|rom_block|auto_generated|q_a\(10) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(9) & ( !\inst13|srom|rom_block|auto_generated|q_a\(10) & ( 
-- ((\inst|LessThan0~0_combout\ & (\inst|LessThan0~1_combout\ & \inst|LessThan0~2_combout\))) # (\inst13|srom|rom_block|auto_generated|q_a\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~0_combout\,
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(8),
	datac => \inst|ALT_INV_LessThan0~1_combout\,
	datad => \inst|ALT_INV_LessThan0~2_combout\,
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(9),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(10),
	combout => \inst8|PCout[4]~1_combout\);

-- Location: LABCELL_X77_Y8_N27
\inst8|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Equal0~0_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(12) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(15) & (\inst13|srom|rom_block|auto_generated|q_a\(14) & !\inst13|srom|rom_block|auto_generated|q_a\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst8|Equal0~0_combout\);

-- Location: MLABCELL_X78_Y8_N51
\inst8|PCout[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|PCout[4]~2_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(10) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(10) & ( (((!\reset~input_o\) # (\inst8|Equal0~0_combout\)) # (\inst13|srom|rom_block|auto_generated|q_a\(8))) # 
-- (\inst13|srom|rom_block|auto_generated|q_a\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(9),
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(8),
	datac => \ALT_INV_reset~input_o\,
	datad => \inst8|ALT_INV_Equal0~0_combout\,
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(10),
	combout => \inst8|PCout[4]~2_combout\);

-- Location: FF_X78_Y8_N38
\inst8|PCout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst8|PCout[0]~feeder_combout\,
	asdata => \inst8|Add0~29_sumout\,
	sclr => \inst8|PCout[4]~0_combout\,
	sload => \inst8|PCout[4]~1_combout\,
	ena => \inst8|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(0));

-- Location: MLABCELL_X78_Y8_N3
\inst8|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~25_sumout\ = SUM(( \inst8|PCout\(1) ) + ( GND ) + ( \inst8|Add0~30\ ))
-- \inst8|Add0~26\ = CARRY(( \inst8|PCout\(1) ) + ( GND ) + ( \inst8|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(1),
	cin => \inst8|Add0~30\,
	sumout => \inst8|Add0~25_sumout\,
	cout => \inst8|Add0~26\);

-- Location: FF_X78_Y8_N50
\inst8|PCout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst8|PCout[1]~feeder_combout\,
	asdata => \inst8|Add0~25_sumout\,
	sclr => \inst8|PCout[4]~0_combout\,
	sload => \inst8|PCout[4]~1_combout\,
	ena => \inst8|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(1));

-- Location: MLABCELL_X78_Y8_N6
\inst8|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~21_sumout\ = SUM(( \inst8|PCout\(2) ) + ( GND ) + ( \inst8|Add0~26\ ))
-- \inst8|Add0~22\ = CARRY(( \inst8|PCout\(2) ) + ( GND ) + ( \inst8|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(2),
	cin => \inst8|Add0~26\,
	sumout => \inst8|Add0~21_sumout\,
	cout => \inst8|Add0~22\);

-- Location: FF_X78_Y8_N56
\inst8|PCout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst8|PCout[2]~feeder_combout\,
	asdata => \inst8|Add0~21_sumout\,
	sclr => \inst8|PCout[4]~0_combout\,
	sload => \inst8|PCout[4]~1_combout\,
	ena => \inst8|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(2));

-- Location: MLABCELL_X78_Y8_N9
\inst8|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~17_sumout\ = SUM(( \inst8|PCout\(3) ) + ( GND ) + ( \inst8|Add0~22\ ))
-- \inst8|Add0~18\ = CARRY(( \inst8|PCout\(3) ) + ( GND ) + ( \inst8|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(3),
	cin => \inst8|Add0~22\,
	sumout => \inst8|Add0~17_sumout\,
	cout => \inst8|Add0~18\);

-- Location: FF_X72_Y8_N41
\inst8|PCout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst8|PCout[3]~feeder_combout\,
	asdata => \inst8|Add0~17_sumout\,
	sclr => \inst8|PCout[4]~0_combout\,
	sload => \inst8|PCout[4]~1_combout\,
	ena => \inst8|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(3));

-- Location: MLABCELL_X78_Y8_N12
\inst8|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~13_sumout\ = SUM(( \inst8|PCout\(4) ) + ( GND ) + ( \inst8|Add0~18\ ))
-- \inst8|Add0~14\ = CARRY(( \inst8|PCout\(4) ) + ( GND ) + ( \inst8|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(4),
	cin => \inst8|Add0~18\,
	sumout => \inst8|Add0~13_sumout\,
	cout => \inst8|Add0~14\);

-- Location: FF_X78_Y8_N44
\inst8|PCout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst8|PCout[4]~feeder_combout\,
	asdata => \inst8|Add0~13_sumout\,
	sclr => \inst8|PCout[4]~0_combout\,
	sload => \inst8|PCout[4]~1_combout\,
	ena => \inst8|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(4));

-- Location: MLABCELL_X78_Y8_N15
\inst8|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~9_sumout\ = SUM(( \inst8|PCout\(5) ) + ( GND ) + ( \inst8|Add0~14\ ))
-- \inst8|Add0~10\ = CARRY(( \inst8|PCout\(5) ) + ( GND ) + ( \inst8|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ALT_INV_PCout\(5),
	cin => \inst8|Add0~14\,
	sumout => \inst8|Add0~9_sumout\,
	cout => \inst8|Add0~10\);

-- Location: FF_X78_Y8_N41
\inst8|PCout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst8|PCout[5]~feeder_combout\,
	asdata => \inst8|Add0~9_sumout\,
	sclr => \inst8|PCout[4]~0_combout\,
	sload => \inst8|PCout[4]~1_combout\,
	ena => \inst8|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(5));

-- Location: MLABCELL_X78_Y8_N18
\inst8|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~5_sumout\ = SUM(( \inst8|PCout\(6) ) + ( GND ) + ( \inst8|Add0~10\ ))
-- \inst8|Add0~6\ = CARRY(( \inst8|PCout\(6) ) + ( GND ) + ( \inst8|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ALT_INV_PCout\(6),
	cin => \inst8|Add0~10\,
	sumout => \inst8|Add0~5_sumout\,
	cout => \inst8|Add0~6\);

-- Location: FF_X78_Y8_N47
\inst8|PCout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst8|PCout[6]~feeder_combout\,
	asdata => \inst8|Add0~5_sumout\,
	sclr => \inst8|PCout[4]~0_combout\,
	sload => \inst8|PCout[4]~1_combout\,
	ena => \inst8|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(6));

-- Location: MLABCELL_X78_Y8_N21
\inst8|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|Add0~1_sumout\ = SUM(( \inst8|PCout\(7) ) + ( GND ) + ( \inst8|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_PCout\(7),
	cin => \inst8|Add0~6\,
	sumout => \inst8|Add0~1_sumout\);

-- Location: FF_X78_Y8_N26
\inst8|PCout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst8|PCout[7]~feeder_combout\,
	asdata => \inst8|Add0~1_sumout\,
	sclr => \inst8|PCout[4]~0_combout\,
	sload => \inst8|PCout[4]~1_combout\,
	ena => \inst8|PCout[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|PCout\(7));

-- Location: LABCELL_X74_Y8_N39
\inst6|MARout[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|MARout[1]~0_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(19) & ( \inst13|srom|rom_block|auto_generated|q_a\(18) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(19) & ( \inst13|srom|rom_block|auto_generated|q_a\(18) ) ) # ( 
-- \inst13|srom|rom_block|auto_generated|q_a\(19) & ( !\inst13|srom|rom_block|auto_generated|q_a\(18) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(19),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	combout => \inst6|MARout[1]~0_combout\);

-- Location: FF_X74_Y8_N2
\inst6|MARout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|MARout[7]~feeder_combout\,
	asdata => \inst8|PCout\(7),
	sload => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst6|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|MARout\(7));

-- Location: LABCELL_X75_Y8_N6
\inst7|MBR_MAR[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_MAR[6]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(6),
	combout => \inst7|MBR_MAR[6]~feeder_combout\);

-- Location: FF_X75_Y8_N8
\inst7|MBR_MAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_MAR[6]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_MAR\(6));

-- Location: LABCELL_X74_Y8_N9
\inst6|MARout[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|MARout[6]~feeder_combout\ = ( \inst7|MBR_MAR\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(6),
	combout => \inst6|MARout[6]~feeder_combout\);

-- Location: FF_X74_Y8_N11
\inst6|MARout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|MARout[6]~feeder_combout\,
	asdata => \inst8|PCout\(6),
	sload => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst6|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|MARout\(6));

-- Location: FF_X75_Y8_N20
\inst7|MBR_MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst14|sram|ram_block|auto_generated|q_a\(5),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_MAR\(5));

-- Location: LABCELL_X74_Y8_N12
\inst6|MARout[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|MARout[5]~feeder_combout\ = ( \inst7|MBR_MAR\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(5),
	combout => \inst6|MARout[5]~feeder_combout\);

-- Location: FF_X74_Y8_N14
\inst6|MARout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|MARout[5]~feeder_combout\,
	asdata => \inst8|PCout\(5),
	sload => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst6|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|MARout\(5));

-- Location: FF_X75_Y8_N47
\inst7|MBR_MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst14|sram|ram_block|auto_generated|q_a\(4),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_MAR\(4));

-- Location: LABCELL_X74_Y8_N45
\inst6|MARout[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|MARout[4]~feeder_combout\ = ( \inst7|MBR_MAR\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(4),
	combout => \inst6|MARout[4]~feeder_combout\);

-- Location: FF_X74_Y8_N47
\inst6|MARout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|MARout[4]~feeder_combout\,
	asdata => \inst8|PCout\(4),
	sload => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst6|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|MARout\(4));

-- Location: LABCELL_X73_Y8_N42
\inst7|MBR_MAR[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_MAR[3]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(3),
	combout => \inst7|MBR_MAR[3]~feeder_combout\);

-- Location: FF_X73_Y8_N44
\inst7|MBR_MAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_MAR[3]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_MAR\(3));

-- Location: LABCELL_X74_Y8_N48
\inst6|MARout[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|MARout[3]~feeder_combout\ = ( \inst7|MBR_MAR\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(3),
	combout => \inst6|MARout[3]~feeder_combout\);

-- Location: FF_X74_Y8_N50
\inst6|MARout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|MARout[3]~feeder_combout\,
	asdata => \inst8|PCout\(3),
	sload => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst6|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|MARout\(3));

-- Location: LABCELL_X77_Y8_N18
\inst7|MBR_MAR[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_MAR[2]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(2),
	combout => \inst7|MBR_MAR[2]~feeder_combout\);

-- Location: FF_X77_Y8_N20
\inst7|MBR_MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_MAR[2]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_MAR\(2));

-- Location: LABCELL_X74_Y8_N57
\inst6|MARout[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|MARout[2]~feeder_combout\ = ( \inst7|MBR_MAR\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(2),
	combout => \inst6|MARout[2]~feeder_combout\);

-- Location: FF_X74_Y8_N59
\inst6|MARout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|MARout[2]~feeder_combout\,
	asdata => \inst8|PCout\(2),
	sload => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst6|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|MARout\(2));

-- Location: LABCELL_X75_Y8_N51
\inst7|MBR_MAR[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_MAR[1]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(1),
	combout => \inst7|MBR_MAR[1]~feeder_combout\);

-- Location: FF_X75_Y8_N53
\inst7|MBR_MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_MAR[1]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_MAR\(1));

-- Location: LABCELL_X74_Y8_N24
\inst6|MARout[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|MARout[1]~feeder_combout\ = ( \inst7|MBR_MAR\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(1),
	combout => \inst6|MARout[1]~feeder_combout\);

-- Location: FF_X74_Y8_N26
\inst6|MARout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|MARout[1]~feeder_combout\,
	asdata => \inst8|PCout\(1),
	sload => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst6|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|MARout\(1));

-- Location: LABCELL_X75_Y8_N12
\inst7|MBR_MAR[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_MAR[0]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(0),
	combout => \inst7|MBR_MAR[0]~feeder_combout\);

-- Location: FF_X75_Y8_N14
\inst7|MBR_MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_MAR[0]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_MAR\(0));

-- Location: LABCELL_X74_Y8_N21
\inst6|MARout[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6|MARout[0]~feeder_combout\ = ( \inst7|MBR_MAR\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_MAR\(0),
	combout => \inst6|MARout[0]~feeder_combout\);

-- Location: FF_X74_Y8_N23
\inst6|MARout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst6|MARout[0]~feeder_combout\,
	asdata => \inst8|PCout\(0),
	sload => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(18),
	ena => \inst6|MARout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|MARout\(0));

-- Location: FF_X77_Y8_N17
\inst7|MBR_OP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst14|sram|ram_block|auto_generated|q_a\(11),
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \inst7|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_OP\(3));

-- Location: FF_X77_Y7_N11
\inst3|CARout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|Add0~17_sumout\,
	asdata => \inst13|srom|rom_block|auto_generated|q_a\(3),
	sclr => \inst3|CARout[0]~0_combout\,
	sload => \inst3|CARout[0]~1_combout\,
	ena => \inst3|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|CARout\(3));

-- Location: LABCELL_X77_Y8_N39
\inst|temp[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|temp[15]~0_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(13) & ( \inst13|srom|rom_block|auto_generated|q_a\(12) & ( (\reset~input_o\ & (!\inst13|srom|rom_block|auto_generated|q_a\(14) & \inst13|srom|rom_block|auto_generated|q_a\(15))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	combout => \inst|temp[15]~0_combout\);

-- Location: LABCELL_X79_Y8_N42
\inst|ACC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~0_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(13) & ( (\inst13|srom|rom_block|auto_generated|q_a\(12) & (!\inst13|srom|rom_block|auto_generated|q_a\(14) & !\inst13|srom|rom_block|auto_generated|q_a\(15))) ) ) # ( 
-- !\inst13|srom|rom_block|auto_generated|q_a\(13) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(12) & (\inst13|srom|rom_block|auto_generated|q_a\(14) & !\inst13|srom|rom_block|auto_generated|q_a\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst|ACC~0_combout\);

-- Location: LABCELL_X79_Y8_N54
\inst|ACC~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~1_combout\ = ( \inst13|srom|rom_block|auto_generated|q_a\(13) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(15) & ((!\inst13|srom|rom_block|auto_generated|q_a\(12) & (!\inst13|srom|rom_block|auto_generated|q_a\(11) & 
-- !\inst13|srom|rom_block|auto_generated|q_a\(14))) # (\inst13|srom|rom_block|auto_generated|q_a\(12) & ((\inst13|srom|rom_block|auto_generated|q_a\(14)))))) # (\inst13|srom|rom_block|auto_generated|q_a\(15) & 
-- (!\inst13|srom|rom_block|auto_generated|q_a\(11))) ) ) # ( !\inst13|srom|rom_block|auto_generated|q_a\(13) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(11) & (((!\inst13|srom|rom_block|auto_generated|q_a\(14)) # 
-- (\inst13|srom|rom_block|auto_generated|q_a\(15))) # (\inst13|srom|rom_block|auto_generated|q_a\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000101010101010100010101010001010001110101000101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(11),
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(14),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	combout => \inst|ACC~1_combout\);

-- Location: LABCELL_X79_Y8_N36
\inst|ACC~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~37_combout\ = ( \inst|ACC~1_combout\ & ( ((\inst2|BRout[0]~_Duplicate_1_q\ & (\inst13|srom|rom_block|auto_generated|q_a\(12) & \inst|Equal2~0_combout\))) # (\inst|ACC\(0)) ) ) # ( !\inst|ACC~1_combout\ & ( (\inst2|BRout[0]~_Duplicate_1_q\ & 
-- (\inst|Equal2~0_combout\ & ((\inst|ACC\(0)) # (\inst13|srom|rom_block|auto_generated|q_a\(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000000010000010100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_BRout[0]~_Duplicate_1_q\,
	datab => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datac => \inst|ALT_INV_Equal2~0_combout\,
	datad => \inst|ALT_INV_ACC\(0),
	dataf => \inst|ALT_INV_ACC~1_combout\,
	combout => \inst|ACC~37_combout\);

-- Location: LABCELL_X79_Y8_N27
\inst|ACC~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~38_combout\ = ( \inst|ACC\(0) & ( \inst|Add0~61_sumout\ & ( ((!\inst|ACC~0_combout\ & !\inst|ACC~37_combout\)) # (\inst|Equal4~1_combout\) ) ) ) # ( !\inst|ACC\(0) & ( \inst|Add0~61_sumout\ & ( (!\inst|Equal4~1_combout\ & (!\inst|ACC~0_combout\ 
-- & !\inst|ACC~37_combout\)) ) ) ) # ( \inst|ACC\(0) & ( !\inst|Add0~61_sumout\ & ( (!\inst|ACC~37_combout\) # (\inst|Equal4~1_combout\) ) ) ) # ( !\inst|ACC\(0) & ( !\inst|Add0~61_sumout\ & ( (!\inst|Equal4~1_combout\ & !\inst|ACC~37_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000111111110101010110100000000000001111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal4~1_combout\,
	datac => \inst|ALT_INV_ACC~0_combout\,
	datad => \inst|ALT_INV_ACC~37_combout\,
	datae => \inst|ALT_INV_ACC\(0),
	dataf => \inst|ALT_INV_Add0~61_sumout\,
	combout => \inst|ACC~38_combout\);

-- Location: LABCELL_X79_Y8_N12
\inst|ACC~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~39_combout\ = ( \inst|ACC\(1) & ( \inst|ACC~38_combout\ & ( (\inst|Equal4~0_combout\ & (\inst13|srom|rom_block|auto_generated|q_a\(12) & ((!\inst13|srom|rom_block|auto_generated|q_a\(13)) # (\inst|temp\(0))))) ) ) ) # ( !\inst|ACC\(1) & ( 
-- \inst|ACC~38_combout\ & ( (\inst|temp\(0) & (\inst|Equal4~0_combout\ & (\inst13|srom|rom_block|auto_generated|q_a\(13) & \inst13|srom|rom_block|auto_generated|q_a\(12)))) ) ) ) # ( \inst|ACC\(1) & ( !\inst|ACC~38_combout\ & ( (!\inst|Equal4~0_combout\) # 
-- ((!\inst13|srom|rom_block|auto_generated|q_a\(13)) # ((\inst|temp\(0) & \inst13|srom|rom_block|auto_generated|q_a\(12)))) ) ) ) # ( !\inst|ACC\(1) & ( !\inst|ACC~38_combout\ & ( (!\inst|Equal4~0_combout\) # 
-- ((!\inst13|srom|rom_block|auto_generated|q_a\(13) & ((!\inst13|srom|rom_block|auto_generated|q_a\(12)))) # (\inst13|srom|rom_block|auto_generated|q_a\(13) & (\inst|temp\(0) & \inst13|srom|rom_block|auto_generated|q_a\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001101111111001111110100000000000000010000000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_temp\(0),
	datab => \inst|ALT_INV_Equal4~0_combout\,
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datae => \inst|ALT_INV_ACC\(1),
	dataf => \inst|ALT_INV_ACC~38_combout\,
	combout => \inst|ACC~39_combout\);

-- Location: FF_X79_Y8_N14
\inst|ACC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~39_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(0));

-- Location: FF_X79_Y8_N26
\inst7|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~15_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|temp\(0));

-- Location: LABCELL_X79_Y8_N3
\inst7|temp~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|temp~15_combout\ = ( \inst7|temp\(0) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(20)) # (\inst|ACC\(0)) ) ) # ( !\inst7|temp\(0) & ( (\inst|ACC\(0) & \inst13|srom|rom_block|auto_generated|q_a\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_ACC\(0),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(20),
	dataf => \inst7|ALT_INV_temp\(0),
	combout => \inst7|temp~15_combout\);

-- Location: FF_X79_Y8_N41
\inst7|MBR_RAM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	asdata => \inst7|temp~15_combout\,
	sload => VCC,
	ena => \inst7|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_RAM\(0));

-- Location: LABCELL_X77_Y8_N9
\inst7|MBR_OP[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_OP[2]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(10),
	combout => \inst7|MBR_OP[2]~feeder_combout\);

-- Location: FF_X77_Y8_N11
\inst7|MBR_OP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_OP[2]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst7|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_OP\(2));

-- Location: FF_X77_Y7_N8
\inst3|CARout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|Add0~21_sumout\,
	asdata => \inst13|srom|rom_block|auto_generated|q_a\(2),
	sclr => \inst3|CARout[0]~0_combout\,
	sload => \inst3|CARout[0]~1_combout\,
	ena => \inst3|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|CARout\(2));

-- Location: LABCELL_X77_Y8_N54
\inst7|MBR_OP[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|MBR_OP[1]~feeder_combout\ = ( \inst14|sram|ram_block|auto_generated|q_a\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst14|sram|ram_block|auto_generated|ALT_INV_q_a\(9),
	combout => \inst7|MBR_OP[1]~feeder_combout\);

-- Location: FF_X77_Y8_N56
\inst7|MBR_OP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputCLKENA0_outclk\,
	d => \inst7|MBR_OP[1]~feeder_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \inst7|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MBR_OP\(1));

-- Location: FF_X77_Y7_N5
\inst3|CARout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|Add0~25_sumout\,
	asdata => \inst13|srom|rom_block|auto_generated|q_a\(1),
	sclr => \inst3|CARout[0]~0_combout\,
	sload => \inst3|CARout[0]~1_combout\,
	ena => \inst3|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|CARout\(1));

-- Location: LABCELL_X77_Y7_N45
\inst3|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Equal3~0_combout\ = ( !\inst13|srom|rom_block|auto_generated|q_a\(25) & ( !\inst13|srom|rom_block|auto_generated|q_a\(26) & ( (!\inst13|srom|rom_block|auto_generated|q_a\(24) & \inst13|srom|rom_block|auto_generated|q_a\(23)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(24),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(23),
	datae => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(25),
	dataf => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(26),
	combout => \inst3|Equal3~0_combout\);

-- Location: FF_X77_Y7_N2
\inst3|CARout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst3|Add0~29_sumout\,
	asdata => \inst13|srom|rom_block|auto_generated|q_a\(0),
	sclr => \inst3|CARout[0]~0_combout\,
	sload => \inst3|CARout[0]~1_combout\,
	ena => \inst3|CARout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|CARout\(0));

-- Location: LABCELL_X75_Y8_N0
\inst2|BRout[15]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|BRout[15]~_Duplicate_1feeder_combout\ = ( \inst7|MBR_BR\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst7|ALT_INV_MBR_BR\(15),
	combout => \inst2|BRout[15]~_Duplicate_1feeder_combout\);

-- Location: FF_X75_Y8_N2
\inst2|BRout[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|srom|rom_block|auto_generated|q_a\(22),
	d => \inst2|BRout[15]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BRout[15]~_Duplicate_1_q\);

-- Location: LABCELL_X79_Y8_N30
\inst|ACC~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~2_combout\ = ( \inst|Equal4~1_combout\ & ( \inst|Equal2~0_combout\ & ( !\inst|ACC\(15) ) ) ) # ( !\inst|Equal4~1_combout\ & ( \inst|Equal2~0_combout\ & ( (!\inst|ACC\(15) & (((\inst2|BRout[15]~_Duplicate_1_q\ & 
-- \inst13|srom|rom_block|auto_generated|q_a\(12))))) # (\inst|ACC\(15) & (((\inst2|BRout[15]~_Duplicate_1_q\)) # (\inst|ACC~1_combout\))) ) ) ) # ( \inst|Equal4~1_combout\ & ( !\inst|Equal2~0_combout\ & ( !\inst|ACC\(15) ) ) ) # ( !\inst|Equal4~1_combout\ & 
-- ( !\inst|Equal2~0_combout\ & ( (\inst|ACC~1_combout\ & \inst|ACC\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110011001100110000010011000111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC~1_combout\,
	datab => \inst|ALT_INV_ACC\(15),
	datac => \inst2|ALT_INV_BRout[15]~_Duplicate_1_q\,
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datae => \inst|ALT_INV_Equal4~1_combout\,
	dataf => \inst|ALT_INV_Equal2~0_combout\,
	combout => \inst|ACC~2_combout\);

-- Location: LABCELL_X80_Y8_N48
\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( !\inst|Equal1~0_combout\ $ (!\inst2|BRout[15]~_Duplicate_1_q\) ) + ( \inst|ACC\(15) ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_ACC\(15),
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst2|ALT_INV_BRout[15]~_Duplicate_1_q\,
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~1_sumout\);

-- Location: LABCELL_X80_Y8_N57
\inst|ACC~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~3_combout\ = ( \inst|Add0~1_sumout\ & ( (!\inst|ACC~2_combout\ & ((!\inst|ACC~0_combout\) # (\inst|Equal4~1_combout\))) ) ) # ( !\inst|Add0~1_sumout\ & ( !\inst|ACC~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_ACC~0_combout\,
	datac => \inst|ALT_INV_Equal4~1_combout\,
	datad => \inst|ALT_INV_ACC~2_combout\,
	dataf => \inst|ALT_INV_Add0~1_sumout\,
	combout => \inst|ACC~3_combout\);

-- Location: LABCELL_X79_Y8_N6
\inst|ACC~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ACC~4_combout\ = ( \inst|Equal4~0_combout\ & ( \inst|ACC~3_combout\ & ( (\inst13|srom|rom_block|auto_generated|q_a\(13) & ((!\inst13|srom|rom_block|auto_generated|q_a\(12) & ((\inst|ACC\(14)))) # (\inst13|srom|rom_block|auto_generated|q_a\(12) & 
-- (\inst|temp\(15))))) ) ) ) # ( \inst|Equal4~0_combout\ & ( !\inst|ACC~3_combout\ & ( (!\inst13|srom|rom_block|auto_generated|q_a\(13) & (((!\inst13|srom|rom_block|auto_generated|q_a\(12))))) # (\inst13|srom|rom_block|auto_generated|q_a\(13) & 
-- ((!\inst13|srom|rom_block|auto_generated|q_a\(12) & ((\inst|ACC\(14)))) # (\inst13|srom|rom_block|auto_generated|q_a\(12) & (\inst|temp\(15))))) ) ) ) # ( !\inst|Equal4~0_combout\ & ( !\inst|ACC~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100110000010100000000000000000000001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_temp\(15),
	datab => \inst|ALT_INV_ACC\(14),
	datac => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(13),
	datad => \inst13|srom|rom_block|auto_generated|ALT_INV_q_a\(12),
	datae => \inst|ALT_INV_Equal4~0_combout\,
	dataf => \inst|ALT_INV_ACC~3_combout\,
	combout => \inst|ACC~4_combout\);

-- Location: FF_X79_Y8_N8
\inst|ACC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst|ACC~4_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(15));

-- Location: MLABCELL_X28_Y74_N3
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


