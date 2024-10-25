-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/07/2023 09:38:19"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador10 IS
    PORT (
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	SW : IN std_logic_vector(17 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END contador10;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF contador10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \ANA|novo_clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[10]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ANA2|novo_clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ANA2|Add0~0_combout\ : std_logic;
SIGNAL \ANA2|Add0~1\ : std_logic;
SIGNAL \ANA2|Add0~2_combout\ : std_logic;
SIGNAL \ANA2|Add0~3\ : std_logic;
SIGNAL \ANA2|Add0~4_combout\ : std_logic;
SIGNAL \ANA2|Add0~5\ : std_logic;
SIGNAL \ANA2|Add0~6_combout\ : std_logic;
SIGNAL \ANA2|Add0~7\ : std_logic;
SIGNAL \ANA2|Add0~8_combout\ : std_logic;
SIGNAL \ANA2|Add0~9\ : std_logic;
SIGNAL \ANA2|Add0~10_combout\ : std_logic;
SIGNAL \ANA2|Add0~11\ : std_logic;
SIGNAL \ANA2|Add0~12_combout\ : std_logic;
SIGNAL \ANA2|Add0~13\ : std_logic;
SIGNAL \ANA2|Add0~14_combout\ : std_logic;
SIGNAL \ANA2|Add0~15\ : std_logic;
SIGNAL \ANA2|Add0~16_combout\ : std_logic;
SIGNAL \ANA2|Add0~17\ : std_logic;
SIGNAL \ANA2|Add0~18_combout\ : std_logic;
SIGNAL \ANA2|Add0~19\ : std_logic;
SIGNAL \ANA2|Add0~20_combout\ : std_logic;
SIGNAL \ANA2|Add0~21\ : std_logic;
SIGNAL \ANA2|Add0~22_combout\ : std_logic;
SIGNAL \ANA2|Add0~23\ : std_logic;
SIGNAL \ANA2|Add0~24_combout\ : std_logic;
SIGNAL \ANA2|Add0~25\ : std_logic;
SIGNAL \ANA2|Add0~26_combout\ : std_logic;
SIGNAL \ANA2|Add0~27\ : std_logic;
SIGNAL \ANA2|Add0~28_combout\ : std_logic;
SIGNAL \ANA2|Add0~29\ : std_logic;
SIGNAL \ANA2|Add0~30_combout\ : std_logic;
SIGNAL \ANA2|Add0~31\ : std_logic;
SIGNAL \ANA2|Add0~32_combout\ : std_logic;
SIGNAL \ANA2|Add0~33\ : std_logic;
SIGNAL \ANA2|Add0~34_combout\ : std_logic;
SIGNAL \ANA2|Add0~35\ : std_logic;
SIGNAL \ANA2|Add0~36_combout\ : std_logic;
SIGNAL \ANA2|Add0~37\ : std_logic;
SIGNAL \ANA2|Add0~38_combout\ : std_logic;
SIGNAL \ANA2|Add0~39\ : std_logic;
SIGNAL \ANA2|Add0~40_combout\ : std_logic;
SIGNAL \ANA2|Add0~41\ : std_logic;
SIGNAL \ANA2|Add0~42_combout\ : std_logic;
SIGNAL \ANA2|Add0~43\ : std_logic;
SIGNAL \ANA2|Add0~44_combout\ : std_logic;
SIGNAL \ANA|Add0~1_cout\ : std_logic;
SIGNAL \ANA|Add0~2_combout\ : std_logic;
SIGNAL \ANA|Add0~3\ : std_logic;
SIGNAL \ANA|Add0~4_combout\ : std_logic;
SIGNAL \ANA|Add0~5\ : std_logic;
SIGNAL \ANA|Add0~6_combout\ : std_logic;
SIGNAL \ANA|Add0~7\ : std_logic;
SIGNAL \ANA|Add0~8_combout\ : std_logic;
SIGNAL \ANA|Add0~9\ : std_logic;
SIGNAL \ANA|Add0~10_combout\ : std_logic;
SIGNAL \ANA|Add0~11\ : std_logic;
SIGNAL \ANA|Add0~12_combout\ : std_logic;
SIGNAL \ANA|Add0~13\ : std_logic;
SIGNAL \ANA|Add0~14_combout\ : std_logic;
SIGNAL \ANA|Add0~15\ : std_logic;
SIGNAL \ANA|Add0~16_combout\ : std_logic;
SIGNAL \ANA|Add0~17\ : std_logic;
SIGNAL \ANA|Add0~18_combout\ : std_logic;
SIGNAL \ANA|Add0~19\ : std_logic;
SIGNAL \ANA|Add0~20_combout\ : std_logic;
SIGNAL \ANA|Add0~21\ : std_logic;
SIGNAL \ANA|Add0~22_combout\ : std_logic;
SIGNAL \ANA|Add0~23\ : std_logic;
SIGNAL \ANA|Add0~24_combout\ : std_logic;
SIGNAL \ANA|Add0~25\ : std_logic;
SIGNAL \ANA|Add0~26_combout\ : std_logic;
SIGNAL \ANA|Add0~27\ : std_logic;
SIGNAL \ANA|Add0~28_combout\ : std_logic;
SIGNAL \ANA|Add0~29\ : std_logic;
SIGNAL \ANA|Add0~30_combout\ : std_logic;
SIGNAL \ANA|Add0~31\ : std_logic;
SIGNAL \ANA|Add0~32_combout\ : std_logic;
SIGNAL \ANA|Add0~33\ : std_logic;
SIGNAL \ANA|Add0~34_combout\ : std_logic;
SIGNAL \ANA|Add0~35\ : std_logic;
SIGNAL \ANA|Add0~36_combout\ : std_logic;
SIGNAL \ANA|Add0~37\ : std_logic;
SIGNAL \ANA|Add0~38_combout\ : std_logic;
SIGNAL \ANA|Add0~39\ : std_logic;
SIGNAL \ANA|Add0~40_combout\ : std_logic;
SIGNAL \ANA|Add0~41\ : std_logic;
SIGNAL \ANA|Add0~42_combout\ : std_logic;
SIGNAL \ANA|Add0~43\ : std_logic;
SIGNAL \ANA|Add0~44_combout\ : std_logic;
SIGNAL \ANA|Add0~45\ : std_logic;
SIGNAL \ANA|Add0~46_combout\ : std_logic;
SIGNAL \ANA|Add0~47\ : std_logic;
SIGNAL \ANA|Add0~48_combout\ : std_logic;
SIGNAL \ANA2|novo_clock~regout\ : std_logic;
SIGNAL \ANA|novo_clock~regout\ : std_logic;
SIGNAL \ANA2|Equal0~0_combout\ : std_logic;
SIGNAL \ANA2|Equal0~1_combout\ : std_logic;
SIGNAL \ANA2|Equal0~2_combout\ : std_logic;
SIGNAL \ANA2|Equal0~3_combout\ : std_logic;
SIGNAL \ANA2|Equal0~4_combout\ : std_logic;
SIGNAL \ANA2|Equal0~5_combout\ : std_logic;
SIGNAL \ANA2|Equal0~6_combout\ : std_logic;
SIGNAL \ANA2|novo_clock~0_combout\ : std_logic;
SIGNAL \ANA|Equal0~0_combout\ : std_logic;
SIGNAL \ANA|Equal0~1_combout\ : std_logic;
SIGNAL \ANA|Equal0~2_combout\ : std_logic;
SIGNAL \ANA|Equal0~3_combout\ : std_logic;
SIGNAL \ANA|Equal0~4_combout\ : std_logic;
SIGNAL \ANA|Equal0~5_combout\ : std_logic;
SIGNAL \ANA|Equal0~6_combout\ : std_logic;
SIGNAL \ANA|Equal0~7_combout\ : std_logic;
SIGNAL \ANA|novo_clock~0_combout\ : std_logic;
SIGNAL \ANA2|Q~0_combout\ : std_logic;
SIGNAL \ANA2|Q~1_combout\ : std_logic;
SIGNAL \ANA2|Q~2_combout\ : std_logic;
SIGNAL \ANA2|Q~3_combout\ : std_logic;
SIGNAL \ANA2|Q~4_combout\ : std_logic;
SIGNAL \ANA2|Q~5_combout\ : std_logic;
SIGNAL \ANA2|Q~6_combout\ : std_logic;
SIGNAL \ANA2|Q~7_combout\ : std_logic;
SIGNAL \ANA|Q~8_combout\ : std_logic;
SIGNAL \ANA|Q~9_combout\ : std_logic;
SIGNAL \ANA|Q~10_combout\ : std_logic;
SIGNAL \ANA|Q~11_combout\ : std_logic;
SIGNAL \ANA|Q~12_combout\ : std_logic;
SIGNAL \ANA|Q~13_combout\ : std_logic;
SIGNAL \ANA|Q~14_combout\ : std_logic;
SIGNAL \ANA|Q~15_combout\ : std_logic;
SIGNAL \ANA|Q~16_combout\ : std_logic;
SIGNAL \ANA|Q~17_combout\ : std_logic;
SIGNAL \ANA|Q~18_combout\ : std_logic;
SIGNAL \ANA|Q~19_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \ANA|novo_clock~clkctrl_outclk\ : std_logic;
SIGNAL \ANA2|novo_clock~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \Q1[0]~3_combout\ : std_logic;
SIGNAL \SW[10]~clkctrl_outclk\ : std_logic;
SIGNAL \Q1[2]~1_combout\ : std_logic;
SIGNAL \Q1~0_combout\ : std_logic;
SIGNAL \Q1~2_combout\ : std_logic;
SIGNAL \comb_51|WideOr6~0_combout\ : std_logic;
SIGNAL \comb_51|WideOr5~0_combout\ : std_logic;
SIGNAL \comb_51|WideOr4~0_combout\ : std_logic;
SIGNAL \comb_51|WideOr3~0_combout\ : std_logic;
SIGNAL \comb_51|WideOr2~0_combout\ : std_logic;
SIGNAL \comb_51|WideOr1~0_combout\ : std_logic;
SIGNAL \comb_51|WideOr0~0_combout\ : std_logic;
SIGNAL \Q0[0]~3_combout\ : std_logic;
SIGNAL \Q0[2]~1_combout\ : std_logic;
SIGNAL \Q0~0_combout\ : std_logic;
SIGNAL \Q0~2_combout\ : std_logic;
SIGNAL \comb_50|WideOr6~0_combout\ : std_logic;
SIGNAL \comb_50|WideOr5~0_combout\ : std_logic;
SIGNAL \comb_50|WideOr4~0_combout\ : std_logic;
SIGNAL \comb_50|WideOr3~0_combout\ : std_logic;
SIGNAL \comb_50|WideOr2~0_combout\ : std_logic;
SIGNAL \comb_50|WideOr1~0_combout\ : std_logic;
SIGNAL \comb_50|WideOr0~0_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL Q1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ANA|Q\ : std_logic_vector(25 DOWNTO 0);
SIGNAL Q0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ANA2|Q\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \comb_50|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \comb_51|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[10]~clkctrl_outclk\ : std_logic;

BEGIN

HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ANA|novo_clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ANA|novo_clock~regout\);

\SW[10]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SW~combout\(10));

\ANA2|novo_clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \ANA2|novo_clock~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\comb_50|ALT_INV_WideOr6~0_combout\ <= NOT \comb_50|WideOr6~0_combout\;
\comb_51|ALT_INV_WideOr6~0_combout\ <= NOT \comb_51|WideOr6~0_combout\;
\ALT_INV_SW[10]~clkctrl_outclk\ <= NOT \SW[10]~clkctrl_outclk\;

-- Location: LCCOMB_X30_Y22_N10
\ANA2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~0_combout\ = \ANA2|Q\(0) $ (VCC)
-- \ANA2|Add0~1\ = CARRY(\ANA2|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(0),
	datad => VCC,
	combout => \ANA2|Add0~0_combout\,
	cout => \ANA2|Add0~1\);

-- Location: LCCOMB_X30_Y22_N12
\ANA2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~2_combout\ = (\ANA2|Q\(1) & (!\ANA2|Add0~1\)) # (!\ANA2|Q\(1) & ((\ANA2|Add0~1\) # (GND)))
-- \ANA2|Add0~3\ = CARRY((!\ANA2|Add0~1\) # (!\ANA2|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(1),
	datad => VCC,
	cin => \ANA2|Add0~1\,
	combout => \ANA2|Add0~2_combout\,
	cout => \ANA2|Add0~3\);

-- Location: LCCOMB_X30_Y22_N14
\ANA2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~4_combout\ = (\ANA2|Q\(2) & (\ANA2|Add0~3\ $ (GND))) # (!\ANA2|Q\(2) & (!\ANA2|Add0~3\ & VCC))
-- \ANA2|Add0~5\ = CARRY((\ANA2|Q\(2) & !\ANA2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Q\(2),
	datad => VCC,
	cin => \ANA2|Add0~3\,
	combout => \ANA2|Add0~4_combout\,
	cout => \ANA2|Add0~5\);

-- Location: LCCOMB_X30_Y22_N16
\ANA2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~6_combout\ = (\ANA2|Q\(3) & (!\ANA2|Add0~5\)) # (!\ANA2|Q\(3) & ((\ANA2|Add0~5\) # (GND)))
-- \ANA2|Add0~7\ = CARRY((!\ANA2|Add0~5\) # (!\ANA2|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(3),
	datad => VCC,
	cin => \ANA2|Add0~5\,
	combout => \ANA2|Add0~6_combout\,
	cout => \ANA2|Add0~7\);

-- Location: LCCOMB_X30_Y22_N18
\ANA2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~8_combout\ = (\ANA2|Q\(4) & (\ANA2|Add0~7\ $ (GND))) # (!\ANA2|Q\(4) & (!\ANA2|Add0~7\ & VCC))
-- \ANA2|Add0~9\ = CARRY((\ANA2|Q\(4) & !\ANA2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Q\(4),
	datad => VCC,
	cin => \ANA2|Add0~7\,
	combout => \ANA2|Add0~8_combout\,
	cout => \ANA2|Add0~9\);

-- Location: LCCOMB_X30_Y22_N20
\ANA2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~10_combout\ = (\ANA2|Q\(5) & (!\ANA2|Add0~9\)) # (!\ANA2|Q\(5) & ((\ANA2|Add0~9\) # (GND)))
-- \ANA2|Add0~11\ = CARRY((!\ANA2|Add0~9\) # (!\ANA2|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(5),
	datad => VCC,
	cin => \ANA2|Add0~9\,
	combout => \ANA2|Add0~10_combout\,
	cout => \ANA2|Add0~11\);

-- Location: LCCOMB_X30_Y22_N22
\ANA2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~12_combout\ = (\ANA2|Q\(6) & (\ANA2|Add0~11\ $ (GND))) # (!\ANA2|Q\(6) & (!\ANA2|Add0~11\ & VCC))
-- \ANA2|Add0~13\ = CARRY((\ANA2|Q\(6) & !\ANA2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Q\(6),
	datad => VCC,
	cin => \ANA2|Add0~11\,
	combout => \ANA2|Add0~12_combout\,
	cout => \ANA2|Add0~13\);

-- Location: LCCOMB_X30_Y22_N24
\ANA2|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~14_combout\ = (\ANA2|Q\(7) & (!\ANA2|Add0~13\)) # (!\ANA2|Q\(7) & ((\ANA2|Add0~13\) # (GND)))
-- \ANA2|Add0~15\ = CARRY((!\ANA2|Add0~13\) # (!\ANA2|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(7),
	datad => VCC,
	cin => \ANA2|Add0~13\,
	combout => \ANA2|Add0~14_combout\,
	cout => \ANA2|Add0~15\);

-- Location: LCCOMB_X30_Y22_N26
\ANA2|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~16_combout\ = (\ANA2|Q\(8) & (\ANA2|Add0~15\ $ (GND))) # (!\ANA2|Q\(8) & (!\ANA2|Add0~15\ & VCC))
-- \ANA2|Add0~17\ = CARRY((\ANA2|Q\(8) & !\ANA2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Q\(8),
	datad => VCC,
	cin => \ANA2|Add0~15\,
	combout => \ANA2|Add0~16_combout\,
	cout => \ANA2|Add0~17\);

-- Location: LCCOMB_X30_Y22_N28
\ANA2|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~18_combout\ = (\ANA2|Q\(9) & (!\ANA2|Add0~17\)) # (!\ANA2|Q\(9) & ((\ANA2|Add0~17\) # (GND)))
-- \ANA2|Add0~19\ = CARRY((!\ANA2|Add0~17\) # (!\ANA2|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Q\(9),
	datad => VCC,
	cin => \ANA2|Add0~17\,
	combout => \ANA2|Add0~18_combout\,
	cout => \ANA2|Add0~19\);

-- Location: LCCOMB_X30_Y22_N30
\ANA2|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~20_combout\ = (\ANA2|Q\(10) & (\ANA2|Add0~19\ $ (GND))) # (!\ANA2|Q\(10) & (!\ANA2|Add0~19\ & VCC))
-- \ANA2|Add0~21\ = CARRY((\ANA2|Q\(10) & !\ANA2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Q\(10),
	datad => VCC,
	cin => \ANA2|Add0~19\,
	combout => \ANA2|Add0~20_combout\,
	cout => \ANA2|Add0~21\);

-- Location: LCCOMB_X30_Y21_N0
\ANA2|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~22_combout\ = (\ANA2|Q\(11) & (!\ANA2|Add0~21\)) # (!\ANA2|Q\(11) & ((\ANA2|Add0~21\) # (GND)))
-- \ANA2|Add0~23\ = CARRY((!\ANA2|Add0~21\) # (!\ANA2|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(11),
	datad => VCC,
	cin => \ANA2|Add0~21\,
	combout => \ANA2|Add0~22_combout\,
	cout => \ANA2|Add0~23\);

-- Location: LCCOMB_X30_Y21_N2
\ANA2|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~24_combout\ = (\ANA2|Q\(12) & (\ANA2|Add0~23\ $ (GND))) # (!\ANA2|Q\(12) & (!\ANA2|Add0~23\ & VCC))
-- \ANA2|Add0~25\ = CARRY((\ANA2|Q\(12) & !\ANA2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Q\(12),
	datad => VCC,
	cin => \ANA2|Add0~23\,
	combout => \ANA2|Add0~24_combout\,
	cout => \ANA2|Add0~25\);

-- Location: LCCOMB_X30_Y21_N4
\ANA2|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~26_combout\ = (\ANA2|Q\(13) & (!\ANA2|Add0~25\)) # (!\ANA2|Q\(13) & ((\ANA2|Add0~25\) # (GND)))
-- \ANA2|Add0~27\ = CARRY((!\ANA2|Add0~25\) # (!\ANA2|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Q\(13),
	datad => VCC,
	cin => \ANA2|Add0~25\,
	combout => \ANA2|Add0~26_combout\,
	cout => \ANA2|Add0~27\);

-- Location: LCCOMB_X30_Y21_N6
\ANA2|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~28_combout\ = (\ANA2|Q\(14) & (\ANA2|Add0~27\ $ (GND))) # (!\ANA2|Q\(14) & (!\ANA2|Add0~27\ & VCC))
-- \ANA2|Add0~29\ = CARRY((\ANA2|Q\(14) & !\ANA2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Q\(14),
	datad => VCC,
	cin => \ANA2|Add0~27\,
	combout => \ANA2|Add0~28_combout\,
	cout => \ANA2|Add0~29\);

-- Location: LCCOMB_X30_Y21_N8
\ANA2|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~30_combout\ = (\ANA2|Q\(15) & (!\ANA2|Add0~29\)) # (!\ANA2|Q\(15) & ((\ANA2|Add0~29\) # (GND)))
-- \ANA2|Add0~31\ = CARRY((!\ANA2|Add0~29\) # (!\ANA2|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Q\(15),
	datad => VCC,
	cin => \ANA2|Add0~29\,
	combout => \ANA2|Add0~30_combout\,
	cout => \ANA2|Add0~31\);

-- Location: LCCOMB_X30_Y21_N10
\ANA2|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~32_combout\ = (\ANA2|Q\(16) & (\ANA2|Add0~31\ $ (GND))) # (!\ANA2|Q\(16) & (!\ANA2|Add0~31\ & VCC))
-- \ANA2|Add0~33\ = CARRY((\ANA2|Q\(16) & !\ANA2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(16),
	datad => VCC,
	cin => \ANA2|Add0~31\,
	combout => \ANA2|Add0~32_combout\,
	cout => \ANA2|Add0~33\);

-- Location: LCCOMB_X30_Y21_N12
\ANA2|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~34_combout\ = (\ANA2|Q\(17) & (!\ANA2|Add0~33\)) # (!\ANA2|Q\(17) & ((\ANA2|Add0~33\) # (GND)))
-- \ANA2|Add0~35\ = CARRY((!\ANA2|Add0~33\) # (!\ANA2|Q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(17),
	datad => VCC,
	cin => \ANA2|Add0~33\,
	combout => \ANA2|Add0~34_combout\,
	cout => \ANA2|Add0~35\);

-- Location: LCCOMB_X30_Y21_N14
\ANA2|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~36_combout\ = (\ANA2|Q\(18) & (\ANA2|Add0~35\ $ (GND))) # (!\ANA2|Q\(18) & (!\ANA2|Add0~35\ & VCC))
-- \ANA2|Add0~37\ = CARRY((\ANA2|Q\(18) & !\ANA2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(18),
	datad => VCC,
	cin => \ANA2|Add0~35\,
	combout => \ANA2|Add0~36_combout\,
	cout => \ANA2|Add0~37\);

-- Location: LCCOMB_X30_Y21_N16
\ANA2|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~38_combout\ = (\ANA2|Q\(19) & (!\ANA2|Add0~37\)) # (!\ANA2|Q\(19) & ((\ANA2|Add0~37\) # (GND)))
-- \ANA2|Add0~39\ = CARRY((!\ANA2|Add0~37\) # (!\ANA2|Q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Q\(19),
	datad => VCC,
	cin => \ANA2|Add0~37\,
	combout => \ANA2|Add0~38_combout\,
	cout => \ANA2|Add0~39\);

-- Location: LCCOMB_X30_Y21_N18
\ANA2|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~40_combout\ = (\ANA2|Q\(20) & (\ANA2|Add0~39\ $ (GND))) # (!\ANA2|Q\(20) & (!\ANA2|Add0~39\ & VCC))
-- \ANA2|Add0~41\ = CARRY((\ANA2|Q\(20) & !\ANA2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Q\(20),
	datad => VCC,
	cin => \ANA2|Add0~39\,
	combout => \ANA2|Add0~40_combout\,
	cout => \ANA2|Add0~41\);

-- Location: LCCOMB_X30_Y21_N20
\ANA2|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~42_combout\ = (\ANA2|Q\(21) & (!\ANA2|Add0~41\)) # (!\ANA2|Q\(21) & ((\ANA2|Add0~41\) # (GND)))
-- \ANA2|Add0~43\ = CARRY((!\ANA2|Add0~41\) # (!\ANA2|Q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(21),
	datad => VCC,
	cin => \ANA2|Add0~41\,
	combout => \ANA2|Add0~42_combout\,
	cout => \ANA2|Add0~43\);

-- Location: LCCOMB_X30_Y21_N22
\ANA2|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Add0~44_combout\ = \ANA2|Add0~43\ $ (!\ANA2|Q\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ANA2|Q\(22),
	cin => \ANA2|Add0~43\,
	combout => \ANA2|Add0~44_combout\);

-- Location: LCCOMB_X31_Y22_N8
\ANA|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~1_cout\ = CARRY((\ANA2|Q\(0) & \ANA2|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(0),
	datab => \ANA2|Q\(1),
	datad => VCC,
	cout => \ANA|Add0~1_cout\);

-- Location: LCCOMB_X31_Y22_N10
\ANA|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~2_combout\ = (\ANA|Q\(2) & (!\ANA|Add0~1_cout\)) # (!\ANA|Q\(2) & ((\ANA|Add0~1_cout\) # (GND)))
-- \ANA|Add0~3\ = CARRY((!\ANA|Add0~1_cout\) # (!\ANA|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(2),
	datad => VCC,
	cin => \ANA|Add0~1_cout\,
	combout => \ANA|Add0~2_combout\,
	cout => \ANA|Add0~3\);

-- Location: LCCOMB_X31_Y22_N12
\ANA|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~4_combout\ = (\ANA|Q\(3) & (\ANA|Add0~3\ $ (GND))) # (!\ANA|Q\(3) & (!\ANA|Add0~3\ & VCC))
-- \ANA|Add0~5\ = CARRY((\ANA|Q\(3) & !\ANA|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(3),
	datad => VCC,
	cin => \ANA|Add0~3\,
	combout => \ANA|Add0~4_combout\,
	cout => \ANA|Add0~5\);

-- Location: LCCOMB_X31_Y22_N14
\ANA|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~6_combout\ = (\ANA|Q\(4) & (!\ANA|Add0~5\)) # (!\ANA|Q\(4) & ((\ANA|Add0~5\) # (GND)))
-- \ANA|Add0~7\ = CARRY((!\ANA|Add0~5\) # (!\ANA|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(4),
	datad => VCC,
	cin => \ANA|Add0~5\,
	combout => \ANA|Add0~6_combout\,
	cout => \ANA|Add0~7\);

-- Location: LCCOMB_X31_Y22_N16
\ANA|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~8_combout\ = (\ANA|Q\(5) & (\ANA|Add0~7\ $ (GND))) # (!\ANA|Q\(5) & (!\ANA|Add0~7\ & VCC))
-- \ANA|Add0~9\ = CARRY((\ANA|Q\(5) & !\ANA|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(5),
	datad => VCC,
	cin => \ANA|Add0~7\,
	combout => \ANA|Add0~8_combout\,
	cout => \ANA|Add0~9\);

-- Location: LCCOMB_X31_Y22_N18
\ANA|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~10_combout\ = (\ANA|Q\(6) & (!\ANA|Add0~9\)) # (!\ANA|Q\(6) & ((\ANA|Add0~9\) # (GND)))
-- \ANA|Add0~11\ = CARRY((!\ANA|Add0~9\) # (!\ANA|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(6),
	datad => VCC,
	cin => \ANA|Add0~9\,
	combout => \ANA|Add0~10_combout\,
	cout => \ANA|Add0~11\);

-- Location: LCCOMB_X31_Y22_N20
\ANA|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~12_combout\ = (\ANA|Q\(7) & (\ANA|Add0~11\ $ (GND))) # (!\ANA|Q\(7) & (!\ANA|Add0~11\ & VCC))
-- \ANA|Add0~13\ = CARRY((\ANA|Q\(7) & !\ANA|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(7),
	datad => VCC,
	cin => \ANA|Add0~11\,
	combout => \ANA|Add0~12_combout\,
	cout => \ANA|Add0~13\);

-- Location: LCCOMB_X31_Y22_N22
\ANA|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~14_combout\ = (\ANA|Q\(8) & (!\ANA|Add0~13\)) # (!\ANA|Q\(8) & ((\ANA|Add0~13\) # (GND)))
-- \ANA|Add0~15\ = CARRY((!\ANA|Add0~13\) # (!\ANA|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(8),
	datad => VCC,
	cin => \ANA|Add0~13\,
	combout => \ANA|Add0~14_combout\,
	cout => \ANA|Add0~15\);

-- Location: LCCOMB_X31_Y22_N24
\ANA|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~16_combout\ = (\ANA|Q\(9) & (\ANA|Add0~15\ $ (GND))) # (!\ANA|Q\(9) & (!\ANA|Add0~15\ & VCC))
-- \ANA|Add0~17\ = CARRY((\ANA|Q\(9) & !\ANA|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(9),
	datad => VCC,
	cin => \ANA|Add0~15\,
	combout => \ANA|Add0~16_combout\,
	cout => \ANA|Add0~17\);

-- Location: LCCOMB_X31_Y22_N26
\ANA|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~18_combout\ = (\ANA|Q\(10) & (!\ANA|Add0~17\)) # (!\ANA|Q\(10) & ((\ANA|Add0~17\) # (GND)))
-- \ANA|Add0~19\ = CARRY((!\ANA|Add0~17\) # (!\ANA|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(10),
	datad => VCC,
	cin => \ANA|Add0~17\,
	combout => \ANA|Add0~18_combout\,
	cout => \ANA|Add0~19\);

-- Location: LCCOMB_X31_Y22_N28
\ANA|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~20_combout\ = (\ANA|Q\(11) & (\ANA|Add0~19\ $ (GND))) # (!\ANA|Q\(11) & (!\ANA|Add0~19\ & VCC))
-- \ANA|Add0~21\ = CARRY((\ANA|Q\(11) & !\ANA|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(11),
	datad => VCC,
	cin => \ANA|Add0~19\,
	combout => \ANA|Add0~20_combout\,
	cout => \ANA|Add0~21\);

-- Location: LCCOMB_X31_Y22_N30
\ANA|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~22_combout\ = (\ANA|Q\(12) & (!\ANA|Add0~21\)) # (!\ANA|Q\(12) & ((\ANA|Add0~21\) # (GND)))
-- \ANA|Add0~23\ = CARRY((!\ANA|Add0~21\) # (!\ANA|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(12),
	datad => VCC,
	cin => \ANA|Add0~21\,
	combout => \ANA|Add0~22_combout\,
	cout => \ANA|Add0~23\);

-- Location: LCCOMB_X31_Y21_N0
\ANA|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~24_combout\ = (\ANA|Q\(13) & (\ANA|Add0~23\ $ (GND))) # (!\ANA|Q\(13) & (!\ANA|Add0~23\ & VCC))
-- \ANA|Add0~25\ = CARRY((\ANA|Q\(13) & !\ANA|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(13),
	datad => VCC,
	cin => \ANA|Add0~23\,
	combout => \ANA|Add0~24_combout\,
	cout => \ANA|Add0~25\);

-- Location: LCCOMB_X31_Y21_N2
\ANA|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~26_combout\ = (\ANA|Q\(14) & (!\ANA|Add0~25\)) # (!\ANA|Q\(14) & ((\ANA|Add0~25\) # (GND)))
-- \ANA|Add0~27\ = CARRY((!\ANA|Add0~25\) # (!\ANA|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(14),
	datad => VCC,
	cin => \ANA|Add0~25\,
	combout => \ANA|Add0~26_combout\,
	cout => \ANA|Add0~27\);

-- Location: LCCOMB_X31_Y21_N4
\ANA|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~28_combout\ = (\ANA|Q\(15) & (\ANA|Add0~27\ $ (GND))) # (!\ANA|Q\(15) & (!\ANA|Add0~27\ & VCC))
-- \ANA|Add0~29\ = CARRY((\ANA|Q\(15) & !\ANA|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(15),
	datad => VCC,
	cin => \ANA|Add0~27\,
	combout => \ANA|Add0~28_combout\,
	cout => \ANA|Add0~29\);

-- Location: LCCOMB_X31_Y21_N6
\ANA|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~30_combout\ = (\ANA|Q\(16) & (!\ANA|Add0~29\)) # (!\ANA|Q\(16) & ((\ANA|Add0~29\) # (GND)))
-- \ANA|Add0~31\ = CARRY((!\ANA|Add0~29\) # (!\ANA|Q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(16),
	datad => VCC,
	cin => \ANA|Add0~29\,
	combout => \ANA|Add0~30_combout\,
	cout => \ANA|Add0~31\);

-- Location: LCCOMB_X31_Y21_N8
\ANA|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~32_combout\ = (\ANA|Q\(17) & (\ANA|Add0~31\ $ (GND))) # (!\ANA|Q\(17) & (!\ANA|Add0~31\ & VCC))
-- \ANA|Add0~33\ = CARRY((\ANA|Q\(17) & !\ANA|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(17),
	datad => VCC,
	cin => \ANA|Add0~31\,
	combout => \ANA|Add0~32_combout\,
	cout => \ANA|Add0~33\);

-- Location: LCCOMB_X31_Y21_N10
\ANA|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~34_combout\ = (\ANA|Q\(18) & (!\ANA|Add0~33\)) # (!\ANA|Q\(18) & ((\ANA|Add0~33\) # (GND)))
-- \ANA|Add0~35\ = CARRY((!\ANA|Add0~33\) # (!\ANA|Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(18),
	datad => VCC,
	cin => \ANA|Add0~33\,
	combout => \ANA|Add0~34_combout\,
	cout => \ANA|Add0~35\);

-- Location: LCCOMB_X31_Y21_N12
\ANA|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~36_combout\ = (\ANA|Q\(19) & (\ANA|Add0~35\ $ (GND))) # (!\ANA|Q\(19) & (!\ANA|Add0~35\ & VCC))
-- \ANA|Add0~37\ = CARRY((\ANA|Q\(19) & !\ANA|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(19),
	datad => VCC,
	cin => \ANA|Add0~35\,
	combout => \ANA|Add0~36_combout\,
	cout => \ANA|Add0~37\);

-- Location: LCCOMB_X31_Y21_N14
\ANA|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~38_combout\ = (\ANA|Q\(20) & (!\ANA|Add0~37\)) # (!\ANA|Q\(20) & ((\ANA|Add0~37\) # (GND)))
-- \ANA|Add0~39\ = CARRY((!\ANA|Add0~37\) # (!\ANA|Q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(20),
	datad => VCC,
	cin => \ANA|Add0~37\,
	combout => \ANA|Add0~38_combout\,
	cout => \ANA|Add0~39\);

-- Location: LCCOMB_X31_Y21_N16
\ANA|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~40_combout\ = (\ANA|Q\(21) & (\ANA|Add0~39\ $ (GND))) # (!\ANA|Q\(21) & (!\ANA|Add0~39\ & VCC))
-- \ANA|Add0~41\ = CARRY((\ANA|Q\(21) & !\ANA|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(21),
	datad => VCC,
	cin => \ANA|Add0~39\,
	combout => \ANA|Add0~40_combout\,
	cout => \ANA|Add0~41\);

-- Location: LCCOMB_X31_Y21_N18
\ANA|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~42_combout\ = (\ANA|Q\(22) & (!\ANA|Add0~41\)) # (!\ANA|Q\(22) & ((\ANA|Add0~41\) # (GND)))
-- \ANA|Add0~43\ = CARRY((!\ANA|Add0~41\) # (!\ANA|Q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(22),
	datad => VCC,
	cin => \ANA|Add0~41\,
	combout => \ANA|Add0~42_combout\,
	cout => \ANA|Add0~43\);

-- Location: LCCOMB_X31_Y21_N20
\ANA|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~44_combout\ = (\ANA|Q\(23) & (\ANA|Add0~43\ $ (GND))) # (!\ANA|Q\(23) & (!\ANA|Add0~43\ & VCC))
-- \ANA|Add0~45\ = CARRY((\ANA|Q\(23) & !\ANA|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(23),
	datad => VCC,
	cin => \ANA|Add0~43\,
	combout => \ANA|Add0~44_combout\,
	cout => \ANA|Add0~45\);

-- Location: LCCOMB_X31_Y21_N22
\ANA|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~46_combout\ = (\ANA|Q\(24) & (!\ANA|Add0~45\)) # (!\ANA|Q\(24) & ((\ANA|Add0~45\) # (GND)))
-- \ANA|Add0~47\ = CARRY((!\ANA|Add0~45\) # (!\ANA|Q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Q\(24),
	datad => VCC,
	cin => \ANA|Add0~45\,
	combout => \ANA|Add0~46_combout\,
	cout => \ANA|Add0~47\);

-- Location: LCCOMB_X31_Y21_N24
\ANA|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Add0~48_combout\ = \ANA|Add0~47\ $ (!\ANA|Q\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ANA|Q\(25),
	cin => \ANA|Add0~47\,
	combout => \ANA|Add0~48_combout\);

-- Location: LCFF_X29_Y21_N9
\ANA2|novo_clock\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|novo_clock~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|novo_clock~regout\);

-- Location: LCFF_X32_Y21_N1
\ANA|novo_clock\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|novo_clock~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|novo_clock~regout\);

-- Location: LCFF_X30_Y22_N13
\ANA2|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~2_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(1));

-- Location: LCFF_X30_Y22_N11
\ANA2|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~0_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(0));

-- Location: LCFF_X30_Y21_N29
\ANA2|Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Q~0_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(22));

-- Location: LCFF_X30_Y21_N21
\ANA2|Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~42_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(21));

-- Location: LCCOMB_X29_Y21_N6
\ANA2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Equal0~0_combout\ = (\ANA2|Q\(1) & (\ANA2|Q\(22) & (\ANA2|Q\(0) & !\ANA2|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(1),
	datab => \ANA2|Q\(22),
	datac => \ANA2|Q\(0),
	datad => \ANA2|Q\(21),
	combout => \ANA2|Equal0~0_combout\);

-- Location: LCFF_X30_Y21_N27
\ANA2|Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Q~1_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(19));

-- Location: LCFF_X30_Y21_N25
\ANA2|Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Q~2_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(18));

-- Location: LCFF_X30_Y21_N19
\ANA2|Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~40_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(20));

-- Location: LCFF_X30_Y21_N13
\ANA2|Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~34_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(17));

-- Location: LCCOMB_X29_Y21_N22
\ANA2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Equal0~1_combout\ = (\ANA2|Q\(19) & (!\ANA2|Q\(20) & (!\ANA2|Q\(17) & \ANA2|Q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(19),
	datab => \ANA2|Q\(20),
	datac => \ANA2|Q\(17),
	datad => \ANA2|Q\(18),
	combout => \ANA2|Equal0~1_combout\);

-- Location: LCFF_X30_Y21_N31
\ANA2|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Q~3_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(14));

-- Location: LCFF_X30_Y21_N11
\ANA2|Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~32_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(16));

-- Location: LCFF_X30_Y21_N9
\ANA2|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~30_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(15));

-- Location: LCFF_X30_Y21_N5
\ANA2|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~26_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(13));

-- Location: LCCOMB_X29_Y21_N16
\ANA2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Equal0~2_combout\ = (!\ANA2|Q\(13) & (!\ANA2|Q\(16) & (!\ANA2|Q\(15) & \ANA2|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(13),
	datab => \ANA2|Q\(16),
	datac => \ANA2|Q\(15),
	datad => \ANA2|Q\(14),
	combout => \ANA2|Equal0~2_combout\);

-- Location: LCFF_X29_Y21_N31
\ANA2|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Q~4_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(11));

-- Location: LCFF_X30_Y22_N5
\ANA2|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Q~5_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(9));

-- Location: LCFF_X30_Y21_N3
\ANA2|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~24_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(12));

-- Location: LCFF_X30_Y22_N31
\ANA2|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~20_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(10));

-- Location: LCCOMB_X29_Y21_N10
\ANA2|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Equal0~3_combout\ = (!\ANA2|Q\(12) & (\ANA2|Q\(11) & (\ANA2|Q\(9) & !\ANA2|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(12),
	datab => \ANA2|Q\(11),
	datac => \ANA2|Q\(9),
	datad => \ANA2|Q\(10),
	combout => \ANA2|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y21_N14
\ANA2|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Equal0~4_combout\ = (\ANA2|Equal0~0_combout\ & (\ANA2|Equal0~1_combout\ & (\ANA2|Equal0~2_combout\ & \ANA2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Equal0~0_combout\,
	datab => \ANA2|Equal0~1_combout\,
	datac => \ANA2|Equal0~2_combout\,
	datad => \ANA2|Equal0~3_combout\,
	combout => \ANA2|Equal0~4_combout\);

-- Location: LCFF_X30_Y22_N3
\ANA2|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Q~6_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(8));

-- Location: LCFF_X30_Y22_N21
\ANA2|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~10_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(5));

-- Location: LCFF_X30_Y22_N25
\ANA2|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~14_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(7));

-- Location: LCFF_X30_Y22_N9
\ANA2|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Q~7_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(6));

-- Location: LCCOMB_X30_Y22_N6
\ANA2|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Equal0~5_combout\ = (!\ANA2|Q\(7) & (!\ANA2|Q\(6) & (\ANA2|Q\(5) & \ANA2|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(7),
	datab => \ANA2|Q\(6),
	datac => \ANA2|Q\(5),
	datad => \ANA2|Q\(8),
	combout => \ANA2|Equal0~5_combout\);

-- Location: LCFF_X30_Y22_N19
\ANA2|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~8_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(4));

-- Location: LCFF_X30_Y22_N17
\ANA2|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~6_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(3));

-- Location: LCFF_X30_Y22_N15
\ANA2|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA2|Add0~4_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA2|Q\(2));

-- Location: LCCOMB_X30_Y22_N0
\ANA2|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Equal0~6_combout\ = (\ANA2|Equal0~5_combout\ & (\ANA2|Q\(2) & (\ANA2|Q\(3) & \ANA2|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Equal0~5_combout\,
	datab => \ANA2|Q\(2),
	datac => \ANA2|Q\(3),
	datad => \ANA2|Q\(4),
	combout => \ANA2|Equal0~6_combout\);

-- Location: LCCOMB_X29_Y21_N8
\ANA2|novo_clock~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|novo_clock~0_combout\ = \ANA2|novo_clock~regout\ $ (((\SW~combout\(10) & (\ANA2|Equal0~4_combout\ & \ANA2|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \ANA2|Equal0~4_combout\,
	datac => \ANA2|novo_clock~regout\,
	datad => \ANA2|Equal0~6_combout\,
	combout => \ANA2|novo_clock~0_combout\);

-- Location: LCFF_X31_Y21_N27
\ANA|Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Q~16_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(25));

-- Location: LCFF_X31_Y21_N23
\ANA|Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Add0~46_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(24));

-- Location: LCCOMB_X32_Y21_N10
\ANA|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Equal0~0_combout\ = (\ANA2|Q\(0) & (!\ANA|Q\(24) & (\ANA2|Q\(1) & \ANA|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Q\(0),
	datab => \ANA|Q\(24),
	datac => \ANA2|Q\(1),
	datad => \ANA|Q\(25),
	combout => \ANA|Equal0~0_combout\);

-- Location: LCFF_X31_Y21_N29
\ANA|Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Q~17_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(23));

-- Location: LCFF_X31_Y21_N31
\ANA|Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Q~18_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(22));

-- Location: LCFF_X32_Y21_N23
\ANA|Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Q~19_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(21));

-- Location: LCFF_X32_Y21_N3
\ANA|Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Q~8_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(20));

-- Location: LCCOMB_X32_Y21_N20
\ANA|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Equal0~1_combout\ = (\ANA|Q\(22) & (\ANA|Q\(21) & (\ANA|Q\(20) & \ANA|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(22),
	datab => \ANA|Q\(21),
	datac => \ANA|Q\(20),
	datad => \ANA|Q\(23),
	combout => \ANA|Equal0~1_combout\);

-- Location: LCFF_X32_Y21_N7
\ANA|Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Q~9_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(19));

-- Location: LCFF_X32_Y21_N27
\ANA|Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Q~10_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(17));

-- Location: LCFF_X31_Y21_N11
\ANA|Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Add0~34_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(18));

-- Location: LCFF_X31_Y21_N7
\ANA|Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Add0~30_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(16));

-- Location: LCCOMB_X32_Y21_N28
\ANA|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Equal0~2_combout\ = (\ANA|Q\(19) & (\ANA|Q\(17) & (!\ANA|Q\(16) & !\ANA|Q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(19),
	datab => \ANA|Q\(17),
	datac => \ANA|Q\(16),
	datad => \ANA|Q\(18),
	combout => \ANA|Equal0~2_combout\);

-- Location: LCFF_X32_Y21_N13
\ANA|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Q~11_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(15));

-- Location: LCFF_X32_Y21_N19
\ANA|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Q~12_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(14));

-- Location: LCFF_X32_Y21_N15
\ANA|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Q~13_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(13));

-- Location: LCFF_X31_Y22_N1
\ANA|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Q~14_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(12));

-- Location: LCCOMB_X32_Y21_N24
\ANA|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Equal0~3_combout\ = (\ANA|Q\(15) & (\ANA|Q\(13) & (\ANA|Q\(12) & \ANA|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(15),
	datab => \ANA|Q\(13),
	datac => \ANA|Q\(12),
	datad => \ANA|Q\(14),
	combout => \ANA|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y21_N4
\ANA|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Equal0~4_combout\ = (\ANA|Equal0~3_combout\ & (\ANA|Equal0~2_combout\ & (\ANA|Equal0~1_combout\ & \ANA|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Equal0~3_combout\,
	datab => \ANA|Equal0~2_combout\,
	datac => \ANA|Equal0~1_combout\,
	datad => \ANA|Equal0~0_combout\,
	combout => \ANA|Equal0~4_combout\);

-- Location: LCFF_X31_Y22_N29
\ANA|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Add0~20_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(11));

-- Location: LCFF_X31_Y22_N27
\ANA|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Add0~18_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(10));

-- Location: LCFF_X31_Y22_N25
\ANA|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Add0~16_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(9));

-- Location: LCFF_X31_Y22_N23
\ANA|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Add0~14_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(8));

-- Location: LCCOMB_X32_Y22_N24
\ANA|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Equal0~5_combout\ = (!\ANA|Q\(10) & (!\ANA|Q\(9) & (!\ANA|Q\(11) & !\ANA|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(10),
	datab => \ANA|Q\(9),
	datac => \ANA|Q\(11),
	datad => \ANA|Q\(8),
	combout => \ANA|Equal0~5_combout\);

-- Location: LCFF_X31_Y22_N19
\ANA|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Add0~10_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(6));

-- Location: LCFF_X31_Y22_N17
\ANA|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Add0~8_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(5));

-- Location: LCFF_X31_Y22_N15
\ANA|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Add0~6_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(4));

-- Location: LCFF_X31_Y22_N3
\ANA|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Q~15_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(7));

-- Location: LCCOMB_X31_Y22_N4
\ANA|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Equal0~6_combout\ = (\ANA|Q\(5) & (\ANA|Q\(6) & (\ANA|Q\(4) & !\ANA|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(5),
	datab => \ANA|Q\(6),
	datac => \ANA|Q\(4),
	datad => \ANA|Q\(7),
	combout => \ANA|Equal0~6_combout\);

-- Location: LCFF_X31_Y22_N13
\ANA|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Add0~4_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(3));

-- Location: LCFF_X31_Y22_N11
\ANA|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ANA|Add0~2_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ANA|Q\(2));

-- Location: LCCOMB_X31_Y22_N6
\ANA|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Equal0~7_combout\ = (\ANA|Q\(3) & (\ANA|Q\(2) & (\ANA|Equal0~6_combout\ & \ANA|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Q\(3),
	datab => \ANA|Q\(2),
	datac => \ANA|Equal0~6_combout\,
	datad => \ANA|Equal0~5_combout\,
	combout => \ANA|Equal0~7_combout\);

-- Location: LCCOMB_X32_Y21_N0
\ANA|novo_clock~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|novo_clock~0_combout\ = \ANA|novo_clock~regout\ $ (((\SW~combout\(10) & (\ANA|Equal0~4_combout\ & \ANA|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \ANA|Equal0~4_combout\,
	datac => \ANA|novo_clock~regout\,
	datad => \ANA|Equal0~7_combout\,
	combout => \ANA|novo_clock~0_combout\);

-- Location: LCCOMB_X30_Y21_N28
\ANA2|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Q~0_combout\ = (\ANA2|Add0~44_combout\ & ((!\ANA2|Equal0~6_combout\) # (!\ANA2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Equal0~4_combout\,
	datab => \ANA2|Equal0~6_combout\,
	datad => \ANA2|Add0~44_combout\,
	combout => \ANA2|Q~0_combout\);

-- Location: LCCOMB_X30_Y21_N26
\ANA2|Q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Q~1_combout\ = (\ANA2|Add0~38_combout\ & ((!\ANA2|Equal0~4_combout\) # (!\ANA2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Equal0~6_combout\,
	datac => \ANA2|Add0~38_combout\,
	datad => \ANA2|Equal0~4_combout\,
	combout => \ANA2|Q~1_combout\);

-- Location: LCCOMB_X30_Y21_N24
\ANA2|Q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Q~2_combout\ = (\ANA2|Add0~36_combout\ & ((!\ANA2|Equal0~4_combout\) # (!\ANA2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Equal0~6_combout\,
	datac => \ANA2|Add0~36_combout\,
	datad => \ANA2|Equal0~4_combout\,
	combout => \ANA2|Q~2_combout\);

-- Location: LCCOMB_X30_Y21_N30
\ANA2|Q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Q~3_combout\ = (\ANA2|Add0~28_combout\ & ((!\ANA2|Equal0~6_combout\) # (!\ANA2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Equal0~4_combout\,
	datab => \ANA2|Equal0~6_combout\,
	datad => \ANA2|Add0~28_combout\,
	combout => \ANA2|Q~3_combout\);

-- Location: LCCOMB_X29_Y21_N30
\ANA2|Q~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Q~4_combout\ = (\ANA2|Add0~22_combout\ & ((!\ANA2|Equal0~6_combout\) # (!\ANA2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ANA2|Equal0~4_combout\,
	datac => \ANA2|Add0~22_combout\,
	datad => \ANA2|Equal0~6_combout\,
	combout => \ANA2|Q~4_combout\);

-- Location: LCCOMB_X30_Y22_N4
\ANA2|Q~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Q~5_combout\ = (\ANA2|Add0~18_combout\ & ((!\ANA2|Equal0~4_combout\) # (!\ANA2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Equal0~6_combout\,
	datab => \ANA2|Add0~18_combout\,
	datac => \ANA2|Equal0~4_combout\,
	combout => \ANA2|Q~5_combout\);

-- Location: LCCOMB_X30_Y22_N2
\ANA2|Q~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Q~6_combout\ = (\ANA2|Add0~16_combout\ & ((!\ANA2|Equal0~4_combout\) # (!\ANA2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Equal0~6_combout\,
	datab => \ANA2|Add0~16_combout\,
	datac => \ANA2|Equal0~4_combout\,
	combout => \ANA2|Q~6_combout\);

-- Location: LCCOMB_X30_Y22_N8
\ANA2|Q~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA2|Q~7_combout\ = (\ANA2|Add0~12_combout\ & ((!\ANA2|Equal0~4_combout\) # (!\ANA2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA2|Equal0~6_combout\,
	datab => \ANA2|Add0~12_combout\,
	datac => \ANA2|Equal0~4_combout\,
	combout => \ANA2|Q~7_combout\);

-- Location: LCCOMB_X32_Y21_N2
\ANA|Q~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Q~8_combout\ = (\ANA|Add0~38_combout\ & ((!\ANA|Equal0~4_combout\) # (!\ANA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Equal0~7_combout\,
	datac => \ANA|Equal0~4_combout\,
	datad => \ANA|Add0~38_combout\,
	combout => \ANA|Q~8_combout\);

-- Location: LCCOMB_X32_Y21_N6
\ANA|Q~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Q~9_combout\ = (\ANA|Add0~36_combout\ & ((!\ANA|Equal0~4_combout\) # (!\ANA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Equal0~7_combout\,
	datac => \ANA|Equal0~4_combout\,
	datad => \ANA|Add0~36_combout\,
	combout => \ANA|Q~9_combout\);

-- Location: LCCOMB_X32_Y21_N26
\ANA|Q~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Q~10_combout\ = (\ANA|Add0~32_combout\ & ((!\ANA|Equal0~4_combout\) # (!\ANA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Equal0~7_combout\,
	datac => \ANA|Equal0~4_combout\,
	datad => \ANA|Add0~32_combout\,
	combout => \ANA|Q~10_combout\);

-- Location: LCCOMB_X32_Y21_N12
\ANA|Q~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Q~11_combout\ = (\ANA|Add0~28_combout\ & ((!\ANA|Equal0~7_combout\) # (!\ANA|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Equal0~4_combout\,
	datac => \ANA|Add0~28_combout\,
	datad => \ANA|Equal0~7_combout\,
	combout => \ANA|Q~11_combout\);

-- Location: LCCOMB_X32_Y21_N18
\ANA|Q~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Q~12_combout\ = (\ANA|Add0~26_combout\ & ((!\ANA|Equal0~4_combout\) # (!\ANA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Equal0~7_combout\,
	datac => \ANA|Equal0~4_combout\,
	datad => \ANA|Add0~26_combout\,
	combout => \ANA|Q~12_combout\);

-- Location: LCCOMB_X32_Y21_N14
\ANA|Q~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Q~13_combout\ = (\ANA|Add0~24_combout\ & ((!\ANA|Equal0~7_combout\) # (!\ANA|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Equal0~4_combout\,
	datac => \ANA|Add0~24_combout\,
	datad => \ANA|Equal0~7_combout\,
	combout => \ANA|Q~13_combout\);

-- Location: LCCOMB_X31_Y22_N0
\ANA|Q~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Q~14_combout\ = (\ANA|Add0~22_combout\ & ((!\ANA|Equal0~4_combout\) # (!\ANA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Equal0~7_combout\,
	datab => \ANA|Add0~22_combout\,
	datad => \ANA|Equal0~4_combout\,
	combout => \ANA|Q~14_combout\);

-- Location: LCCOMB_X31_Y22_N2
\ANA|Q~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Q~15_combout\ = (\ANA|Add0~12_combout\ & ((!\ANA|Equal0~4_combout\) # (!\ANA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Equal0~7_combout\,
	datac => \ANA|Add0~12_combout\,
	datad => \ANA|Equal0~4_combout\,
	combout => \ANA|Q~15_combout\);

-- Location: LCCOMB_X31_Y21_N26
\ANA|Q~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Q~16_combout\ = (\ANA|Add0~48_combout\ & ((!\ANA|Equal0~4_combout\) # (!\ANA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Equal0~7_combout\,
	datac => \ANA|Add0~48_combout\,
	datad => \ANA|Equal0~4_combout\,
	combout => \ANA|Q~16_combout\);

-- Location: LCCOMB_X31_Y21_N28
\ANA|Q~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Q~17_combout\ = (\ANA|Add0~44_combout\ & ((!\ANA|Equal0~4_combout\) # (!\ANA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Equal0~7_combout\,
	datac => \ANA|Add0~44_combout\,
	datad => \ANA|Equal0~4_combout\,
	combout => \ANA|Q~17_combout\);

-- Location: LCCOMB_X31_Y21_N30
\ANA|Q~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Q~18_combout\ = (\ANA|Add0~42_combout\ & ((!\ANA|Equal0~7_combout\) # (!\ANA|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ANA|Equal0~4_combout\,
	datac => \ANA|Equal0~7_combout\,
	datad => \ANA|Add0~42_combout\,
	combout => \ANA|Q~18_combout\);

-- Location: LCCOMB_X32_Y21_N22
\ANA|Q~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ANA|Q~19_combout\ = (\ANA|Add0~40_combout\ & ((!\ANA|Equal0~4_combout\) # (!\ANA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ANA|Equal0~7_combout\,
	datac => \ANA|Equal0~4_combout\,
	datad => \ANA|Add0~40_combout\,
	combout => \ANA|Q~19_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G11
\ANA|novo_clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ANA|novo_clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ANA|novo_clock~clkctrl_outclk\);

-- Location: CLKCTRL_G8
\ANA2|novo_clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ANA2|novo_clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ANA2|novo_clock~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y1_N24
\Q1[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q1[0]~3_combout\ = !Q1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q1(0),
	combout => \Q1[0]~3_combout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(10),
	combout => \SW~combout\(10));

-- Location: CLKCTRL_G1
\SW[10]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW[10]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW[10]~clkctrl_outclk\);

-- Location: LCFF_X27_Y1_N25
\Q1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ANA2|novo_clock~clkctrl_outclk\,
	datain => \Q1[0]~3_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q1(0));

-- Location: LCCOMB_X27_Y1_N28
\Q1[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q1[2]~1_combout\ = Q1(2) $ (((Q1(1) & Q1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q1(1),
	datac => Q1(2),
	datad => Q1(0),
	combout => \Q1[2]~1_combout\);

-- Location: LCFF_X27_Y1_N29
\Q1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ANA2|novo_clock~clkctrl_outclk\,
	datain => \Q1[2]~1_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q1(2));

-- Location: LCCOMB_X27_Y1_N14
\Q1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q1~0_combout\ = (Q1(0) & (!Q1(1) & ((Q1(2)) # (!Q1(3))))) # (!Q1(0) & (((Q1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(0),
	datab => Q1(3),
	datac => Q1(1),
	datad => Q1(2),
	combout => \Q1~0_combout\);

-- Location: LCFF_X27_Y1_N15
\Q1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ANA2|novo_clock~clkctrl_outclk\,
	datain => \Q1~0_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q1(1));

-- Location: LCCOMB_X27_Y1_N26
\Q1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q1~2_combout\ = (Q1(0) & ((Q1(1) & (Q1(3) $ (Q1(2)))) # (!Q1(1) & (Q1(3) & Q1(2))))) # (!Q1(0) & (((Q1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(0),
	datab => Q1(1),
	datac => Q1(3),
	datad => Q1(2),
	combout => \Q1~2_combout\);

-- Location: LCFF_X27_Y1_N27
\Q1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ANA2|novo_clock~clkctrl_outclk\,
	datain => \Q1~2_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q1(3));

-- Location: LCCOMB_X27_Y1_N16
\comb_51|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_51|WideOr6~0_combout\ = (Q1(2) & (!Q1(3) & ((!Q1(1)) # (!Q1(0))))) # (!Q1(2) & (Q1(3) $ (((Q1(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(3),
	datab => Q1(2),
	datac => Q1(0),
	datad => Q1(1),
	combout => \comb_51|WideOr6~0_combout\);

-- Location: LCCOMB_X27_Y1_N18
\comb_51|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_51|WideOr5~0_combout\ = (Q1(2) & ((Q1(3)) # ((Q1(0) & Q1(1))))) # (!Q1(2) & ((Q1(1)) # ((!Q1(3) & Q1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(3),
	datab => Q1(2),
	datac => Q1(0),
	datad => Q1(1),
	combout => \comb_51|WideOr5~0_combout\);

-- Location: LCCOMB_X27_Y1_N12
\comb_51|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_51|WideOr4~0_combout\ = (Q1(0)) # ((Q1(1) & (Q1(3))) # (!Q1(1) & ((Q1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(3),
	datab => Q1(2),
	datac => Q1(0),
	datad => Q1(1),
	combout => \comb_51|WideOr4~0_combout\);

-- Location: LCCOMB_X27_Y1_N22
\comb_51|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_51|WideOr3~0_combout\ = (Q1(1) & ((Q1(3)) # ((Q1(2) & Q1(0))))) # (!Q1(1) & (Q1(2) $ (((!Q1(3) & Q1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(3),
	datab => Q1(2),
	datac => Q1(0),
	datad => Q1(1),
	combout => \comb_51|WideOr3~0_combout\);

-- Location: LCCOMB_X27_Y1_N8
\comb_51|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_51|WideOr2~0_combout\ = (Q1(2) & (Q1(3))) # (!Q1(2) & (Q1(1) & ((Q1(3)) # (!Q1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(3),
	datab => Q1(2),
	datac => Q1(0),
	datad => Q1(1),
	combout => \comb_51|WideOr2~0_combout\);

-- Location: LCCOMB_X27_Y1_N30
\comb_51|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_51|WideOr1~0_combout\ = (Q1(3) & ((Q1(2)) # ((Q1(1))))) # (!Q1(3) & (Q1(2) & (Q1(0) $ (Q1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(3),
	datab => Q1(2),
	datac => Q1(0),
	datad => Q1(1),
	combout => \comb_51|WideOr1~0_combout\);

-- Location: LCCOMB_X27_Y1_N20
\comb_51|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_51|WideOr0~0_combout\ = (Q1(1) & (Q1(3))) # (!Q1(1) & (Q1(2) $ (((!Q1(3) & Q1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q1(3),
	datab => Q1(2),
	datac => Q1(0),
	datad => Q1(1),
	combout => \comb_51|WideOr0~0_combout\);

-- Location: LCCOMB_X64_Y4_N12
\Q0[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q0[0]~3_combout\ = !Q0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q0(0),
	combout => \Q0[0]~3_combout\);

-- Location: LCFF_X64_Y4_N13
\Q0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ANA|novo_clock~clkctrl_outclk\,
	datain => \Q0[0]~3_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q0(0));

-- Location: LCCOMB_X64_Y4_N28
\Q0[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q0[2]~1_combout\ = Q0(2) $ (((Q0(1) & Q0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q0(1),
	datac => Q0(2),
	datad => Q0(0),
	combout => \Q0[2]~1_combout\);

-- Location: LCFF_X64_Y4_N29
\Q0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ANA|novo_clock~clkctrl_outclk\,
	datain => \Q0[2]~1_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q0(2));

-- Location: LCCOMB_X64_Y4_N10
\Q0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q0~0_combout\ = (Q0(1) & (((!Q0(0))))) # (!Q0(1) & (Q0(0) & ((Q0(2)) # (!Q0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q0(3),
	datab => Q0(2),
	datac => Q0(1),
	datad => Q0(0),
	combout => \Q0~0_combout\);

-- Location: LCFF_X64_Y4_N11
\Q0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ANA|novo_clock~clkctrl_outclk\,
	datain => \Q0~0_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q0(1));

-- Location: LCCOMB_X64_Y4_N6
\Q0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q0~2_combout\ = (Q0(1) & (Q0(3) $ (((Q0(2) & Q0(0)))))) # (!Q0(1) & (Q0(3) & ((Q0(2)) # (!Q0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q0(1),
	datab => Q0(2),
	datac => Q0(3),
	datad => Q0(0),
	combout => \Q0~2_combout\);

-- Location: LCFF_X64_Y4_N7
\Q0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ANA|novo_clock~clkctrl_outclk\,
	datain => \Q0~2_combout\,
	aclr => \ALT_INV_SW[10]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q0(3));

-- Location: LCCOMB_X64_Y4_N20
\comb_50|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_50|WideOr6~0_combout\ = (Q0(1) & (!Q0(3) & ((!Q0(2)) # (!Q0(0))))) # (!Q0(1) & ((Q0(3) $ (Q0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q0(1),
	datab => Q0(0),
	datac => Q0(3),
	datad => Q0(2),
	combout => \comb_50|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y4_N26
\comb_50|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_50|WideOr5~0_combout\ = (Q0(0) & ((Q0(1)) # (Q0(3) $ (!Q0(2))))) # (!Q0(0) & ((Q0(2) & ((Q0(3)))) # (!Q0(2) & (Q0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q0(1),
	datab => Q0(0),
	datac => Q0(3),
	datad => Q0(2),
	combout => \comb_50|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y4_N16
\comb_50|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_50|WideOr4~0_combout\ = (Q0(0)) # ((Q0(1) & (Q0(3))) # (!Q0(1) & ((Q0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q0(1),
	datab => Q0(0),
	datac => Q0(3),
	datad => Q0(2),
	combout => \comb_50|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y4_N30
\comb_50|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_50|WideOr3~0_combout\ = (Q0(1) & ((Q0(3)) # ((Q0(0) & Q0(2))))) # (!Q0(1) & (Q0(2) $ (((Q0(0) & !Q0(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q0(1),
	datab => Q0(0),
	datac => Q0(3),
	datad => Q0(2),
	combout => \comb_50|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y4_N0
\comb_50|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_50|WideOr2~0_combout\ = (Q0(2) & (((Q0(3))))) # (!Q0(2) & (Q0(1) & ((Q0(3)) # (!Q0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q0(1),
	datab => Q0(0),
	datac => Q0(3),
	datad => Q0(2),
	combout => \comb_50|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y4_N22
\comb_50|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_50|WideOr1~0_combout\ = (Q0(3) & ((Q0(1)) # ((Q0(2))))) # (!Q0(3) & (Q0(2) & (Q0(1) $ (Q0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q0(1),
	datab => Q0(0),
	datac => Q0(3),
	datad => Q0(2),
	combout => \comb_50|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y4_N24
\comb_50|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_50|WideOr0~0_combout\ = (Q0(1) & (((Q0(3))))) # (!Q0(1) & (Q0(2) $ (((Q0(0) & !Q0(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q0(1),
	datab => Q0(0),
	datac => Q0(3),
	datad => Q0(2),
	combout => \comb_50|WideOr0~0_combout\);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_51|ALT_INV_WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_51|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_51|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_51|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_51|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_51|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_51|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_50|ALT_INV_WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_50|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_50|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_50|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_50|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_50|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_50|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(15));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(16));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(17));
END structure;


