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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "04/26/2016 16:55:12"

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

ENTITY 	stopwatch IS
    PORT (
	clk : IN std_logic;
	key_reset : IN std_logic;
	key_start : IN std_logic;
	key_display : IN std_logic;
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0);
	hex4 : OUT std_logic_vector(6 DOWNTO 0);
	hex5 : OUT std_logic_vector(6 DOWNTO 0);
	hex6 : OUT std_logic_vector(6 DOWNTO 0);
	hex7 : OUT std_logic_vector(6 DOWNTO 0);
	led0 : OUT std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic
	);
END stopwatch;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[5]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led0	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led1	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led2	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_reset	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_start	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_display	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF stopwatch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_key_reset : std_logic;
SIGNAL ww_key_start : std_logic;
SIGNAL ww_key_display : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \counter_reset[3]~38_combout\ : std_logic;
SIGNAL \counter_reset[5]~42_combout\ : std_logic;
SIGNAL \counter_reset[8]~48_combout\ : std_logic;
SIGNAL \counter_reset[15]~63\ : std_logic;
SIGNAL \counter_reset[16]~64_combout\ : std_logic;
SIGNAL \counter_reset[16]~65\ : std_logic;
SIGNAL \counter_reset[17]~66_combout\ : std_logic;
SIGNAL \counter_reset[17]~67\ : std_logic;
SIGNAL \counter_reset[18]~68_combout\ : std_logic;
SIGNAL \counter_reset[18]~69\ : std_logic;
SIGNAL \counter_reset[19]~70_combout\ : std_logic;
SIGNAL \counter_reset[19]~71\ : std_logic;
SIGNAL \counter_reset[20]~72_combout\ : std_logic;
SIGNAL \counter_reset[20]~73\ : std_logic;
SIGNAL \counter_reset[21]~74_combout\ : std_logic;
SIGNAL \counter_reset[21]~75\ : std_logic;
SIGNAL \counter_reset[22]~76_combout\ : std_logic;
SIGNAL \counter_reset[22]~77\ : std_logic;
SIGNAL \counter_reset[23]~78_combout\ : std_logic;
SIGNAL \counter_reset[23]~79\ : std_logic;
SIGNAL \counter_reset[24]~80_combout\ : std_logic;
SIGNAL \counter_reset[24]~81\ : std_logic;
SIGNAL \counter_reset[25]~82_combout\ : std_logic;
SIGNAL \counter_reset[25]~83\ : std_logic;
SIGNAL \counter_reset[26]~84_combout\ : std_logic;
SIGNAL \counter_reset[26]~85\ : std_logic;
SIGNAL \counter_reset[27]~86_combout\ : std_logic;
SIGNAL \counter_reset[27]~87\ : std_logic;
SIGNAL \counter_reset[28]~88_combout\ : std_logic;
SIGNAL \counter_reset[28]~89\ : std_logic;
SIGNAL \counter_reset[29]~90_combout\ : std_logic;
SIGNAL \counter_reset[29]~91\ : std_logic;
SIGNAL \counter_reset[30]~92_combout\ : std_logic;
SIGNAL \counter_reset[30]~93\ : std_logic;
SIGNAL \counter_reset[31]~94_combout\ : std_logic;
SIGNAL \counter_start[6]~44_combout\ : std_logic;
SIGNAL \counter_start[8]~48_combout\ : std_logic;
SIGNAL \counter_start[10]~52_combout\ : std_logic;
SIGNAL \counter_start[15]~63\ : std_logic;
SIGNAL \counter_start[16]~64_combout\ : std_logic;
SIGNAL \counter_start[16]~65\ : std_logic;
SIGNAL \counter_start[17]~66_combout\ : std_logic;
SIGNAL \counter_start[17]~67\ : std_logic;
SIGNAL \counter_start[18]~68_combout\ : std_logic;
SIGNAL \counter_start[18]~69\ : std_logic;
SIGNAL \counter_start[19]~70_combout\ : std_logic;
SIGNAL \counter_start[19]~71\ : std_logic;
SIGNAL \counter_start[20]~72_combout\ : std_logic;
SIGNAL \counter_start[20]~73\ : std_logic;
SIGNAL \counter_start[21]~74_combout\ : std_logic;
SIGNAL \counter_start[21]~75\ : std_logic;
SIGNAL \counter_start[22]~76_combout\ : std_logic;
SIGNAL \counter_start[22]~77\ : std_logic;
SIGNAL \counter_start[23]~78_combout\ : std_logic;
SIGNAL \counter_start[23]~79\ : std_logic;
SIGNAL \counter_start[24]~80_combout\ : std_logic;
SIGNAL \counter_start[24]~81\ : std_logic;
SIGNAL \counter_start[25]~82_combout\ : std_logic;
SIGNAL \counter_start[25]~83\ : std_logic;
SIGNAL \counter_start[26]~84_combout\ : std_logic;
SIGNAL \counter_start[26]~85\ : std_logic;
SIGNAL \counter_start[27]~86_combout\ : std_logic;
SIGNAL \counter_start[27]~87\ : std_logic;
SIGNAL \counter_start[28]~88_combout\ : std_logic;
SIGNAL \counter_start[28]~89\ : std_logic;
SIGNAL \counter_start[29]~90_combout\ : std_logic;
SIGNAL \counter_start[29]~91\ : std_logic;
SIGNAL \counter_start[30]~92_combout\ : std_logic;
SIGNAL \counter_start[30]~93\ : std_logic;
SIGNAL \counter_start[31]~94_combout\ : std_logic;
SIGNAL \counter_display[5]~42_combout\ : std_logic;
SIGNAL \counter_display[6]~44_combout\ : std_logic;
SIGNAL \counter_display[10]~52_combout\ : std_logic;
SIGNAL \counter_display[19]~70_combout\ : std_logic;
SIGNAL \counter_display[30]~93\ : std_logic;
SIGNAL \counter_display[31]~94_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \msecond_counter_high[1]~0_combout\ : std_logic;
SIGNAL \msecond_counter_high[3]~2_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \second_counter_low[0]~0_combout\ : std_logic;
SIGNAL \second_counter_low[3]~2_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \second_counter_high[0]~0_combout\ : std_logic;
SIGNAL \second_counter_high[3]~2_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \minute_counter_low[0]~0_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add8~1_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add9~1_combout\ : std_logic;
SIGNAL \hour_counter_low[1]~0_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add10~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \counter_50M~2_combout\ : std_logic;
SIGNAL \counter_50M~4_combout\ : std_logic;
SIGNAL \counter_50M~7_combout\ : std_logic;
SIGNAL \key_start~combout\ : std_logic;
SIGNAL \start_time[0]~0_combout\ : std_logic;
SIGNAL \counter_start[0]~32_combout\ : std_logic;
SIGNAL \start_xor~combout\ : std_logic;
SIGNAL \counter_start[0]~33\ : std_logic;
SIGNAL \counter_start[1]~34_combout\ : std_logic;
SIGNAL \counter_start[1]~35\ : std_logic;
SIGNAL \counter_start[2]~36_combout\ : std_logic;
SIGNAL \counter_start[2]~37\ : std_logic;
SIGNAL \counter_start[3]~39\ : std_logic;
SIGNAL \counter_start[4]~40_combout\ : std_logic;
SIGNAL \counter_start[4]~41\ : std_logic;
SIGNAL \counter_start[5]~42_combout\ : std_logic;
SIGNAL \counter_start[5]~43\ : std_logic;
SIGNAL \counter_start[6]~45\ : std_logic;
SIGNAL \counter_start[7]~46_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \counter_start[3]~38_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \counter_start[7]~47\ : std_logic;
SIGNAL \counter_start[8]~49\ : std_logic;
SIGNAL \counter_start[9]~50_combout\ : std_logic;
SIGNAL \counter_start[9]~51\ : std_logic;
SIGNAL \counter_start[10]~53\ : std_logic;
SIGNAL \counter_start[11]~54_combout\ : std_logic;
SIGNAL \counter_start[11]~55\ : std_logic;
SIGNAL \counter_start[12]~57\ : std_logic;
SIGNAL \counter_start[13]~58_combout\ : std_logic;
SIGNAL \counter_start[13]~59\ : std_logic;
SIGNAL \counter_start[14]~60_combout\ : std_logic;
SIGNAL \counter_start[14]~61\ : std_logic;
SIGNAL \counter_start[15]~62_combout\ : std_logic;
SIGNAL \counter_start[12]~56_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \start_out~0_combout\ : std_logic;
SIGNAL \start_out~regout\ : std_logic;
SIGNAL \start_flag~regout\ : std_logic;
SIGNAL \start~0_combout\ : std_logic;
SIGNAL \start~regout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \counter_50M~6_combout\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \counter_50M~5_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \counter_50M~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \counter_50M~1_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \counter_50M~3_combout\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \msecond_counter_low[0]~0_combout\ : std_logic;
SIGNAL \msecond_counter_low~4_combout\ : std_logic;
SIGNAL \key_reset~combout\ : std_logic;
SIGNAL \reset_time[0]~0_combout\ : std_logic;
SIGNAL \counter_reset[0]~32_combout\ : std_logic;
SIGNAL \reset_xor~combout\ : std_logic;
SIGNAL \counter_reset[0]~33\ : std_logic;
SIGNAL \counter_reset[1]~34_combout\ : std_logic;
SIGNAL \counter_reset[1]~35\ : std_logic;
SIGNAL \counter_reset[2]~36_combout\ : std_logic;
SIGNAL \counter_reset[2]~37\ : std_logic;
SIGNAL \counter_reset[3]~39\ : std_logic;
SIGNAL \counter_reset[4]~40_combout\ : std_logic;
SIGNAL \counter_reset[4]~41\ : std_logic;
SIGNAL \counter_reset[5]~43\ : std_logic;
SIGNAL \counter_reset[6]~45\ : std_logic;
SIGNAL \counter_reset[7]~46_combout\ : std_logic;
SIGNAL \counter_reset[6]~44_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \counter_reset[7]~47\ : std_logic;
SIGNAL \counter_reset[8]~49\ : std_logic;
SIGNAL \counter_reset[9]~50_combout\ : std_logic;
SIGNAL \counter_reset[9]~51\ : std_logic;
SIGNAL \counter_reset[10]~53\ : std_logic;
SIGNAL \counter_reset[11]~54_combout\ : std_logic;
SIGNAL \counter_reset[10]~52_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \counter_reset[11]~55\ : std_logic;
SIGNAL \counter_reset[12]~56_combout\ : std_logic;
SIGNAL \counter_reset[12]~57\ : std_logic;
SIGNAL \counter_reset[13]~58_combout\ : std_logic;
SIGNAL \counter_reset[13]~59\ : std_logic;
SIGNAL \counter_reset[14]~60_combout\ : std_logic;
SIGNAL \counter_reset[14]~61\ : std_logic;
SIGNAL \counter_reset[15]~62_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \reset_out~0_combout\ : std_logic;
SIGNAL \reset_out~regout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \msecond_counter_low[0]~2_combout\ : std_logic;
SIGNAL \msecond_counter_low~1_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \msecond_counter_low~3_combout\ : std_logic;
SIGNAL \reset_flag~feeder_combout\ : std_logic;
SIGNAL \reset_flag~regout\ : std_logic;
SIGNAL \display~0_combout\ : std_logic;
SIGNAL \counter_display[0]~32_combout\ : std_logic;
SIGNAL \key_display~combout\ : std_logic;
SIGNAL \display_time[0]~0_combout\ : std_logic;
SIGNAL \display_xor~combout\ : std_logic;
SIGNAL \counter_display[0]~33\ : std_logic;
SIGNAL \counter_display[1]~34_combout\ : std_logic;
SIGNAL \counter_display[1]~35\ : std_logic;
SIGNAL \counter_display[2]~36_combout\ : std_logic;
SIGNAL \counter_display[2]~37\ : std_logic;
SIGNAL \counter_display[3]~39\ : std_logic;
SIGNAL \counter_display[4]~40_combout\ : std_logic;
SIGNAL \counter_display[4]~41\ : std_logic;
SIGNAL \counter_display[5]~43\ : std_logic;
SIGNAL \counter_display[6]~45\ : std_logic;
SIGNAL \counter_display[7]~46_combout\ : std_logic;
SIGNAL \counter_display[7]~47\ : std_logic;
SIGNAL \counter_display[8]~49\ : std_logic;
SIGNAL \counter_display[9]~50_combout\ : std_logic;
SIGNAL \counter_display[9]~51\ : std_logic;
SIGNAL \counter_display[10]~53\ : std_logic;
SIGNAL \counter_display[11]~54_combout\ : std_logic;
SIGNAL \counter_display[8]~48_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \counter_display[11]~55\ : std_logic;
SIGNAL \counter_display[12]~57\ : std_logic;
SIGNAL \counter_display[13]~58_combout\ : std_logic;
SIGNAL \counter_display[13]~59\ : std_logic;
SIGNAL \counter_display[14]~60_combout\ : std_logic;
SIGNAL \counter_display[14]~61\ : std_logic;
SIGNAL \counter_display[15]~62_combout\ : std_logic;
SIGNAL \counter_display[12]~56_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \counter_display[3]~38_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \counter_display[15]~63\ : std_logic;
SIGNAL \counter_display[16]~64_combout\ : std_logic;
SIGNAL \counter_display[16]~65\ : std_logic;
SIGNAL \counter_display[17]~66_combout\ : std_logic;
SIGNAL \counter_display[17]~67\ : std_logic;
SIGNAL \counter_display[18]~68_combout\ : std_logic;
SIGNAL \counter_display[18]~69\ : std_logic;
SIGNAL \counter_display[19]~71\ : std_logic;
SIGNAL \counter_display[20]~72_combout\ : std_logic;
SIGNAL \counter_display[20]~73\ : std_logic;
SIGNAL \counter_display[21]~75\ : std_logic;
SIGNAL \counter_display[22]~77\ : std_logic;
SIGNAL \counter_display[23]~78_combout\ : std_logic;
SIGNAL \counter_display[23]~79\ : std_logic;
SIGNAL \counter_display[24]~81\ : std_logic;
SIGNAL \counter_display[25]~82_combout\ : std_logic;
SIGNAL \counter_display[25]~83\ : std_logic;
SIGNAL \counter_display[26]~85\ : std_logic;
SIGNAL \counter_display[27]~86_combout\ : std_logic;
SIGNAL \counter_display[27]~87\ : std_logic;
SIGNAL \counter_display[28]~89\ : std_logic;
SIGNAL \counter_display[29]~90_combout\ : std_logic;
SIGNAL \counter_display[29]~91\ : std_logic;
SIGNAL \counter_display[30]~92_combout\ : std_logic;
SIGNAL \counter_display[28]~88_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \counter_display[24]~80_combout\ : std_logic;
SIGNAL \counter_display[26]~84_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \counter_display[21]~74_combout\ : std_logic;
SIGNAL \counter_display[22]~76_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \display_out~0_combout\ : std_logic;
SIGNAL \display_out~regout\ : std_logic;
SIGNAL \display~1_combout\ : std_logic;
SIGNAL \display~regout\ : std_logic;
SIGNAL \msecond_display_low[2]~feeder_combout\ : std_logic;
SIGNAL \msecond_counter_low~5_combout\ : std_logic;
SIGNAL \msecond_display_low[3]~feeder_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|WideOr0~0_combout\ : std_logic;
SIGNAL \msecond_counter_high[1]~1_combout\ : std_logic;
SIGNAL \msecond_counter_high[2]~6_combout\ : std_logic;
SIGNAL \msecond_counter_high[1]~5_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \msecond_counter_high[3]~3_combout\ : std_logic;
SIGNAL \msecond_counter_high[3]~7_combout\ : std_logic;
SIGNAL \msecond_counter_high[0]~4_combout\ : std_logic;
SIGNAL \msecond_display_high[0]~feeder_combout\ : std_logic;
SIGNAL \msecond_display_high[1]~feeder_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|WideOr0~0_combout\ : std_logic;
SIGNAL \second_counter_low[0]~1_combout\ : std_logic;
SIGNAL \second_counter_low[0]~4_combout\ : std_logic;
SIGNAL \second_counter_low[3]~7_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \second_counter_low[3]~3_combout\ : std_logic;
SIGNAL \second_counter_low[1]~5_combout\ : std_logic;
SIGNAL \second_display_low[1]~feeder_combout\ : std_logic;
SIGNAL \second_display_low[3]~feeder_combout\ : std_logic;
SIGNAL \second_counter_low[2]~6_combout\ : std_logic;
SIGNAL \second_display_low[0]~feeder_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|WideOr0~0_combout\ : std_logic;
SIGNAL \second_counter_high[0]~1_combout\ : std_logic;
SIGNAL \second_counter_high[3]~7_combout\ : std_logic;
SIGNAL \second_counter_high[0]~4_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \second_counter_high[3]~3_combout\ : std_logic;
SIGNAL \second_counter_high[1]~5_combout\ : std_logic;
SIGNAL \second_counter_high[2]~6_combout\ : std_logic;
SIGNAL \second_display_high[2]~feeder_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|WideOr0~0_combout\ : std_logic;
SIGNAL \minute_counter_low[3]~2_combout\ : std_logic;
SIGNAL \minute_counter_low[3]~3_combout\ : std_logic;
SIGNAL \minute_counter_low[0]~4_combout\ : std_logic;
SIGNAL \minute_display_low[0]~feeder_combout\ : std_logic;
SIGNAL \minute_counter_low[0]~1_combout\ : std_logic;
SIGNAL \minute_counter_low[1]~5_combout\ : std_logic;
SIGNAL \minute_display_low[1]~feeder_combout\ : std_logic;
SIGNAL \minute_counter_low[2]~6_combout\ : std_logic;
SIGNAL \minute_counter_low[3]~7_combout\ : std_logic;
SIGNAL \minute_display_low[3]~feeder_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|WideOr0~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \minute_counter_high[0]~0_combout\ : std_logic;
SIGNAL \minute_counter_high[0]~1_combout\ : std_logic;
SIGNAL \minute_counter_high[1]~5_combout\ : std_logic;
SIGNAL \minute_counter_high[2]~6_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \minute_counter_high[3]~2_combout\ : std_logic;
SIGNAL \minute_counter_high[3]~3_combout\ : std_logic;
SIGNAL \minute_counter_high[3]~7_combout\ : std_logic;
SIGNAL \minute_display_high[3]~feeder_combout\ : std_logic;
SIGNAL \minute_display_high[2]~feeder_combout\ : std_logic;
SIGNAL \minute_display_high[1]~feeder_combout\ : std_logic;
SIGNAL \minute_counter_high[0]~4_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|WideOr0~0_combout\ : std_logic;
SIGNAL \hour_counter_low[3]~2_combout\ : std_logic;
SIGNAL \hour_counter_low[3]~3_combout\ : std_logic;
SIGNAL \hour_counter_low[1]~1_combout\ : std_logic;
SIGNAL \hour_counter_low[1]~5_combout\ : std_logic;
SIGNAL \hour_counter_low[2]~6_combout\ : std_logic;
SIGNAL \hour_counter_low[3]~7_combout\ : std_logic;
SIGNAL \hour_display_low[3]~feeder_combout\ : std_logic;
SIGNAL \hour_counter_low[0]~4_combout\ : std_logic;
SIGNAL \hour_display_low[0]~feeder_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|WideOr0~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \hour_counter_high~2_combout\ : std_logic;
SIGNAL \hour_counter_high[0]~6_combout\ : std_logic;
SIGNAL \hour_counter_high~3_combout\ : std_logic;
SIGNAL \hour_display_high[1]~feeder_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \hour_counter_high~4_combout\ : std_logic;
SIGNAL \Add11~1_combout\ : std_logic;
SIGNAL \hour_counter_high~5_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr6~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr5~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr4~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr3~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr2~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr1~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_high|WideOr0~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \display_flag~feeder_combout\ : std_logic;
SIGNAL \display_flag~regout\ : std_logic;
SIGNAL start_time : std_logic_vector(1 DOWNTO 0);
SIGNAL second_display_low : std_logic_vector(3 DOWNTO 0);
SIGNAL second_display_high : std_logic_vector(3 DOWNTO 0);
SIGNAL second_counter_low : std_logic_vector(3 DOWNTO 0);
SIGNAL second_counter_high : std_logic_vector(3 DOWNTO 0);
SIGNAL reset_time : std_logic_vector(1 DOWNTO 0);
SIGNAL msecond_display_low : std_logic_vector(3 DOWNTO 0);
SIGNAL msecond_display_high : std_logic_vector(3 DOWNTO 0);
SIGNAL msecond_counter_low : std_logic_vector(3 DOWNTO 0);
SIGNAL msecond_counter_high : std_logic_vector(3 DOWNTO 0);
SIGNAL minute_display_low : std_logic_vector(3 DOWNTO 0);
SIGNAL minute_display_high : std_logic_vector(3 DOWNTO 0);
SIGNAL minute_counter_low : std_logic_vector(3 DOWNTO 0);
SIGNAL minute_counter_high : std_logic_vector(3 DOWNTO 0);
SIGNAL hour_display_low : std_logic_vector(3 DOWNTO 0);
SIGNAL hour_display_high : std_logic_vector(3 DOWNTO 0);
SIGNAL hour_counter_low : std_logic_vector(3 DOWNTO 0);
SIGNAL hour_counter_high : std_logic_vector(3 DOWNTO 0);
SIGNAL display_time : std_logic_vector(1 DOWNTO 0);
SIGNAL counter_start : std_logic_vector(31 DOWNTO 0);
SIGNAL counter_reset : std_logic_vector(31 DOWNTO 0);
SIGNAL counter_display : std_logic_vector(31 DOWNTO 0);
SIGNAL counter_50M : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_display~regout\ : std_logic;
SIGNAL \LED8_hour_display_high|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_hour_display_low|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_high|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_minute_display_low|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_second_display_high|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_second_display_low|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_high|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \LED8_msecond_display_low|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_key_reset <= key_reset;
ww_key_start <= key_start;
ww_key_display <= key_display;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
hex5 <= ww_hex5;
hex6 <= ww_hex6;
hex7 <= ww_hex7;
led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_display~regout\ <= NOT \display~regout\;
\LED8_hour_display_high|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_hour_display_high|WideOr0~0_combout\;
\LED8_hour_display_low|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_hour_display_low|WideOr0~0_combout\;
\LED8_minute_display_high|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_minute_display_high|WideOr0~0_combout\;
\LED8_minute_display_low|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_minute_display_low|WideOr0~0_combout\;
\LED8_second_display_high|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_second_display_high|WideOr0~0_combout\;
\LED8_second_display_low|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_second_display_low|WideOr0~0_combout\;
\LED8_msecond_display_high|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_msecond_display_high|WideOr0~0_combout\;
\LED8_msecond_display_low|ALT_INV_WideOr0~0_combout\ <= NOT \LED8_msecond_display_low|WideOr0~0_combout\;

-- Location: LCFF_X35_Y14_N7
\counter_reset[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[3]~38_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(3));

-- Location: LCFF_X35_Y14_N11
\counter_reset[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[5]~42_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(5));

-- Location: LCFF_X35_Y14_N17
\counter_reset[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[8]~48_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(8));

-- Location: LCFF_X35_Y13_N1
\counter_reset[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[16]~64_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(16));

-- Location: LCFF_X35_Y13_N3
\counter_reset[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[17]~66_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(17));

-- Location: LCFF_X35_Y13_N5
\counter_reset[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[18]~68_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(18));

-- Location: LCFF_X35_Y13_N7
\counter_reset[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[19]~70_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(19));

-- Location: LCFF_X35_Y13_N9
\counter_reset[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[20]~72_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(20));

-- Location: LCFF_X35_Y13_N11
\counter_reset[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[21]~74_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(21));

-- Location: LCFF_X35_Y13_N13
\counter_reset[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[22]~76_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(22));

-- Location: LCFF_X35_Y13_N15
\counter_reset[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[23]~78_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(23));

-- Location: LCFF_X35_Y13_N17
\counter_reset[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[24]~80_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(24));

-- Location: LCFF_X35_Y13_N19
\counter_reset[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[25]~82_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(25));

-- Location: LCFF_X35_Y13_N21
\counter_reset[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[26]~84_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(26));

-- Location: LCFF_X35_Y13_N23
\counter_reset[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[27]~86_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(27));

-- Location: LCFF_X35_Y13_N25
\counter_reset[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[28]~88_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(28));

-- Location: LCFF_X35_Y13_N27
\counter_reset[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[29]~90_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(29));

-- Location: LCFF_X35_Y13_N29
\counter_reset[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[30]~92_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(30));

-- Location: LCFF_X35_Y13_N31
\counter_reset[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[31]~94_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(31));

-- Location: LCFF_X27_Y19_N13
\counter_start[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[6]~44_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(6));

-- Location: LCFF_X27_Y19_N17
\counter_start[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[8]~48_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(8));

-- Location: LCFF_X27_Y19_N21
\counter_start[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[10]~52_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(10));

-- Location: LCFF_X27_Y18_N1
\counter_start[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[16]~64_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(16));

-- Location: LCFF_X27_Y18_N3
\counter_start[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[17]~66_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(17));

-- Location: LCFF_X27_Y18_N5
\counter_start[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[18]~68_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(18));

-- Location: LCFF_X27_Y18_N7
\counter_start[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[19]~70_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(19));

-- Location: LCFF_X27_Y18_N9
\counter_start[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[20]~72_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(20));

-- Location: LCFF_X27_Y18_N11
\counter_start[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[21]~74_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(21));

-- Location: LCFF_X27_Y18_N13
\counter_start[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[22]~76_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(22));

-- Location: LCFF_X27_Y18_N15
\counter_start[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[23]~78_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(23));

-- Location: LCFF_X27_Y18_N17
\counter_start[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[24]~80_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(24));

-- Location: LCFF_X27_Y18_N19
\counter_start[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[25]~82_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(25));

-- Location: LCFF_X27_Y18_N21
\counter_start[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[26]~84_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(26));

-- Location: LCFF_X27_Y18_N23
\counter_start[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[27]~86_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(27));

-- Location: LCFF_X27_Y18_N25
\counter_start[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[28]~88_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(28));

-- Location: LCFF_X27_Y18_N27
\counter_start[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[29]~90_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(29));

-- Location: LCFF_X27_Y18_N29
\counter_start[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[30]~92_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(30));

-- Location: LCFF_X27_Y18_N31
\counter_start[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[31]~94_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(31));

-- Location: LCFF_X38_Y25_N13
\counter_display[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[6]~44_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(6));

-- Location: LCFF_X38_Y25_N11
\counter_display[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[5]~42_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(5));

-- Location: LCFF_X38_Y25_N21
\counter_display[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[10]~52_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(10));

-- Location: LCFF_X38_Y24_N7
\counter_display[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[19]~70_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(19));

-- Location: LCFF_X38_Y24_N31
\counter_display[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[31]~94_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(31));

-- Location: LCCOMB_X6_Y16_N16
\Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (counter_50M(8) & (\Add3~15\ $ (GND))) # (!counter_50M(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((counter_50M(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X6_Y16_N20
\Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (counter_50M(10) & (\Add3~19\ $ (GND))) # (!counter_50M(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((counter_50M(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X6_Y16_N30
\Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (counter_50M(15) & (!\Add3~29\)) # (!counter_50M(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!counter_50M(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X6_Y15_N4
\Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (counter_50M(18) & (\Add3~35\ $ (GND))) # (!counter_50M(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((counter_50M(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X6_Y15_N12
\Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (counter_50M(22) & (\Add3~43\ $ (GND))) # (!counter_50M(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((counter_50M(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X6_Y15_N16
\Add3~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (counter_50M(24) & (\Add3~47\ $ (GND))) # (!counter_50M(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((counter_50M(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X6_Y15_N20
\Add3~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (counter_50M(26) & (\Add3~51\ $ (GND))) # (!counter_50M(26) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((counter_50M(26) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X35_Y14_N6
\counter_reset[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[3]~38_combout\ = (counter_reset(3) & (!\counter_reset[2]~37\)) # (!counter_reset(3) & ((\counter_reset[2]~37\) # (GND)))
-- \counter_reset[3]~39\ = CARRY((!\counter_reset[2]~37\) # (!counter_reset(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(3),
	datad => VCC,
	cin => \counter_reset[2]~37\,
	combout => \counter_reset[3]~38_combout\,
	cout => \counter_reset[3]~39\);

-- Location: LCCOMB_X35_Y14_N10
\counter_reset[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[5]~42_combout\ = (counter_reset(5) & (!\counter_reset[4]~41\)) # (!counter_reset(5) & ((\counter_reset[4]~41\) # (GND)))
-- \counter_reset[5]~43\ = CARRY((!\counter_reset[4]~41\) # (!counter_reset(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(5),
	datad => VCC,
	cin => \counter_reset[4]~41\,
	combout => \counter_reset[5]~42_combout\,
	cout => \counter_reset[5]~43\);

-- Location: LCCOMB_X35_Y14_N16
\counter_reset[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[8]~48_combout\ = (counter_reset(8) & (\counter_reset[7]~47\ $ (GND))) # (!counter_reset(8) & (!\counter_reset[7]~47\ & VCC))
-- \counter_reset[8]~49\ = CARRY((counter_reset(8) & !\counter_reset[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(8),
	datad => VCC,
	cin => \counter_reset[7]~47\,
	combout => \counter_reset[8]~48_combout\,
	cout => \counter_reset[8]~49\);

-- Location: LCCOMB_X35_Y14_N30
\counter_reset[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[15]~62_combout\ = (counter_reset(15) & (!\counter_reset[14]~61\)) # (!counter_reset(15) & ((\counter_reset[14]~61\) # (GND)))
-- \counter_reset[15]~63\ = CARRY((!\counter_reset[14]~61\) # (!counter_reset(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(15),
	datad => VCC,
	cin => \counter_reset[14]~61\,
	combout => \counter_reset[15]~62_combout\,
	cout => \counter_reset[15]~63\);

-- Location: LCCOMB_X35_Y13_N0
\counter_reset[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[16]~64_combout\ = (counter_reset(16) & (\counter_reset[15]~63\ $ (GND))) # (!counter_reset(16) & (!\counter_reset[15]~63\ & VCC))
-- \counter_reset[16]~65\ = CARRY((counter_reset(16) & !\counter_reset[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(16),
	datad => VCC,
	cin => \counter_reset[15]~63\,
	combout => \counter_reset[16]~64_combout\,
	cout => \counter_reset[16]~65\);

-- Location: LCCOMB_X35_Y13_N2
\counter_reset[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[17]~66_combout\ = (counter_reset(17) & (!\counter_reset[16]~65\)) # (!counter_reset(17) & ((\counter_reset[16]~65\) # (GND)))
-- \counter_reset[17]~67\ = CARRY((!\counter_reset[16]~65\) # (!counter_reset(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(17),
	datad => VCC,
	cin => \counter_reset[16]~65\,
	combout => \counter_reset[17]~66_combout\,
	cout => \counter_reset[17]~67\);

-- Location: LCCOMB_X35_Y13_N4
\counter_reset[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[18]~68_combout\ = (counter_reset(18) & (\counter_reset[17]~67\ $ (GND))) # (!counter_reset(18) & (!\counter_reset[17]~67\ & VCC))
-- \counter_reset[18]~69\ = CARRY((counter_reset(18) & !\counter_reset[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(18),
	datad => VCC,
	cin => \counter_reset[17]~67\,
	combout => \counter_reset[18]~68_combout\,
	cout => \counter_reset[18]~69\);

-- Location: LCCOMB_X35_Y13_N6
\counter_reset[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[19]~70_combout\ = (counter_reset(19) & (!\counter_reset[18]~69\)) # (!counter_reset(19) & ((\counter_reset[18]~69\) # (GND)))
-- \counter_reset[19]~71\ = CARRY((!\counter_reset[18]~69\) # (!counter_reset(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(19),
	datad => VCC,
	cin => \counter_reset[18]~69\,
	combout => \counter_reset[19]~70_combout\,
	cout => \counter_reset[19]~71\);

-- Location: LCCOMB_X35_Y13_N8
\counter_reset[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[20]~72_combout\ = (counter_reset(20) & (\counter_reset[19]~71\ $ (GND))) # (!counter_reset(20) & (!\counter_reset[19]~71\ & VCC))
-- \counter_reset[20]~73\ = CARRY((counter_reset(20) & !\counter_reset[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(20),
	datad => VCC,
	cin => \counter_reset[19]~71\,
	combout => \counter_reset[20]~72_combout\,
	cout => \counter_reset[20]~73\);

-- Location: LCCOMB_X35_Y13_N10
\counter_reset[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[21]~74_combout\ = (counter_reset(21) & (!\counter_reset[20]~73\)) # (!counter_reset(21) & ((\counter_reset[20]~73\) # (GND)))
-- \counter_reset[21]~75\ = CARRY((!\counter_reset[20]~73\) # (!counter_reset(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(21),
	datad => VCC,
	cin => \counter_reset[20]~73\,
	combout => \counter_reset[21]~74_combout\,
	cout => \counter_reset[21]~75\);

-- Location: LCCOMB_X35_Y13_N12
\counter_reset[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[22]~76_combout\ = (counter_reset(22) & (\counter_reset[21]~75\ $ (GND))) # (!counter_reset(22) & (!\counter_reset[21]~75\ & VCC))
-- \counter_reset[22]~77\ = CARRY((counter_reset(22) & !\counter_reset[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(22),
	datad => VCC,
	cin => \counter_reset[21]~75\,
	combout => \counter_reset[22]~76_combout\,
	cout => \counter_reset[22]~77\);

-- Location: LCCOMB_X35_Y13_N14
\counter_reset[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[23]~78_combout\ = (counter_reset(23) & (!\counter_reset[22]~77\)) # (!counter_reset(23) & ((\counter_reset[22]~77\) # (GND)))
-- \counter_reset[23]~79\ = CARRY((!\counter_reset[22]~77\) # (!counter_reset(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(23),
	datad => VCC,
	cin => \counter_reset[22]~77\,
	combout => \counter_reset[23]~78_combout\,
	cout => \counter_reset[23]~79\);

-- Location: LCCOMB_X35_Y13_N16
\counter_reset[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[24]~80_combout\ = (counter_reset(24) & (\counter_reset[23]~79\ $ (GND))) # (!counter_reset(24) & (!\counter_reset[23]~79\ & VCC))
-- \counter_reset[24]~81\ = CARRY((counter_reset(24) & !\counter_reset[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(24),
	datad => VCC,
	cin => \counter_reset[23]~79\,
	combout => \counter_reset[24]~80_combout\,
	cout => \counter_reset[24]~81\);

-- Location: LCCOMB_X35_Y13_N18
\counter_reset[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[25]~82_combout\ = (counter_reset(25) & (!\counter_reset[24]~81\)) # (!counter_reset(25) & ((\counter_reset[24]~81\) # (GND)))
-- \counter_reset[25]~83\ = CARRY((!\counter_reset[24]~81\) # (!counter_reset(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(25),
	datad => VCC,
	cin => \counter_reset[24]~81\,
	combout => \counter_reset[25]~82_combout\,
	cout => \counter_reset[25]~83\);

-- Location: LCCOMB_X35_Y13_N20
\counter_reset[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[26]~84_combout\ = (counter_reset(26) & (\counter_reset[25]~83\ $ (GND))) # (!counter_reset(26) & (!\counter_reset[25]~83\ & VCC))
-- \counter_reset[26]~85\ = CARRY((counter_reset(26) & !\counter_reset[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(26),
	datad => VCC,
	cin => \counter_reset[25]~83\,
	combout => \counter_reset[26]~84_combout\,
	cout => \counter_reset[26]~85\);

-- Location: LCCOMB_X35_Y13_N22
\counter_reset[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[27]~86_combout\ = (counter_reset(27) & (!\counter_reset[26]~85\)) # (!counter_reset(27) & ((\counter_reset[26]~85\) # (GND)))
-- \counter_reset[27]~87\ = CARRY((!\counter_reset[26]~85\) # (!counter_reset(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(27),
	datad => VCC,
	cin => \counter_reset[26]~85\,
	combout => \counter_reset[27]~86_combout\,
	cout => \counter_reset[27]~87\);

-- Location: LCCOMB_X35_Y13_N24
\counter_reset[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[28]~88_combout\ = (counter_reset(28) & (\counter_reset[27]~87\ $ (GND))) # (!counter_reset(28) & (!\counter_reset[27]~87\ & VCC))
-- \counter_reset[28]~89\ = CARRY((counter_reset(28) & !\counter_reset[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(28),
	datad => VCC,
	cin => \counter_reset[27]~87\,
	combout => \counter_reset[28]~88_combout\,
	cout => \counter_reset[28]~89\);

-- Location: LCCOMB_X35_Y13_N26
\counter_reset[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[29]~90_combout\ = (counter_reset(29) & (!\counter_reset[28]~89\)) # (!counter_reset(29) & ((\counter_reset[28]~89\) # (GND)))
-- \counter_reset[29]~91\ = CARRY((!\counter_reset[28]~89\) # (!counter_reset(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(29),
	datad => VCC,
	cin => \counter_reset[28]~89\,
	combout => \counter_reset[29]~90_combout\,
	cout => \counter_reset[29]~91\);

-- Location: LCCOMB_X35_Y13_N28
\counter_reset[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[30]~92_combout\ = (counter_reset(30) & (\counter_reset[29]~91\ $ (GND))) # (!counter_reset(30) & (!\counter_reset[29]~91\ & VCC))
-- \counter_reset[30]~93\ = CARRY((counter_reset(30) & !\counter_reset[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(30),
	datad => VCC,
	cin => \counter_reset[29]~91\,
	combout => \counter_reset[30]~92_combout\,
	cout => \counter_reset[30]~93\);

-- Location: LCCOMB_X35_Y13_N30
\counter_reset[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[31]~94_combout\ = \counter_reset[30]~93\ $ (counter_reset(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter_reset(31),
	cin => \counter_reset[30]~93\,
	combout => \counter_reset[31]~94_combout\);

-- Location: LCCOMB_X27_Y19_N12
\counter_start[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[6]~44_combout\ = (counter_start(6) & (\counter_start[5]~43\ $ (GND))) # (!counter_start(6) & (!\counter_start[5]~43\ & VCC))
-- \counter_start[6]~45\ = CARRY((counter_start(6) & !\counter_start[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(6),
	datad => VCC,
	cin => \counter_start[5]~43\,
	combout => \counter_start[6]~44_combout\,
	cout => \counter_start[6]~45\);

-- Location: LCCOMB_X27_Y19_N16
\counter_start[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[8]~48_combout\ = (counter_start(8) & (\counter_start[7]~47\ $ (GND))) # (!counter_start(8) & (!\counter_start[7]~47\ & VCC))
-- \counter_start[8]~49\ = CARRY((counter_start(8) & !\counter_start[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(8),
	datad => VCC,
	cin => \counter_start[7]~47\,
	combout => \counter_start[8]~48_combout\,
	cout => \counter_start[8]~49\);

-- Location: LCCOMB_X27_Y19_N20
\counter_start[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[10]~52_combout\ = (counter_start(10) & (\counter_start[9]~51\ $ (GND))) # (!counter_start(10) & (!\counter_start[9]~51\ & VCC))
-- \counter_start[10]~53\ = CARRY((counter_start(10) & !\counter_start[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(10),
	datad => VCC,
	cin => \counter_start[9]~51\,
	combout => \counter_start[10]~52_combout\,
	cout => \counter_start[10]~53\);

-- Location: LCCOMB_X27_Y19_N30
\counter_start[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[15]~62_combout\ = (counter_start(15) & (!\counter_start[14]~61\)) # (!counter_start(15) & ((\counter_start[14]~61\) # (GND)))
-- \counter_start[15]~63\ = CARRY((!\counter_start[14]~61\) # (!counter_start(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(15),
	datad => VCC,
	cin => \counter_start[14]~61\,
	combout => \counter_start[15]~62_combout\,
	cout => \counter_start[15]~63\);

-- Location: LCCOMB_X27_Y18_N0
\counter_start[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[16]~64_combout\ = (counter_start(16) & (\counter_start[15]~63\ $ (GND))) # (!counter_start(16) & (!\counter_start[15]~63\ & VCC))
-- \counter_start[16]~65\ = CARRY((counter_start(16) & !\counter_start[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(16),
	datad => VCC,
	cin => \counter_start[15]~63\,
	combout => \counter_start[16]~64_combout\,
	cout => \counter_start[16]~65\);

-- Location: LCCOMB_X27_Y18_N2
\counter_start[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[17]~66_combout\ = (counter_start(17) & (!\counter_start[16]~65\)) # (!counter_start(17) & ((\counter_start[16]~65\) # (GND)))
-- \counter_start[17]~67\ = CARRY((!\counter_start[16]~65\) # (!counter_start(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(17),
	datad => VCC,
	cin => \counter_start[16]~65\,
	combout => \counter_start[17]~66_combout\,
	cout => \counter_start[17]~67\);

-- Location: LCCOMB_X27_Y18_N4
\counter_start[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[18]~68_combout\ = (counter_start(18) & (\counter_start[17]~67\ $ (GND))) # (!counter_start(18) & (!\counter_start[17]~67\ & VCC))
-- \counter_start[18]~69\ = CARRY((counter_start(18) & !\counter_start[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(18),
	datad => VCC,
	cin => \counter_start[17]~67\,
	combout => \counter_start[18]~68_combout\,
	cout => \counter_start[18]~69\);

-- Location: LCCOMB_X27_Y18_N6
\counter_start[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[19]~70_combout\ = (counter_start(19) & (!\counter_start[18]~69\)) # (!counter_start(19) & ((\counter_start[18]~69\) # (GND)))
-- \counter_start[19]~71\ = CARRY((!\counter_start[18]~69\) # (!counter_start(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(19),
	datad => VCC,
	cin => \counter_start[18]~69\,
	combout => \counter_start[19]~70_combout\,
	cout => \counter_start[19]~71\);

-- Location: LCCOMB_X27_Y18_N8
\counter_start[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[20]~72_combout\ = (counter_start(20) & (\counter_start[19]~71\ $ (GND))) # (!counter_start(20) & (!\counter_start[19]~71\ & VCC))
-- \counter_start[20]~73\ = CARRY((counter_start(20) & !\counter_start[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(20),
	datad => VCC,
	cin => \counter_start[19]~71\,
	combout => \counter_start[20]~72_combout\,
	cout => \counter_start[20]~73\);

-- Location: LCCOMB_X27_Y18_N10
\counter_start[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[21]~74_combout\ = (counter_start(21) & (!\counter_start[20]~73\)) # (!counter_start(21) & ((\counter_start[20]~73\) # (GND)))
-- \counter_start[21]~75\ = CARRY((!\counter_start[20]~73\) # (!counter_start(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(21),
	datad => VCC,
	cin => \counter_start[20]~73\,
	combout => \counter_start[21]~74_combout\,
	cout => \counter_start[21]~75\);

-- Location: LCCOMB_X27_Y18_N12
\counter_start[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[22]~76_combout\ = (counter_start(22) & (\counter_start[21]~75\ $ (GND))) # (!counter_start(22) & (!\counter_start[21]~75\ & VCC))
-- \counter_start[22]~77\ = CARRY((counter_start(22) & !\counter_start[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(22),
	datad => VCC,
	cin => \counter_start[21]~75\,
	combout => \counter_start[22]~76_combout\,
	cout => \counter_start[22]~77\);

-- Location: LCCOMB_X27_Y18_N14
\counter_start[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[23]~78_combout\ = (counter_start(23) & (!\counter_start[22]~77\)) # (!counter_start(23) & ((\counter_start[22]~77\) # (GND)))
-- \counter_start[23]~79\ = CARRY((!\counter_start[22]~77\) # (!counter_start(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(23),
	datad => VCC,
	cin => \counter_start[22]~77\,
	combout => \counter_start[23]~78_combout\,
	cout => \counter_start[23]~79\);

-- Location: LCCOMB_X27_Y18_N16
\counter_start[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[24]~80_combout\ = (counter_start(24) & (\counter_start[23]~79\ $ (GND))) # (!counter_start(24) & (!\counter_start[23]~79\ & VCC))
-- \counter_start[24]~81\ = CARRY((counter_start(24) & !\counter_start[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(24),
	datad => VCC,
	cin => \counter_start[23]~79\,
	combout => \counter_start[24]~80_combout\,
	cout => \counter_start[24]~81\);

-- Location: LCCOMB_X27_Y18_N18
\counter_start[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[25]~82_combout\ = (counter_start(25) & (!\counter_start[24]~81\)) # (!counter_start(25) & ((\counter_start[24]~81\) # (GND)))
-- \counter_start[25]~83\ = CARRY((!\counter_start[24]~81\) # (!counter_start(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(25),
	datad => VCC,
	cin => \counter_start[24]~81\,
	combout => \counter_start[25]~82_combout\,
	cout => \counter_start[25]~83\);

-- Location: LCCOMB_X27_Y18_N20
\counter_start[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[26]~84_combout\ = (counter_start(26) & (\counter_start[25]~83\ $ (GND))) # (!counter_start(26) & (!\counter_start[25]~83\ & VCC))
-- \counter_start[26]~85\ = CARRY((counter_start(26) & !\counter_start[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(26),
	datad => VCC,
	cin => \counter_start[25]~83\,
	combout => \counter_start[26]~84_combout\,
	cout => \counter_start[26]~85\);

-- Location: LCCOMB_X27_Y18_N22
\counter_start[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[27]~86_combout\ = (counter_start(27) & (!\counter_start[26]~85\)) # (!counter_start(27) & ((\counter_start[26]~85\) # (GND)))
-- \counter_start[27]~87\ = CARRY((!\counter_start[26]~85\) # (!counter_start(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(27),
	datad => VCC,
	cin => \counter_start[26]~85\,
	combout => \counter_start[27]~86_combout\,
	cout => \counter_start[27]~87\);

-- Location: LCCOMB_X27_Y18_N24
\counter_start[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[28]~88_combout\ = (counter_start(28) & (\counter_start[27]~87\ $ (GND))) # (!counter_start(28) & (!\counter_start[27]~87\ & VCC))
-- \counter_start[28]~89\ = CARRY((counter_start(28) & !\counter_start[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(28),
	datad => VCC,
	cin => \counter_start[27]~87\,
	combout => \counter_start[28]~88_combout\,
	cout => \counter_start[28]~89\);

-- Location: LCCOMB_X27_Y18_N26
\counter_start[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[29]~90_combout\ = (counter_start(29) & (!\counter_start[28]~89\)) # (!counter_start(29) & ((\counter_start[28]~89\) # (GND)))
-- \counter_start[29]~91\ = CARRY((!\counter_start[28]~89\) # (!counter_start(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(29),
	datad => VCC,
	cin => \counter_start[28]~89\,
	combout => \counter_start[29]~90_combout\,
	cout => \counter_start[29]~91\);

-- Location: LCCOMB_X27_Y18_N28
\counter_start[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[30]~92_combout\ = (counter_start(30) & (\counter_start[29]~91\ $ (GND))) # (!counter_start(30) & (!\counter_start[29]~91\ & VCC))
-- \counter_start[30]~93\ = CARRY((counter_start(30) & !\counter_start[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(30),
	datad => VCC,
	cin => \counter_start[29]~91\,
	combout => \counter_start[30]~92_combout\,
	cout => \counter_start[30]~93\);

-- Location: LCCOMB_X27_Y18_N30
\counter_start[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[31]~94_combout\ = \counter_start[30]~93\ $ (counter_start(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter_start(31),
	cin => \counter_start[30]~93\,
	combout => \counter_start[31]~94_combout\);

-- Location: LCCOMB_X38_Y25_N10
\counter_display[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[5]~42_combout\ = (counter_display(5) & (!\counter_display[4]~41\)) # (!counter_display(5) & ((\counter_display[4]~41\) # (GND)))
-- \counter_display[5]~43\ = CARRY((!\counter_display[4]~41\) # (!counter_display(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(5),
	datad => VCC,
	cin => \counter_display[4]~41\,
	combout => \counter_display[5]~42_combout\,
	cout => \counter_display[5]~43\);

-- Location: LCCOMB_X38_Y25_N12
\counter_display[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[6]~44_combout\ = (counter_display(6) & (\counter_display[5]~43\ $ (GND))) # (!counter_display(6) & (!\counter_display[5]~43\ & VCC))
-- \counter_display[6]~45\ = CARRY((counter_display(6) & !\counter_display[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(6),
	datad => VCC,
	cin => \counter_display[5]~43\,
	combout => \counter_display[6]~44_combout\,
	cout => \counter_display[6]~45\);

-- Location: LCCOMB_X38_Y25_N20
\counter_display[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[10]~52_combout\ = (counter_display(10) & (\counter_display[9]~51\ $ (GND))) # (!counter_display(10) & (!\counter_display[9]~51\ & VCC))
-- \counter_display[10]~53\ = CARRY((counter_display(10) & !\counter_display[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(10),
	datad => VCC,
	cin => \counter_display[9]~51\,
	combout => \counter_display[10]~52_combout\,
	cout => \counter_display[10]~53\);

-- Location: LCCOMB_X38_Y24_N6
\counter_display[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[19]~70_combout\ = (counter_display(19) & (!\counter_display[18]~69\)) # (!counter_display(19) & ((\counter_display[18]~69\) # (GND)))
-- \counter_display[19]~71\ = CARRY((!\counter_display[18]~69\) # (!counter_display(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(19),
	datad => VCC,
	cin => \counter_display[18]~69\,
	combout => \counter_display[19]~70_combout\,
	cout => \counter_display[19]~71\);

-- Location: LCCOMB_X38_Y24_N28
\counter_display[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[30]~92_combout\ = (counter_display(30) & (\counter_display[29]~91\ $ (GND))) # (!counter_display(30) & (!\counter_display[29]~91\ & VCC))
-- \counter_display[30]~93\ = CARRY((counter_display(30) & !\counter_display[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(30),
	datad => VCC,
	cin => \counter_display[29]~91\,
	combout => \counter_display[30]~92_combout\,
	cout => \counter_display[30]~93\);

-- Location: LCCOMB_X38_Y24_N30
\counter_display[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[31]~94_combout\ = \counter_display[30]~93\ $ (counter_display(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter_display(31),
	cin => \counter_display[30]~93\,
	combout => \counter_display[31]~94_combout\);

-- Location: LCFF_X6_Y16_N21
\counter_50M[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~20_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(10));

-- Location: LCFF_X5_Y16_N11
\counter_50M[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~2_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(8));

-- Location: LCCOMB_X5_Y16_N24
\Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ((counter_50M(9)) # ((counter_50M(11)) # (counter_50M(10)))) # (!counter_50M(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(8),
	datab => counter_50M(9),
	datac => counter_50M(11),
	datad => counter_50M(10),
	combout => \Equal3~2_combout\);

-- Location: LCFF_X5_Y16_N21
\counter_50M[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~4_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(15));

-- Location: LCFF_X5_Y15_N21
\counter_50M[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~7_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(18));

-- Location: LCFF_X6_Y15_N13
\counter_50M[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~44_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(22));

-- Location: LCFF_X6_Y15_N17
\counter_50M[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~48_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(24));

-- Location: LCFF_X6_Y15_N21
\counter_50M[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~52_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(26));

-- Location: LCCOMB_X5_Y15_N10
\Equal3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (counter_50M(24)) # ((counter_50M(25)) # ((counter_50M(26)) # (counter_50M(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(24),
	datab => counter_50M(25),
	datac => counter_50M(26),
	datad => counter_50M(27),
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X5_Y16_N4
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = msecond_counter_low(2) $ (((msecond_counter_low(1) & msecond_counter_low(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => msecond_counter_low(1),
	datac => msecond_counter_low(0),
	datad => msecond_counter_low(2),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X5_Y16_N26
\Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = msecond_counter_low(3) $ (((msecond_counter_low(2) & (msecond_counter_low(1) & msecond_counter_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_low(3),
	datab => msecond_counter_low(2),
	datac => msecond_counter_low(1),
	datad => msecond_counter_low(0),
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X4_Y16_N10
\msecond_counter_high[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high[1]~0_combout\ = ((\Equal5~0_combout\ & \Equal4~0_combout\)) # (!\start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~regout\,
	datac => \Equal5~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \msecond_counter_high[1]~0_combout\);

-- Location: LCCOMB_X5_Y16_N16
\msecond_counter_high[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high[3]~2_combout\ = (\start~regout\ & !\Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~regout\,
	datad => \Equal4~0_combout\,
	combout => \msecond_counter_high[3]~2_combout\);

-- Location: LCCOMB_X4_Y16_N16
\Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = msecond_counter_high(2) $ (((msecond_counter_high(1) & msecond_counter_high(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => msecond_counter_high(1),
	datac => msecond_counter_high(2),
	datad => msecond_counter_high(0),
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X4_Y16_N18
\Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = msecond_counter_high(3) $ (((msecond_counter_high(1) & (msecond_counter_high(2) & msecond_counter_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_high(3),
	datab => msecond_counter_high(1),
	datac => msecond_counter_high(2),
	datad => msecond_counter_high(0),
	combout => \Add5~1_combout\);

-- Location: LCCOMB_X5_Y12_N2
\second_counter_low[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low[0]~0_combout\ = ((\Equal5~0_combout\ & \Equal6~0_combout\)) # (!\start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~regout\,
	datac => \Equal5~0_combout\,
	datad => \Equal6~0_combout\,
	combout => \second_counter_low[0]~0_combout\);

-- Location: LCCOMB_X5_Y12_N20
\second_counter_low[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low[3]~2_combout\ = (\start~regout\ & !\Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~regout\,
	datad => \Equal5~0_combout\,
	combout => \second_counter_low[3]~2_combout\);

-- Location: LCCOMB_X6_Y12_N10
\Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = second_counter_low(2) $ (((second_counter_low(0) & second_counter_low(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_low(0),
	datab => second_counter_low(1),
	datad => second_counter_low(2),
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X10_Y12_N6
\Add6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = second_counter_low(3) $ (((second_counter_low(1) & (second_counter_low(2) & second_counter_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_low(3),
	datab => second_counter_low(1),
	datac => second_counter_low(2),
	datad => second_counter_low(0),
	combout => \Add6~1_combout\);

-- Location: LCCOMB_X5_Y12_N12
\second_counter_high[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high[0]~0_combout\ = ((\Equal7~0_combout\ & \Equal6~0_combout\)) # (!\start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \start~regout\,
	datad => \Equal6~0_combout\,
	combout => \second_counter_high[0]~0_combout\);

-- Location: LCCOMB_X5_Y12_N10
\second_counter_high[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high[3]~2_combout\ = (\start~regout\ & !\Equal6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~regout\,
	datad => \Equal6~0_combout\,
	combout => \second_counter_high[3]~2_combout\);

-- Location: LCCOMB_X6_Y12_N22
\Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = second_counter_high(2) $ (((second_counter_high(1) & second_counter_high(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_high(1),
	datab => second_counter_high(0),
	datad => second_counter_high(2),
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X6_Y12_N18
\Add7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = second_counter_high(3) $ (((second_counter_high(0) & (second_counter_high(1) & second_counter_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_high(3),
	datab => second_counter_high(0),
	datac => second_counter_high(1),
	datad => second_counter_high(2),
	combout => \Add7~1_combout\);

-- Location: LCCOMB_X4_Y14_N6
\minute_counter_low[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low[0]~0_combout\ = ((\Equal8~0_combout\ & \Equal7~0_combout\)) # (!\start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~regout\,
	datac => \Equal8~0_combout\,
	datad => \Equal7~0_combout\,
	combout => \minute_counter_low[0]~0_combout\);

-- Location: LCCOMB_X4_Y14_N2
\Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = minute_counter_low(2) $ (((minute_counter_low(1) & minute_counter_low(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => minute_counter_low(1),
	datac => minute_counter_low(2),
	datad => minute_counter_low(0),
	combout => \Add8~0_combout\);

-- Location: LCCOMB_X4_Y14_N20
\Add8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~1_combout\ = minute_counter_low(3) $ (((minute_counter_low(1) & (minute_counter_low(2) & minute_counter_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_low(1),
	datab => minute_counter_low(3),
	datac => minute_counter_low(2),
	datad => minute_counter_low(0),
	combout => \Add8~1_combout\);

-- Location: LCCOMB_X6_Y14_N6
\Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = minute_counter_high(2) $ (((minute_counter_high(1) & minute_counter_high(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => minute_counter_high(1),
	datac => minute_counter_high(2),
	datad => minute_counter_high(0),
	combout => \Add9~0_combout\);

-- Location: LCCOMB_X6_Y14_N20
\Add9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~1_combout\ = minute_counter_high(3) $ (((minute_counter_high(0) & (minute_counter_high(2) & minute_counter_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_high(0),
	datab => minute_counter_high(3),
	datac => minute_counter_high(2),
	datad => minute_counter_high(1),
	combout => \Add9~1_combout\);

-- Location: LCCOMB_X5_Y17_N6
\hour_counter_low[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low[1]~0_combout\ = ((\Equal10~0_combout\ & \Equal9~0_combout\)) # (!\start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~regout\,
	datac => \Equal10~0_combout\,
	datad => \Equal9~0_combout\,
	combout => \hour_counter_low[1]~0_combout\);

-- Location: LCCOMB_X5_Y17_N10
\Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = hour_counter_low(2) $ (((hour_counter_low(1) & hour_counter_low(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_low(2),
	datac => hour_counter_low(1),
	datad => hour_counter_low(0),
	combout => \Add10~0_combout\);

-- Location: LCCOMB_X5_Y17_N20
\Add10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add10~1_combout\ = hour_counter_low(3) $ (((hour_counter_low(2) & (hour_counter_low(1) & hour_counter_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_low(2),
	datab => hour_counter_low(3),
	datac => hour_counter_low(1),
	datad => hour_counter_low(0),
	combout => \Add10~1_combout\);

-- Location: LCCOMB_X34_Y14_N12
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter_reset(2) & (!counter_reset(0) & (!counter_reset(1) & !counter_reset(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(2),
	datab => counter_reset(0),
	datac => counter_reset(1),
	datad => counter_reset(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X34_Y13_N0
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (counter_reset(17) & (counter_reset(16) & (counter_reset(19) & counter_reset(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(17),
	datab => counter_reset(16),
	datac => counter_reset(19),
	datad => counter_reset(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X34_Y13_N6
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!counter_reset(22) & (!counter_reset(23) & (!counter_reset(20) & !counter_reset(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(22),
	datab => counter_reset(23),
	datac => counter_reset(20),
	datad => counter_reset(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X34_Y13_N20
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!counter_reset(24) & (!counter_reset(27) & (!counter_reset(26) & !counter_reset(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(24),
	datab => counter_reset(27),
	datac => counter_reset(26),
	datad => counter_reset(25),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X34_Y13_N18
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!counter_reset(29) & (!counter_reset(31) & (!counter_reset(30) & !counter_reset(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(29),
	datab => counter_reset(31),
	datac => counter_reset(30),
	datad => counter_reset(28),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X34_Y13_N24
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\ & (\Equal0~5_combout\ & (\Equal0~7_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X28_Y19_N24
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!counter_start(8) & (!counter_start(11) & (!counter_start(10) & counter_start(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(8),
	datab => counter_start(11),
	datac => counter_start(10),
	datad => counter_start(9),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X28_Y18_N18
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (counter_start(16) & (counter_start(19) & (counter_start(18) & counter_start(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(16),
	datab => counter_start(19),
	datac => counter_start(18),
	datad => counter_start(17),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X28_Y18_N20
\Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!counter_start(22) & (!counter_start(21) & (!counter_start(23) & !counter_start(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(22),
	datab => counter_start(21),
	datac => counter_start(23),
	datad => counter_start(20),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X28_Y18_N6
\Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!counter_start(25) & (!counter_start(24) & (!counter_start(26) & !counter_start(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(25),
	datab => counter_start(24),
	datac => counter_start(26),
	datad => counter_start(27),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X28_Y18_N8
\Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!counter_start(30) & (!counter_start(29) & (!counter_start(31) & !counter_start(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(30),
	datab => counter_start(29),
	datac => counter_start(31),
	datad => counter_start(28),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X28_Y18_N10
\Equal1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~6_combout\ & (\Equal1~5_combout\ & (\Equal1~8_combout\ & \Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \Equal1~5_combout\,
	datac => \Equal1~8_combout\,
	datad => \Equal1~7_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X37_Y25_N20
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!counter_display(4) & (counter_display(6) & (!counter_display(5) & !counter_display(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(4),
	datab => counter_display(6),
	datac => counter_display(5),
	datad => counter_display(7),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X37_Y24_N12
\Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (counter_display(18) & (counter_display(19) & (counter_display(16) & counter_display(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(18),
	datab => counter_display(19),
	datac => counter_display(16),
	datad => counter_display(17),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X5_Y16_N10
\counter_50M~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~2_combout\ = (\Add3~16_combout\ & ((\Equal3~9_combout\) # (\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datac => \Equal3~9_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter_50M~2_combout\);

-- Location: LCCOMB_X5_Y16_N20
\counter_50M~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~4_combout\ = (\Add3~30_combout\ & ((\Equal3~4_combout\) # (\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~4_combout\,
	datac => \Equal3~9_combout\,
	datad => \Add3~30_combout\,
	combout => \counter_50M~4_combout\);

-- Location: LCCOMB_X5_Y15_N20
\counter_50M~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~7_combout\ = (\Add3~36_combout\ & ((\Equal3~9_combout\) # (\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datac => \Add3~36_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter_50M~7_combout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_start~I\ : cycloneii_io
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
	padio => ww_key_start,
	combout => \key_start~combout\);

-- Location: LCCOMB_X28_Y18_N28
\start_time[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_time[0]~0_combout\ = !\key_start~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_start~combout\,
	combout => \start_time[0]~0_combout\);

-- Location: LCFF_X28_Y18_N29
\start_time[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \start_time[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => start_time(0));

-- Location: LCCOMB_X27_Y19_N0
\counter_start[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[0]~32_combout\ = counter_start(0) $ (VCC)
-- \counter_start[0]~33\ = CARRY(counter_start(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_start(0),
	datad => VCC,
	combout => \counter_start[0]~32_combout\,
	cout => \counter_start[0]~33\);

-- Location: LCFF_X28_Y18_N15
\start_time[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => start_time(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => start_time(1));

-- Location: LCCOMB_X28_Y18_N14
start_xor : cycloneii_lcell_comb
-- Equation(s):
-- \start_xor~combout\ = start_time(1) $ (start_time(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => start_time(1),
	datad => start_time(0),
	combout => \start_xor~combout\);

-- Location: LCFF_X27_Y19_N1
\counter_start[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[0]~32_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(0));

-- Location: LCCOMB_X27_Y19_N2
\counter_start[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[1]~34_combout\ = (counter_start(1) & (!\counter_start[0]~33\)) # (!counter_start(1) & ((\counter_start[0]~33\) # (GND)))
-- \counter_start[1]~35\ = CARRY((!\counter_start[0]~33\) # (!counter_start(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(1),
	datad => VCC,
	cin => \counter_start[0]~33\,
	combout => \counter_start[1]~34_combout\,
	cout => \counter_start[1]~35\);

-- Location: LCFF_X27_Y19_N3
\counter_start[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[1]~34_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(1));

-- Location: LCCOMB_X27_Y19_N4
\counter_start[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[2]~36_combout\ = (counter_start(2) & (\counter_start[1]~35\ $ (GND))) # (!counter_start(2) & (!\counter_start[1]~35\ & VCC))
-- \counter_start[2]~37\ = CARRY((counter_start(2) & !\counter_start[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(2),
	datad => VCC,
	cin => \counter_start[1]~35\,
	combout => \counter_start[2]~36_combout\,
	cout => \counter_start[2]~37\);

-- Location: LCFF_X27_Y19_N5
\counter_start[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[2]~36_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(2));

-- Location: LCCOMB_X27_Y19_N6
\counter_start[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[3]~38_combout\ = (counter_start(3) & (!\counter_start[2]~37\)) # (!counter_start(3) & ((\counter_start[2]~37\) # (GND)))
-- \counter_start[3]~39\ = CARRY((!\counter_start[2]~37\) # (!counter_start(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(3),
	datad => VCC,
	cin => \counter_start[2]~37\,
	combout => \counter_start[3]~38_combout\,
	cout => \counter_start[3]~39\);

-- Location: LCCOMB_X27_Y19_N8
\counter_start[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[4]~40_combout\ = (counter_start(4) & (\counter_start[3]~39\ $ (GND))) # (!counter_start(4) & (!\counter_start[3]~39\ & VCC))
-- \counter_start[4]~41\ = CARRY((counter_start(4) & !\counter_start[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(4),
	datad => VCC,
	cin => \counter_start[3]~39\,
	combout => \counter_start[4]~40_combout\,
	cout => \counter_start[4]~41\);

-- Location: LCFF_X27_Y19_N9
\counter_start[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[4]~40_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(4));

-- Location: LCCOMB_X27_Y19_N10
\counter_start[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[5]~42_combout\ = (counter_start(5) & (!\counter_start[4]~41\)) # (!counter_start(5) & ((\counter_start[4]~41\) # (GND)))
-- \counter_start[5]~43\ = CARRY((!\counter_start[4]~41\) # (!counter_start(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(5),
	datad => VCC,
	cin => \counter_start[4]~41\,
	combout => \counter_start[5]~42_combout\,
	cout => \counter_start[5]~43\);

-- Location: LCFF_X27_Y19_N11
\counter_start[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[5]~42_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(5));

-- Location: LCCOMB_X27_Y19_N14
\counter_start[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[7]~46_combout\ = (counter_start(7) & (!\counter_start[6]~45\)) # (!counter_start(7) & ((\counter_start[6]~45\) # (GND)))
-- \counter_start[7]~47\ = CARRY((!\counter_start[6]~45\) # (!counter_start(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(7),
	datad => VCC,
	cin => \counter_start[6]~45\,
	combout => \counter_start[7]~46_combout\,
	cout => \counter_start[7]~47\);

-- Location: LCFF_X27_Y19_N15
\counter_start[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[7]~46_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(7));

-- Location: LCCOMB_X28_Y19_N18
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (counter_start(6) & (!counter_start(5) & (!counter_start(4) & !counter_start(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(6),
	datab => counter_start(5),
	datac => counter_start(4),
	datad => counter_start(7),
	combout => \Equal1~1_combout\);

-- Location: LCFF_X27_Y19_N7
\counter_start[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[3]~38_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(3));

-- Location: LCCOMB_X28_Y19_N20
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!counter_start(0) & (!counter_start(2) & (!counter_start(3) & !counter_start(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(0),
	datab => counter_start(2),
	datac => counter_start(3),
	datad => counter_start(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X27_Y19_N18
\counter_start[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[9]~50_combout\ = (counter_start(9) & (!\counter_start[8]~49\)) # (!counter_start(9) & ((\counter_start[8]~49\) # (GND)))
-- \counter_start[9]~51\ = CARRY((!\counter_start[8]~49\) # (!counter_start(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(9),
	datad => VCC,
	cin => \counter_start[8]~49\,
	combout => \counter_start[9]~50_combout\,
	cout => \counter_start[9]~51\);

-- Location: LCFF_X27_Y19_N19
\counter_start[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[9]~50_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(9));

-- Location: LCCOMB_X27_Y19_N22
\counter_start[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[11]~54_combout\ = (counter_start(11) & (!\counter_start[10]~53\)) # (!counter_start(11) & ((\counter_start[10]~53\) # (GND)))
-- \counter_start[11]~55\ = CARRY((!\counter_start[10]~53\) # (!counter_start(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(11),
	datad => VCC,
	cin => \counter_start[10]~53\,
	combout => \counter_start[11]~54_combout\,
	cout => \counter_start[11]~55\);

-- Location: LCFF_X27_Y19_N23
\counter_start[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[11]~54_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(11));

-- Location: LCCOMB_X27_Y19_N24
\counter_start[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[12]~56_combout\ = (counter_start(12) & (\counter_start[11]~55\ $ (GND))) # (!counter_start(12) & (!\counter_start[11]~55\ & VCC))
-- \counter_start[12]~57\ = CARRY((counter_start(12) & !\counter_start[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(12),
	datad => VCC,
	cin => \counter_start[11]~55\,
	combout => \counter_start[12]~56_combout\,
	cout => \counter_start[12]~57\);

-- Location: LCCOMB_X27_Y19_N26
\counter_start[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[13]~58_combout\ = (counter_start(13) & (!\counter_start[12]~57\)) # (!counter_start(13) & ((\counter_start[12]~57\) # (GND)))
-- \counter_start[13]~59\ = CARRY((!\counter_start[12]~57\) # (!counter_start(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(13),
	datad => VCC,
	cin => \counter_start[12]~57\,
	combout => \counter_start[13]~58_combout\,
	cout => \counter_start[13]~59\);

-- Location: LCFF_X27_Y19_N27
\counter_start[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[13]~58_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(13));

-- Location: LCCOMB_X27_Y19_N28
\counter_start[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_start[14]~60_combout\ = (counter_start(14) & (\counter_start[13]~59\ $ (GND))) # (!counter_start(14) & (!\counter_start[13]~59\ & VCC))
-- \counter_start[14]~61\ = CARRY((counter_start(14) & !\counter_start[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_start(14),
	datad => VCC,
	cin => \counter_start[13]~59\,
	combout => \counter_start[14]~60_combout\,
	cout => \counter_start[14]~61\);

-- Location: LCFF_X27_Y19_N29
\counter_start[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[14]~60_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(14));

-- Location: LCFF_X27_Y19_N31
\counter_start[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[15]~62_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(15));

-- Location: LCFF_X27_Y19_N25
\counter_start[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_start[12]~56_combout\,
	sclr => \start_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_start(12));

-- Location: LCCOMB_X28_Y19_N2
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (counter_start(14) & (!counter_start(13) & (!counter_start(15) & !counter_start(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_start(14),
	datab => counter_start(13),
	datac => counter_start(15),
	datad => counter_start(12),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X28_Y19_N8
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~2_combout\ & (\Equal1~1_combout\ & (\Equal1~0_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X28_Y18_N12
\start_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_out~0_combout\ = (\Equal1~9_combout\ & ((\Equal1~4_combout\ & (start_time(0))) # (!\Equal1~4_combout\ & ((\start_out~regout\))))) # (!\Equal1~9_combout\ & (((\start_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => start_time(0),
	datac => \start_out~regout\,
	datad => \Equal1~4_combout\,
	combout => \start_out~0_combout\);

-- Location: LCFF_X28_Y18_N13
start_out : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \start_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start_out~regout\);

-- Location: LCFF_X5_Y14_N27
start_flag : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \start_out~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start_flag~regout\);

-- Location: LCCOMB_X5_Y14_N8
\start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \start~0_combout\ = (\start~regout\ & (\always0~0_combout\ & ((\start_flag~regout\) # (!\start_out~regout\)))) # (!\start~regout\ & (((!\start_flag~regout\ & \start_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \start_flag~regout\,
	datac => \start~regout\,
	datad => \start_out~regout\,
	combout => \start~0_combout\);

-- Location: LCFF_X5_Y14_N9
start : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start~regout\);

-- Location: LCCOMB_X6_Y16_N14
\Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (counter_50M(7) & (!\Add3~13\)) # (!counter_50M(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!counter_50M(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X6_Y16_N18
\Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (counter_50M(9) & (!\Add3~17\)) # (!counter_50M(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!counter_50M(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCFF_X6_Y16_N19
\counter_50M[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~18_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(9));

-- Location: LCCOMB_X6_Y16_N22
\Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (counter_50M(11) & (!\Add3~21\)) # (!counter_50M(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!counter_50M(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCFF_X6_Y16_N23
\counter_50M[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~22_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(11));

-- Location: LCCOMB_X6_Y16_N24
\Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (counter_50M(12) & (\Add3~23\ $ (GND))) # (!counter_50M(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((counter_50M(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X6_Y16_N26
\Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (counter_50M(13) & (!\Add3~25\)) # (!counter_50M(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!counter_50M(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X6_Y16_N28
\Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (counter_50M(14) & (\Add3~27\ $ (GND))) # (!counter_50M(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((counter_50M(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCFF_X6_Y16_N29
\counter_50M[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~28_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(14));

-- Location: LCCOMB_X6_Y15_N0
\Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (counter_50M(16) & (\Add3~31\ $ (GND))) # (!counter_50M(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((counter_50M(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X6_Y15_N2
\Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (counter_50M(17) & (!\Add3~33\)) # (!counter_50M(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!counter_50M(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X5_Y15_N30
\counter_50M~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~6_combout\ = (\Add3~34_combout\ & ((\Equal3~9_combout\) # (\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datac => \Equal3~4_combout\,
	datad => \Add3~34_combout\,
	combout => \counter_50M~6_combout\);

-- Location: LCFF_X5_Y15_N31
\counter_50M[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~6_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(17));

-- Location: LCCOMB_X5_Y15_N8
\counter_50M~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~5_combout\ = (\Add3~32_combout\ & ((\Equal3~4_combout\) # (\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~4_combout\,
	datac => \Add3~32_combout\,
	datad => \Equal3~9_combout\,
	combout => \counter_50M~5_combout\);

-- Location: LCFF_X5_Y15_N9
\counter_50M[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~5_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(16));

-- Location: LCCOMB_X6_Y15_N6
\Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (counter_50M(19) & (!\Add3~37\)) # (!counter_50M(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!counter_50M(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCFF_X6_Y15_N7
\counter_50M[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~38_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(19));

-- Location: LCCOMB_X5_Y15_N22
\Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (((counter_50M(19)) # (!counter_50M(16))) # (!counter_50M(17))) # (!counter_50M(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(18),
	datab => counter_50M(17),
	datac => counter_50M(16),
	datad => counter_50M(19),
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X6_Y15_N8
\Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (counter_50M(20) & (\Add3~39\ $ (GND))) # (!counter_50M(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((counter_50M(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCFF_X6_Y15_N9
\counter_50M[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~40_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(20));

-- Location: LCCOMB_X6_Y15_N10
\Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (counter_50M(21) & (!\Add3~41\)) # (!counter_50M(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!counter_50M(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X6_Y15_N14
\Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (counter_50M(23) & (!\Add3~45\)) # (!counter_50M(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!counter_50M(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCFF_X6_Y15_N15
\counter_50M[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~46_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(23));

-- Location: LCCOMB_X6_Y15_N18
\Add3~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (counter_50M(25) & (!\Add3~49\)) # (!counter_50M(25) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!counter_50M(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCFF_X6_Y15_N19
\counter_50M[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~50_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(25));

-- Location: LCCOMB_X6_Y15_N22
\Add3~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (counter_50M(27) & (!\Add3~53\)) # (!counter_50M(27) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!counter_50M(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCFF_X6_Y15_N23
\counter_50M[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~54_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(27));

-- Location: LCCOMB_X6_Y15_N24
\Add3~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (counter_50M(28) & (\Add3~55\ $ (GND))) # (!counter_50M(28) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((counter_50M(28) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X6_Y15_N26
\Add3~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (counter_50M(29) & (!\Add3~57\)) # (!counter_50M(29) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!counter_50M(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCFF_X6_Y15_N27
\counter_50M[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~58_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(29));

-- Location: LCCOMB_X6_Y15_N28
\Add3~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (counter_50M(30) & (\Add3~59\ $ (GND))) # (!counter_50M(30) & (!\Add3~59\ & VCC))
-- \Add3~61\ = CARRY((counter_50M(30) & !\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(30),
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: LCFF_X6_Y15_N29
\counter_50M[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~60_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(30));

-- Location: LCCOMB_X6_Y15_N30
\Add3~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = \Add3~61\ $ (counter_50M(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter_50M(31),
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: LCFF_X6_Y15_N31
\counter_50M[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~62_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(31));

-- Location: LCFF_X6_Y15_N25
\counter_50M[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~56_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(28));

-- Location: LCCOMB_X5_Y15_N24
\Equal3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (counter_50M(29)) # ((counter_50M(31)) # ((counter_50M(30)) # (counter_50M(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(29),
	datab => counter_50M(31),
	datac => counter_50M(30),
	datad => counter_50M(28),
	combout => \Equal3~8_combout\);

-- Location: LCFF_X6_Y15_N11
\counter_50M[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~42_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(21));

-- Location: LCCOMB_X5_Y15_N12
\Equal3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (counter_50M(22)) # ((counter_50M(23)) # ((counter_50M(21)) # (counter_50M(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(22),
	datab => counter_50M(23),
	datac => counter_50M(21),
	datad => counter_50M(20),
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X5_Y15_N6
\Equal3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (\Equal3~7_combout\) # ((\Equal3~5_combout\) # ((\Equal3~8_combout\) # (\Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~7_combout\,
	datab => \Equal3~5_combout\,
	datac => \Equal3~8_combout\,
	datad => \Equal3~6_combout\,
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X6_Y16_N0
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = counter_50M(0) $ (VCC)
-- \Add3~1\ = CARRY(counter_50M(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X5_Y16_N30
\counter_50M~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~0_combout\ = (\Add3~0_combout\ & ((\Equal3~4_combout\) # (\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~4_combout\,
	datac => \Equal3~9_combout\,
	datad => \Add3~0_combout\,
	combout => \counter_50M~0_combout\);

-- Location: LCFF_X6_Y16_N1
\counter_50M[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \counter_50M~0_combout\,
	sload => VCC,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(0));

-- Location: LCCOMB_X6_Y16_N2
\Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (counter_50M(1) & (!\Add3~1\)) # (!counter_50M(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!counter_50M(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCFF_X6_Y16_N3
\counter_50M[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~2_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(1));

-- Location: LCCOMB_X6_Y16_N4
\Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (counter_50M(2) & (\Add3~3\ $ (GND))) # (!counter_50M(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((counter_50M(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCFF_X6_Y16_N5
\counter_50M[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~4_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(2));

-- Location: LCCOMB_X6_Y16_N6
\Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (counter_50M(3) & (!\Add3~5\)) # (!counter_50M(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!counter_50M(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X6_Y16_N8
\Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (counter_50M(4) & (\Add3~7\ $ (GND))) # (!counter_50M(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((counter_50M(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCFF_X6_Y16_N9
\counter_50M[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~8_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(4));

-- Location: LCCOMB_X6_Y16_N10
\Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (counter_50M(5) & (!\Add3~9\)) # (!counter_50M(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!counter_50M(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_50M(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X5_Y16_N6
\counter_50M~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~1_combout\ = (\Add3~10_combout\ & ((\Equal3~9_combout\) # (\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~10_combout\,
	datac => \Equal3~9_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter_50M~1_combout\);

-- Location: LCFF_X5_Y16_N7
\counter_50M[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~1_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(5));

-- Location: LCCOMB_X6_Y16_N12
\Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (counter_50M(6) & (\Add3~11\ $ (GND))) # (!counter_50M(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((counter_50M(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCFF_X6_Y16_N15
\counter_50M[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~14_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(7));

-- Location: LCFF_X6_Y16_N13
\counter_50M[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~12_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(6));

-- Location: LCCOMB_X5_Y16_N28
\Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ((counter_50M(7)) # ((counter_50M(4)) # (counter_50M(6)))) # (!counter_50M(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(5),
	datab => counter_50M(7),
	datac => counter_50M(4),
	datad => counter_50M(6),
	combout => \Equal3~1_combout\);

-- Location: LCFF_X6_Y16_N7
\counter_50M[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~6_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(3));

-- Location: LCCOMB_X5_Y16_N8
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (counter_50M(2)) # ((counter_50M(0)) # ((counter_50M(1)) # (counter_50M(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(2),
	datab => counter_50M(0),
	datac => counter_50M(1),
	datad => counter_50M(3),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X5_Y16_N14
\counter_50M~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_50M~3_combout\ = (\Add3~26_combout\ & ((\Equal3~9_combout\) # (\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datac => \Add3~26_combout\,
	datad => \Equal3~4_combout\,
	combout => \counter_50M~3_combout\);

-- Location: LCFF_X5_Y16_N15
\counter_50M[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_50M~3_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(13));

-- Location: LCFF_X6_Y16_N25
\counter_50M[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add3~24_combout\,
	ena => \start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_50M(12));

-- Location: LCCOMB_X5_Y16_N22
\Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = ((counter_50M(14)) # ((counter_50M(12)) # (!counter_50M(13)))) # (!counter_50M(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_50M(15),
	datab => counter_50M(14),
	datac => counter_50M(13),
	datad => counter_50M(12),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X5_Y16_N0
\Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~2_combout\) # ((\Equal3~1_combout\) # ((\Equal3~0_combout\) # (\Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \Equal3~1_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal3~3_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X4_Y16_N4
\msecond_counter_low[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low[0]~0_combout\ = (\start~regout\ & (!\Equal3~4_combout\ & !\Equal3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~regout\,
	datac => \Equal3~4_combout\,
	datad => \Equal3~9_combout\,
	combout => \msecond_counter_low[0]~0_combout\);

-- Location: LCCOMB_X4_Y16_N24
\msecond_counter_low~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~4_combout\ = (\Add4~0_combout\ & (\Equal4~0_combout\ & \msecond_counter_low[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \msecond_counter_low[0]~0_combout\,
	combout => \msecond_counter_low~4_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_reset~I\ : cycloneii_io
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
	padio => ww_key_reset,
	combout => \key_reset~combout\);

-- Location: LCCOMB_X34_Y14_N6
\reset_time[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_time[0]~0_combout\ = !\key_reset~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_reset~combout\,
	combout => \reset_time[0]~0_combout\);

-- Location: LCFF_X34_Y14_N7
\reset_time[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reset_time[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_time(0));

-- Location: LCCOMB_X35_Y14_N0
\counter_reset[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[0]~32_combout\ = counter_reset(0) $ (VCC)
-- \counter_reset[0]~33\ = CARRY(counter_reset(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(0),
	datad => VCC,
	combout => \counter_reset[0]~32_combout\,
	cout => \counter_reset[0]~33\);

-- Location: LCFF_X34_Y14_N17
\reset_time[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => reset_time(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reset_time(1));

-- Location: LCCOMB_X34_Y14_N16
reset_xor : cycloneii_lcell_comb
-- Equation(s):
-- \reset_xor~combout\ = reset_time(1) $ (reset_time(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reset_time(1),
	datad => reset_time(0),
	combout => \reset_xor~combout\);

-- Location: LCFF_X35_Y14_N1
\counter_reset[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[0]~32_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(0));

-- Location: LCCOMB_X35_Y14_N2
\counter_reset[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[1]~34_combout\ = (counter_reset(1) & (!\counter_reset[0]~33\)) # (!counter_reset(1) & ((\counter_reset[0]~33\) # (GND)))
-- \counter_reset[1]~35\ = CARRY((!\counter_reset[0]~33\) # (!counter_reset(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(1),
	datad => VCC,
	cin => \counter_reset[0]~33\,
	combout => \counter_reset[1]~34_combout\,
	cout => \counter_reset[1]~35\);

-- Location: LCFF_X35_Y14_N3
\counter_reset[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[1]~34_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(1));

-- Location: LCCOMB_X35_Y14_N4
\counter_reset[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[2]~36_combout\ = (counter_reset(2) & (\counter_reset[1]~35\ $ (GND))) # (!counter_reset(2) & (!\counter_reset[1]~35\ & VCC))
-- \counter_reset[2]~37\ = CARRY((counter_reset(2) & !\counter_reset[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(2),
	datad => VCC,
	cin => \counter_reset[1]~35\,
	combout => \counter_reset[2]~36_combout\,
	cout => \counter_reset[2]~37\);

-- Location: LCFF_X35_Y14_N5
\counter_reset[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[2]~36_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(2));

-- Location: LCCOMB_X35_Y14_N8
\counter_reset[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[4]~40_combout\ = (counter_reset(4) & (\counter_reset[3]~39\ $ (GND))) # (!counter_reset(4) & (!\counter_reset[3]~39\ & VCC))
-- \counter_reset[4]~41\ = CARRY((counter_reset(4) & !\counter_reset[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(4),
	datad => VCC,
	cin => \counter_reset[3]~39\,
	combout => \counter_reset[4]~40_combout\,
	cout => \counter_reset[4]~41\);

-- Location: LCFF_X35_Y14_N9
\counter_reset[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[4]~40_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(4));

-- Location: LCCOMB_X35_Y14_N12
\counter_reset[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[6]~44_combout\ = (counter_reset(6) & (\counter_reset[5]~43\ $ (GND))) # (!counter_reset(6) & (!\counter_reset[5]~43\ & VCC))
-- \counter_reset[6]~45\ = CARRY((counter_reset(6) & !\counter_reset[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(6),
	datad => VCC,
	cin => \counter_reset[5]~43\,
	combout => \counter_reset[6]~44_combout\,
	cout => \counter_reset[6]~45\);

-- Location: LCCOMB_X35_Y14_N14
\counter_reset[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[7]~46_combout\ = (counter_reset(7) & (!\counter_reset[6]~45\)) # (!counter_reset(7) & ((\counter_reset[6]~45\) # (GND)))
-- \counter_reset[7]~47\ = CARRY((!\counter_reset[6]~45\) # (!counter_reset(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(7),
	datad => VCC,
	cin => \counter_reset[6]~45\,
	combout => \counter_reset[7]~46_combout\,
	cout => \counter_reset[7]~47\);

-- Location: LCFF_X35_Y14_N15
\counter_reset[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[7]~46_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(7));

-- Location: LCFF_X35_Y14_N13
\counter_reset[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[6]~44_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(6));

-- Location: LCCOMB_X34_Y14_N30
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!counter_reset(5) & (!counter_reset(7) & (!counter_reset(4) & counter_reset(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(5),
	datab => counter_reset(7),
	datac => counter_reset(4),
	datad => counter_reset(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X35_Y14_N18
\counter_reset[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[9]~50_combout\ = (counter_reset(9) & (!\counter_reset[8]~49\)) # (!counter_reset(9) & ((\counter_reset[8]~49\) # (GND)))
-- \counter_reset[9]~51\ = CARRY((!\counter_reset[8]~49\) # (!counter_reset(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(9),
	datad => VCC,
	cin => \counter_reset[8]~49\,
	combout => \counter_reset[9]~50_combout\,
	cout => \counter_reset[9]~51\);

-- Location: LCFF_X35_Y14_N19
\counter_reset[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[9]~50_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(9));

-- Location: LCCOMB_X35_Y14_N20
\counter_reset[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[10]~52_combout\ = (counter_reset(10) & (\counter_reset[9]~51\ $ (GND))) # (!counter_reset(10) & (!\counter_reset[9]~51\ & VCC))
-- \counter_reset[10]~53\ = CARRY((counter_reset(10) & !\counter_reset[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(10),
	datad => VCC,
	cin => \counter_reset[9]~51\,
	combout => \counter_reset[10]~52_combout\,
	cout => \counter_reset[10]~53\);

-- Location: LCCOMB_X35_Y14_N22
\counter_reset[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[11]~54_combout\ = (counter_reset(11) & (!\counter_reset[10]~53\)) # (!counter_reset(11) & ((\counter_reset[10]~53\) # (GND)))
-- \counter_reset[11]~55\ = CARRY((!\counter_reset[10]~53\) # (!counter_reset(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(11),
	datad => VCC,
	cin => \counter_reset[10]~53\,
	combout => \counter_reset[11]~54_combout\,
	cout => \counter_reset[11]~55\);

-- Location: LCFF_X35_Y14_N23
\counter_reset[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[11]~54_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(11));

-- Location: LCFF_X35_Y14_N21
\counter_reset[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[10]~52_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(10));

-- Location: LCCOMB_X34_Y14_N8
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter_reset(8) & (counter_reset(9) & (!counter_reset(11) & !counter_reset(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(8),
	datab => counter_reset(9),
	datac => counter_reset(11),
	datad => counter_reset(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X35_Y14_N24
\counter_reset[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[12]~56_combout\ = (counter_reset(12) & (\counter_reset[11]~55\ $ (GND))) # (!counter_reset(12) & (!\counter_reset[11]~55\ & VCC))
-- \counter_reset[12]~57\ = CARRY((counter_reset(12) & !\counter_reset[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(12),
	datad => VCC,
	cin => \counter_reset[11]~55\,
	combout => \counter_reset[12]~56_combout\,
	cout => \counter_reset[12]~57\);

-- Location: LCFF_X35_Y14_N25
\counter_reset[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[12]~56_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(12));

-- Location: LCCOMB_X35_Y14_N26
\counter_reset[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[13]~58_combout\ = (counter_reset(13) & (!\counter_reset[12]~57\)) # (!counter_reset(13) & ((\counter_reset[12]~57\) # (GND)))
-- \counter_reset[13]~59\ = CARRY((!\counter_reset[12]~57\) # (!counter_reset(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(13),
	datad => VCC,
	cin => \counter_reset[12]~57\,
	combout => \counter_reset[13]~58_combout\,
	cout => \counter_reset[13]~59\);

-- Location: LCFF_X35_Y14_N27
\counter_reset[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[13]~58_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(13));

-- Location: LCCOMB_X35_Y14_N28
\counter_reset[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_reset[14]~60_combout\ = (counter_reset(14) & (\counter_reset[13]~59\ $ (GND))) # (!counter_reset(14) & (!\counter_reset[13]~59\ & VCC))
-- \counter_reset[14]~61\ = CARRY((counter_reset(14) & !\counter_reset[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_reset(14),
	datad => VCC,
	cin => \counter_reset[13]~59\,
	combout => \counter_reset[14]~60_combout\,
	cout => \counter_reset[14]~61\);

-- Location: LCFF_X35_Y14_N29
\counter_reset[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[14]~60_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(14));

-- Location: LCFF_X35_Y14_N31
\counter_reset[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_reset[15]~62_combout\,
	sclr => \reset_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_reset(15));

-- Location: LCCOMB_X34_Y14_N22
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!counter_reset(13) & (!counter_reset(12) & (counter_reset(14) & !counter_reset(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_reset(13),
	datab => counter_reset(12),
	datac => counter_reset(14),
	datad => counter_reset(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X34_Y14_N4
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X10_Y14_N28
\reset_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_out~0_combout\ = (\Equal0~9_combout\ & ((\Equal0~4_combout\ & (reset_time(0))) # (!\Equal0~4_combout\ & ((\reset_out~regout\))))) # (!\Equal0~9_combout\ & (((\reset_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => reset_time(0),
	datac => \reset_out~regout\,
	datad => \Equal0~4_combout\,
	combout => \reset_out~0_combout\);

-- Location: LCFF_X10_Y14_N29
reset_out : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reset_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_out~regout\);

-- Location: LCCOMB_X5_Y14_N26
\always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\reset_flag~regout\) # (!\reset_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_flag~regout\,
	datad => \reset_out~regout\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X4_Y16_N26
\msecond_counter_low[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low[0]~2_combout\ = ((\start~regout\ & (!\Equal3~4_combout\ & !\Equal3~9_combout\))) # (!\always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~regout\,
	datab => \Equal3~4_combout\,
	datac => \always0~0_combout\,
	datad => \Equal3~9_combout\,
	combout => \msecond_counter_low[0]~2_combout\);

-- Location: LCFF_X4_Y16_N25
\msecond_counter_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_low~4_combout\,
	ena => \msecond_counter_low[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_low(2));

-- Location: LCCOMB_X4_Y16_N28
\msecond_counter_low~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~1_combout\ = (\msecond_counter_low[0]~0_combout\ & (!msecond_counter_low(0) & \Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \msecond_counter_low[0]~0_combout\,
	datac => msecond_counter_low(0),
	datad => \Equal4~0_combout\,
	combout => \msecond_counter_low~1_combout\);

-- Location: LCFF_X4_Y16_N29
\msecond_counter_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_low~1_combout\,
	ena => \msecond_counter_low[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_low(0));

-- Location: LCCOMB_X5_Y16_N18
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ((msecond_counter_low(2)) # ((msecond_counter_low(0)) # (!msecond_counter_low(1)))) # (!msecond_counter_low(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_low(3),
	datab => msecond_counter_low(2),
	datac => msecond_counter_low(1),
	datad => msecond_counter_low(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X4_Y16_N6
\msecond_counter_low~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~3_combout\ = (\msecond_counter_low[0]~0_combout\ & (\Equal4~0_combout\ & (msecond_counter_low(0) $ (msecond_counter_low(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_low(0),
	datab => \msecond_counter_low[0]~0_combout\,
	datac => msecond_counter_low(1),
	datad => \Equal4~0_combout\,
	combout => \msecond_counter_low~3_combout\);

-- Location: LCFF_X4_Y16_N7
\msecond_counter_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_low~3_combout\,
	ena => \msecond_counter_low[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_low(1));

-- Location: LCCOMB_X5_Y14_N20
\reset_flag~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_flag~feeder_combout\ = \reset_out~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_out~regout\,
	combout => \reset_flag~feeder_combout\);

-- Location: LCFF_X5_Y14_N21
reset_flag : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \reset_flag~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_flag~regout\);

-- Location: LCCOMB_X5_Y14_N30
\display~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display~0_combout\ = (\reset_out~regout\ & (((!\start_flag~regout\ & \start_out~regout\)) # (!\reset_flag~regout\))) # (!\reset_out~regout\ & (!\start_flag~regout\ & ((\start_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_out~regout\,
	datab => \start_flag~regout\,
	datac => \reset_flag~regout\,
	datad => \start_out~regout\,
	combout => \display~0_combout\);

-- Location: LCCOMB_X38_Y25_N0
\counter_display[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[0]~32_combout\ = counter_display(0) $ (VCC)
-- \counter_display[0]~33\ = CARRY(counter_display(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_display(0),
	datad => VCC,
	combout => \counter_display[0]~32_combout\,
	cout => \counter_display[0]~33\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_display~I\ : cycloneii_io
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
	padio => ww_key_display,
	combout => \key_display~combout\);

-- Location: LCCOMB_X37_Y25_N28
\display_time[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_time[0]~0_combout\ = !\key_display~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_display~combout\,
	combout => \display_time[0]~0_combout\);

-- Location: LCFF_X37_Y25_N29
\display_time[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \display_time[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display_time(0));

-- Location: LCFF_X37_Y25_N19
\display_time[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => display_time(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display_time(1));

-- Location: LCCOMB_X37_Y25_N18
display_xor : cycloneii_lcell_comb
-- Equation(s):
-- \display_xor~combout\ = display_time(1) $ (display_time(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => display_time(1),
	datad => display_time(0),
	combout => \display_xor~combout\);

-- Location: LCFF_X38_Y25_N1
\counter_display[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[0]~32_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(0));

-- Location: LCCOMB_X38_Y25_N2
\counter_display[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[1]~34_combout\ = (counter_display(1) & (!\counter_display[0]~33\)) # (!counter_display(1) & ((\counter_display[0]~33\) # (GND)))
-- \counter_display[1]~35\ = CARRY((!\counter_display[0]~33\) # (!counter_display(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(1),
	datad => VCC,
	cin => \counter_display[0]~33\,
	combout => \counter_display[1]~34_combout\,
	cout => \counter_display[1]~35\);

-- Location: LCFF_X38_Y25_N3
\counter_display[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[1]~34_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(1));

-- Location: LCCOMB_X38_Y25_N4
\counter_display[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[2]~36_combout\ = (counter_display(2) & (\counter_display[1]~35\ $ (GND))) # (!counter_display(2) & (!\counter_display[1]~35\ & VCC))
-- \counter_display[2]~37\ = CARRY((counter_display(2) & !\counter_display[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(2),
	datad => VCC,
	cin => \counter_display[1]~35\,
	combout => \counter_display[2]~36_combout\,
	cout => \counter_display[2]~37\);

-- Location: LCFF_X38_Y25_N5
\counter_display[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[2]~36_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(2));

-- Location: LCCOMB_X38_Y25_N6
\counter_display[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[3]~38_combout\ = (counter_display(3) & (!\counter_display[2]~37\)) # (!counter_display(3) & ((\counter_display[2]~37\) # (GND)))
-- \counter_display[3]~39\ = CARRY((!\counter_display[2]~37\) # (!counter_display(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(3),
	datad => VCC,
	cin => \counter_display[2]~37\,
	combout => \counter_display[3]~38_combout\,
	cout => \counter_display[3]~39\);

-- Location: LCCOMB_X38_Y25_N8
\counter_display[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[4]~40_combout\ = (counter_display(4) & (\counter_display[3]~39\ $ (GND))) # (!counter_display(4) & (!\counter_display[3]~39\ & VCC))
-- \counter_display[4]~41\ = CARRY((counter_display(4) & !\counter_display[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(4),
	datad => VCC,
	cin => \counter_display[3]~39\,
	combout => \counter_display[4]~40_combout\,
	cout => \counter_display[4]~41\);

-- Location: LCFF_X38_Y25_N9
\counter_display[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[4]~40_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(4));

-- Location: LCCOMB_X38_Y25_N14
\counter_display[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[7]~46_combout\ = (counter_display(7) & (!\counter_display[6]~45\)) # (!counter_display(7) & ((\counter_display[6]~45\) # (GND)))
-- \counter_display[7]~47\ = CARRY((!\counter_display[6]~45\) # (!counter_display(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(7),
	datad => VCC,
	cin => \counter_display[6]~45\,
	combout => \counter_display[7]~46_combout\,
	cout => \counter_display[7]~47\);

-- Location: LCFF_X38_Y25_N15
\counter_display[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[7]~46_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(7));

-- Location: LCCOMB_X38_Y25_N16
\counter_display[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[8]~48_combout\ = (counter_display(8) & (\counter_display[7]~47\ $ (GND))) # (!counter_display(8) & (!\counter_display[7]~47\ & VCC))
-- \counter_display[8]~49\ = CARRY((counter_display(8) & !\counter_display[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(8),
	datad => VCC,
	cin => \counter_display[7]~47\,
	combout => \counter_display[8]~48_combout\,
	cout => \counter_display[8]~49\);

-- Location: LCCOMB_X38_Y25_N18
\counter_display[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[9]~50_combout\ = (counter_display(9) & (!\counter_display[8]~49\)) # (!counter_display(9) & ((\counter_display[8]~49\) # (GND)))
-- \counter_display[9]~51\ = CARRY((!\counter_display[8]~49\) # (!counter_display(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(9),
	datad => VCC,
	cin => \counter_display[8]~49\,
	combout => \counter_display[9]~50_combout\,
	cout => \counter_display[9]~51\);

-- Location: LCFF_X38_Y25_N19
\counter_display[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[9]~50_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(9));

-- Location: LCCOMB_X38_Y25_N22
\counter_display[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[11]~54_combout\ = (counter_display(11) & (!\counter_display[10]~53\)) # (!counter_display(11) & ((\counter_display[10]~53\) # (GND)))
-- \counter_display[11]~55\ = CARRY((!\counter_display[10]~53\) # (!counter_display(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(11),
	datad => VCC,
	cin => \counter_display[10]~53\,
	combout => \counter_display[11]~54_combout\,
	cout => \counter_display[11]~55\);

-- Location: LCFF_X38_Y25_N23
\counter_display[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[11]~54_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(11));

-- Location: LCFF_X38_Y25_N17
\counter_display[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[8]~48_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(8));

-- Location: LCCOMB_X37_Y25_N26
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!counter_display(10) & (!counter_display(11) & (!counter_display(8) & counter_display(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(10),
	datab => counter_display(11),
	datac => counter_display(8),
	datad => counter_display(9),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X38_Y25_N24
\counter_display[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[12]~56_combout\ = (counter_display(12) & (\counter_display[11]~55\ $ (GND))) # (!counter_display(12) & (!\counter_display[11]~55\ & VCC))
-- \counter_display[12]~57\ = CARRY((counter_display(12) & !\counter_display[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(12),
	datad => VCC,
	cin => \counter_display[11]~55\,
	combout => \counter_display[12]~56_combout\,
	cout => \counter_display[12]~57\);

-- Location: LCCOMB_X38_Y25_N26
\counter_display[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[13]~58_combout\ = (counter_display(13) & (!\counter_display[12]~57\)) # (!counter_display(13) & ((\counter_display[12]~57\) # (GND)))
-- \counter_display[13]~59\ = CARRY((!\counter_display[12]~57\) # (!counter_display(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(13),
	datad => VCC,
	cin => \counter_display[12]~57\,
	combout => \counter_display[13]~58_combout\,
	cout => \counter_display[13]~59\);

-- Location: LCFF_X38_Y25_N27
\counter_display[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[13]~58_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(13));

-- Location: LCCOMB_X38_Y25_N28
\counter_display[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[14]~60_combout\ = (counter_display(14) & (\counter_display[13]~59\ $ (GND))) # (!counter_display(14) & (!\counter_display[13]~59\ & VCC))
-- \counter_display[14]~61\ = CARRY((counter_display(14) & !\counter_display[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(14),
	datad => VCC,
	cin => \counter_display[13]~59\,
	combout => \counter_display[14]~60_combout\,
	cout => \counter_display[14]~61\);

-- Location: LCFF_X38_Y25_N29
\counter_display[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[14]~60_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(14));

-- Location: LCCOMB_X38_Y25_N30
\counter_display[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[15]~62_combout\ = (counter_display(15) & (!\counter_display[14]~61\)) # (!counter_display(15) & ((\counter_display[14]~61\) # (GND)))
-- \counter_display[15]~63\ = CARRY((!\counter_display[14]~61\) # (!counter_display(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(15),
	datad => VCC,
	cin => \counter_display[14]~61\,
	combout => \counter_display[15]~62_combout\,
	cout => \counter_display[15]~63\);

-- Location: LCFF_X38_Y25_N31
\counter_display[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[15]~62_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(15));

-- Location: LCFF_X38_Y25_N25
\counter_display[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[12]~56_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(12));

-- Location: LCCOMB_X37_Y25_N24
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (counter_display(14) & (!counter_display(15) & (!counter_display(13) & !counter_display(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(14),
	datab => counter_display(15),
	datac => counter_display(13),
	datad => counter_display(12),
	combout => \Equal2~3_combout\);

-- Location: LCFF_X38_Y25_N7
\counter_display[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[3]~38_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(3));

-- Location: LCCOMB_X37_Y25_N30
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!counter_display(2) & (!counter_display(3) & (!counter_display(0) & !counter_display(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(2),
	datab => counter_display(3),
	datac => counter_display(0),
	datad => counter_display(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X37_Y25_N22
\Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~1_combout\ & (\Equal2~2_combout\ & (\Equal2~3_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal2~2_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X38_Y24_N0
\counter_display[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[16]~64_combout\ = (counter_display(16) & (\counter_display[15]~63\ $ (GND))) # (!counter_display(16) & (!\counter_display[15]~63\ & VCC))
-- \counter_display[16]~65\ = CARRY((counter_display(16) & !\counter_display[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(16),
	datad => VCC,
	cin => \counter_display[15]~63\,
	combout => \counter_display[16]~64_combout\,
	cout => \counter_display[16]~65\);

-- Location: LCFF_X38_Y24_N1
\counter_display[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[16]~64_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(16));

-- Location: LCCOMB_X38_Y24_N2
\counter_display[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[17]~66_combout\ = (counter_display(17) & (!\counter_display[16]~65\)) # (!counter_display(17) & ((\counter_display[16]~65\) # (GND)))
-- \counter_display[17]~67\ = CARRY((!\counter_display[16]~65\) # (!counter_display(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(17),
	datad => VCC,
	cin => \counter_display[16]~65\,
	combout => \counter_display[17]~66_combout\,
	cout => \counter_display[17]~67\);

-- Location: LCFF_X38_Y24_N3
\counter_display[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[17]~66_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(17));

-- Location: LCCOMB_X38_Y24_N4
\counter_display[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[18]~68_combout\ = (counter_display(18) & (\counter_display[17]~67\ $ (GND))) # (!counter_display(18) & (!\counter_display[17]~67\ & VCC))
-- \counter_display[18]~69\ = CARRY((counter_display(18) & !\counter_display[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(18),
	datad => VCC,
	cin => \counter_display[17]~67\,
	combout => \counter_display[18]~68_combout\,
	cout => \counter_display[18]~69\);

-- Location: LCFF_X38_Y24_N5
\counter_display[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[18]~68_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(18));

-- Location: LCCOMB_X38_Y24_N8
\counter_display[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[20]~72_combout\ = (counter_display(20) & (\counter_display[19]~71\ $ (GND))) # (!counter_display(20) & (!\counter_display[19]~71\ & VCC))
-- \counter_display[20]~73\ = CARRY((counter_display(20) & !\counter_display[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(20),
	datad => VCC,
	cin => \counter_display[19]~71\,
	combout => \counter_display[20]~72_combout\,
	cout => \counter_display[20]~73\);

-- Location: LCFF_X38_Y24_N9
\counter_display[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[20]~72_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(20));

-- Location: LCCOMB_X38_Y24_N10
\counter_display[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[21]~74_combout\ = (counter_display(21) & (!\counter_display[20]~73\)) # (!counter_display(21) & ((\counter_display[20]~73\) # (GND)))
-- \counter_display[21]~75\ = CARRY((!\counter_display[20]~73\) # (!counter_display(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(21),
	datad => VCC,
	cin => \counter_display[20]~73\,
	combout => \counter_display[21]~74_combout\,
	cout => \counter_display[21]~75\);

-- Location: LCCOMB_X38_Y24_N12
\counter_display[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[22]~76_combout\ = (counter_display(22) & (\counter_display[21]~75\ $ (GND))) # (!counter_display(22) & (!\counter_display[21]~75\ & VCC))
-- \counter_display[22]~77\ = CARRY((counter_display(22) & !\counter_display[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(22),
	datad => VCC,
	cin => \counter_display[21]~75\,
	combout => \counter_display[22]~76_combout\,
	cout => \counter_display[22]~77\);

-- Location: LCCOMB_X38_Y24_N14
\counter_display[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[23]~78_combout\ = (counter_display(23) & (!\counter_display[22]~77\)) # (!counter_display(23) & ((\counter_display[22]~77\) # (GND)))
-- \counter_display[23]~79\ = CARRY((!\counter_display[22]~77\) # (!counter_display(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(23),
	datad => VCC,
	cin => \counter_display[22]~77\,
	combout => \counter_display[23]~78_combout\,
	cout => \counter_display[23]~79\);

-- Location: LCFF_X38_Y24_N15
\counter_display[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[23]~78_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(23));

-- Location: LCCOMB_X38_Y24_N16
\counter_display[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[24]~80_combout\ = (counter_display(24) & (\counter_display[23]~79\ $ (GND))) # (!counter_display(24) & (!\counter_display[23]~79\ & VCC))
-- \counter_display[24]~81\ = CARRY((counter_display(24) & !\counter_display[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(24),
	datad => VCC,
	cin => \counter_display[23]~79\,
	combout => \counter_display[24]~80_combout\,
	cout => \counter_display[24]~81\);

-- Location: LCCOMB_X38_Y24_N18
\counter_display[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[25]~82_combout\ = (counter_display(25) & (!\counter_display[24]~81\)) # (!counter_display(25) & ((\counter_display[24]~81\) # (GND)))
-- \counter_display[25]~83\ = CARRY((!\counter_display[24]~81\) # (!counter_display(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(25),
	datad => VCC,
	cin => \counter_display[24]~81\,
	combout => \counter_display[25]~82_combout\,
	cout => \counter_display[25]~83\);

-- Location: LCFF_X38_Y24_N19
\counter_display[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[25]~82_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(25));

-- Location: LCCOMB_X38_Y24_N20
\counter_display[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[26]~84_combout\ = (counter_display(26) & (\counter_display[25]~83\ $ (GND))) # (!counter_display(26) & (!\counter_display[25]~83\ & VCC))
-- \counter_display[26]~85\ = CARRY((counter_display(26) & !\counter_display[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(26),
	datad => VCC,
	cin => \counter_display[25]~83\,
	combout => \counter_display[26]~84_combout\,
	cout => \counter_display[26]~85\);

-- Location: LCCOMB_X38_Y24_N22
\counter_display[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[27]~86_combout\ = (counter_display(27) & (!\counter_display[26]~85\)) # (!counter_display(27) & ((\counter_display[26]~85\) # (GND)))
-- \counter_display[27]~87\ = CARRY((!\counter_display[26]~85\) # (!counter_display(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(27),
	datad => VCC,
	cin => \counter_display[26]~85\,
	combout => \counter_display[27]~86_combout\,
	cout => \counter_display[27]~87\);

-- Location: LCFF_X38_Y24_N23
\counter_display[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[27]~86_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(27));

-- Location: LCCOMB_X38_Y24_N24
\counter_display[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[28]~88_combout\ = (counter_display(28) & (\counter_display[27]~87\ $ (GND))) # (!counter_display(28) & (!\counter_display[27]~87\ & VCC))
-- \counter_display[28]~89\ = CARRY((counter_display(28) & !\counter_display[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(28),
	datad => VCC,
	cin => \counter_display[27]~87\,
	combout => \counter_display[28]~88_combout\,
	cout => \counter_display[28]~89\);

-- Location: LCCOMB_X38_Y24_N26
\counter_display[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_display[29]~90_combout\ = (counter_display(29) & (!\counter_display[28]~89\)) # (!counter_display(29) & ((\counter_display[28]~89\) # (GND)))
-- \counter_display[29]~91\ = CARRY((!\counter_display[28]~89\) # (!counter_display(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_display(29),
	datad => VCC,
	cin => \counter_display[28]~89\,
	combout => \counter_display[29]~90_combout\,
	cout => \counter_display[29]~91\);

-- Location: LCFF_X38_Y24_N27
\counter_display[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[29]~90_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(29));

-- Location: LCFF_X38_Y24_N29
\counter_display[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[30]~92_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(30));

-- Location: LCFF_X38_Y24_N25
\counter_display[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[28]~88_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(28));

-- Location: LCCOMB_X37_Y24_N2
\Equal2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!counter_display(31) & (!counter_display(30) & (!counter_display(29) & !counter_display(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(31),
	datab => counter_display(30),
	datac => counter_display(29),
	datad => counter_display(28),
	combout => \Equal2~8_combout\);

-- Location: LCFF_X38_Y24_N17
\counter_display[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[24]~80_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(24));

-- Location: LCFF_X38_Y24_N21
\counter_display[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[26]~84_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(26));

-- Location: LCCOMB_X37_Y24_N16
\Equal2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!counter_display(27) & (!counter_display(25) & (!counter_display(24) & !counter_display(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(27),
	datab => counter_display(25),
	datac => counter_display(24),
	datad => counter_display(26),
	combout => \Equal2~7_combout\);

-- Location: LCFF_X38_Y24_N11
\counter_display[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[21]~74_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(21));

-- Location: LCFF_X38_Y24_N13
\counter_display[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter_display[22]~76_combout\,
	sclr => \display_xor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_display(22));

-- Location: LCCOMB_X37_Y24_N18
\Equal2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!counter_display(23) & (!counter_display(21) & (!counter_display(20) & !counter_display(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_display(23),
	datab => counter_display(21),
	datac => counter_display(20),
	datad => counter_display(22),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X37_Y24_N0
\Equal2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~5_combout\ & (\Equal2~8_combout\ & (\Equal2~7_combout\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~5_combout\,
	datab => \Equal2~8_combout\,
	datac => \Equal2~7_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X37_Y25_N4
\display_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_out~0_combout\ = (\Equal2~4_combout\ & ((\Equal2~9_combout\ & (display_time(0))) # (!\Equal2~9_combout\ & ((\display_out~regout\))))) # (!\Equal2~4_combout\ & (((\display_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_time(0),
	datab => \Equal2~4_combout\,
	datac => \display_out~regout\,
	datad => \Equal2~9_combout\,
	combout => \display_out~0_combout\);

-- Location: LCFF_X37_Y25_N5
display_out : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \display_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_out~regout\);

-- Location: LCCOMB_X5_Y14_N22
\display~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \display~1_combout\ = (\display~regout\ & (!\display~0_combout\ & ((\display_flag~regout\) # (!\display_out~regout\)))) # (!\display~regout\ & (!\display_flag~regout\ & ((\display_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_flag~regout\,
	datab => \display~0_combout\,
	datac => \display~regout\,
	datad => \display_out~regout\,
	combout => \display~1_combout\);

-- Location: LCFF_X5_Y14_N23
display : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \display~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display~regout\);

-- Location: LCFF_X5_Y16_N19
\msecond_display_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => msecond_counter_low(1),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_low(1));

-- Location: LCCOMB_X5_Y16_N12
\msecond_display_low[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_low[2]~feeder_combout\ = msecond_counter_low(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => msecond_counter_low(2),
	combout => \msecond_display_low[2]~feeder_combout\);

-- Location: LCFF_X5_Y16_N13
\msecond_display_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_display_low[2]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_low(2));

-- Location: LCCOMB_X4_Y16_N14
\msecond_counter_low~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_low~5_combout\ = (\Add4~1_combout\ & (\Equal4~0_combout\ & \msecond_counter_low[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => \Equal4~0_combout\,
	datac => \msecond_counter_low[0]~0_combout\,
	combout => \msecond_counter_low~5_combout\);

-- Location: LCFF_X4_Y16_N15
\msecond_counter_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_low~5_combout\,
	ena => \msecond_counter_low[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_low(3));

-- Location: LCCOMB_X5_Y16_N2
\msecond_display_low[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_low[3]~feeder_combout\ = msecond_counter_low(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => msecond_counter_low(3),
	combout => \msecond_display_low[3]~feeder_combout\);

-- Location: LCFF_X5_Y16_N3
\msecond_display_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_display_low[3]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_low(3));

-- Location: LCFF_X5_Y16_N5
\msecond_display_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => msecond_counter_low(0),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_low(0));

-- Location: LCCOMB_X28_Y8_N0
\LED8_msecond_display_low|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr6~0_combout\ = (msecond_display_low(1) & (((msecond_display_low(3))))) # (!msecond_display_low(1) & (msecond_display_low(2) $ (((!msecond_display_low(3) & msecond_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(1),
	datab => msecond_display_low(2),
	datac => msecond_display_low(3),
	datad => msecond_display_low(0),
	combout => \LED8_msecond_display_low|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y8_N2
\LED8_msecond_display_low|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr5~0_combout\ = (msecond_display_low(2) & ((msecond_display_low(3)) # (msecond_display_low(1) $ (msecond_display_low(0))))) # (!msecond_display_low(2) & (msecond_display_low(1) & (msecond_display_low(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(1),
	datab => msecond_display_low(2),
	datac => msecond_display_low(3),
	datad => msecond_display_low(0),
	combout => \LED8_msecond_display_low|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y8_N12
\LED8_msecond_display_low|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr4~0_combout\ = (msecond_display_low(2) & (((msecond_display_low(3))))) # (!msecond_display_low(2) & (msecond_display_low(1) & ((msecond_display_low(3)) # (!msecond_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(1),
	datab => msecond_display_low(2),
	datac => msecond_display_low(3),
	datad => msecond_display_low(0),
	combout => \LED8_msecond_display_low|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y8_N22
\LED8_msecond_display_low|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr3~0_combout\ = (msecond_display_low(1) & ((msecond_display_low(3)) # ((msecond_display_low(2) & msecond_display_low(0))))) # (!msecond_display_low(1) & (msecond_display_low(2) $ (((!msecond_display_low(3) & 
-- msecond_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(1),
	datab => msecond_display_low(2),
	datac => msecond_display_low(3),
	datad => msecond_display_low(0),
	combout => \LED8_msecond_display_low|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y8_N20
\LED8_msecond_display_low|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr2~0_combout\ = (msecond_display_low(0)) # ((msecond_display_low(1) & ((msecond_display_low(3)))) # (!msecond_display_low(1) & (msecond_display_low(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(1),
	datab => msecond_display_low(2),
	datac => msecond_display_low(3),
	datad => msecond_display_low(0),
	combout => \LED8_msecond_display_low|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y8_N10
\LED8_msecond_display_low|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr1~0_combout\ = (msecond_display_low(2) & ((msecond_display_low(3)) # ((msecond_display_low(1) & msecond_display_low(0))))) # (!msecond_display_low(2) & ((msecond_display_low(1)) # ((!msecond_display_low(3) & 
-- msecond_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(1),
	datab => msecond_display_low(2),
	datac => msecond_display_low(3),
	datad => msecond_display_low(0),
	combout => \LED8_msecond_display_low|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y8_N8
\LED8_msecond_display_low|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_low|WideOr0~0_combout\ = (msecond_display_low(1) & (!msecond_display_low(3) & ((!msecond_display_low(0)) # (!msecond_display_low(2))))) # (!msecond_display_low(1) & (msecond_display_low(2) $ ((msecond_display_low(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_low(1),
	datab => msecond_display_low(2),
	datac => msecond_display_low(3),
	datad => msecond_display_low(0),
	combout => \LED8_msecond_display_low|WideOr0~0_combout\);

-- Location: LCCOMB_X4_Y16_N0
\msecond_counter_high[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high[1]~1_combout\ = (\always0~0_combout\ & ((\msecond_counter_high[1]~0_combout\) # ((\Equal3~4_combout\) # (\Equal3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msecond_counter_high[1]~0_combout\,
	datab => \Equal3~4_combout\,
	datac => \always0~0_combout\,
	datad => \Equal3~9_combout\,
	combout => \msecond_counter_high[1]~1_combout\);

-- Location: LCCOMB_X4_Y16_N8
\msecond_counter_high[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high[2]~6_combout\ = (\Add5~0_combout\ & ((\msecond_counter_high[3]~3_combout\) # ((\msecond_counter_high[1]~1_combout\ & msecond_counter_high(2))))) # (!\Add5~0_combout\ & (\msecond_counter_high[1]~1_combout\ & 
-- (msecond_counter_high(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \msecond_counter_high[1]~1_combout\,
	datac => msecond_counter_high(2),
	datad => \msecond_counter_high[3]~3_combout\,
	combout => \msecond_counter_high[2]~6_combout\);

-- Location: LCFF_X4_Y16_N9
\msecond_counter_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_high[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_high(2));

-- Location: LCCOMB_X4_Y16_N2
\msecond_counter_high[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high[1]~5_combout\ = (msecond_counter_high(1) & ((\msecond_counter_high[1]~1_combout\) # ((!msecond_counter_high(0) & \msecond_counter_high[3]~3_combout\)))) # (!msecond_counter_high(1) & (msecond_counter_high(0) & 
-- ((\msecond_counter_high[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_high(0),
	datab => \msecond_counter_high[1]~1_combout\,
	datac => msecond_counter_high(1),
	datad => \msecond_counter_high[3]~3_combout\,
	combout => \msecond_counter_high[1]~5_combout\);

-- Location: LCFF_X4_Y16_N3
\msecond_counter_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_high[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_high(1));

-- Location: LCCOMB_X4_Y16_N20
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (msecond_counter_high(0)) # (((msecond_counter_high(2)) # (!msecond_counter_high(1))) # (!msecond_counter_high(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_counter_high(0),
	datab => msecond_counter_high(3),
	datac => msecond_counter_high(2),
	datad => msecond_counter_high(1),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X4_Y16_N30
\msecond_counter_high[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high[3]~3_combout\ = (\msecond_counter_high[3]~2_combout\ & (!\Equal3~4_combout\ & (\Equal5~0_combout\ & !\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \msecond_counter_high[3]~2_combout\,
	datab => \Equal3~4_combout\,
	datac => \Equal5~0_combout\,
	datad => \Equal3~9_combout\,
	combout => \msecond_counter_high[3]~3_combout\);

-- Location: LCCOMB_X4_Y16_N22
\msecond_counter_high[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high[3]~7_combout\ = (\Add5~1_combout\ & ((\msecond_counter_high[3]~3_combout\) # ((\msecond_counter_high[1]~1_combout\ & msecond_counter_high(3))))) # (!\Add5~1_combout\ & (\msecond_counter_high[1]~1_combout\ & 
-- (msecond_counter_high(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~1_combout\,
	datab => \msecond_counter_high[1]~1_combout\,
	datac => msecond_counter_high(3),
	datad => \msecond_counter_high[3]~3_combout\,
	combout => \msecond_counter_high[3]~7_combout\);

-- Location: LCFF_X4_Y16_N23
\msecond_counter_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_high[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_high(3));

-- Location: LCFF_X4_Y15_N7
\msecond_display_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => msecond_counter_high(3),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_high(3));

-- Location: LCCOMB_X4_Y16_N12
\msecond_counter_high[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_counter_high[0]~4_combout\ = (msecond_counter_high(0) & ((\msecond_counter_high[1]~1_combout\))) # (!msecond_counter_high(0) & (\msecond_counter_high[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \msecond_counter_high[3]~3_combout\,
	datac => msecond_counter_high(0),
	datad => \msecond_counter_high[1]~1_combout\,
	combout => \msecond_counter_high[0]~4_combout\);

-- Location: LCFF_X4_Y16_N13
\msecond_counter_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_counter_high[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_counter_high(0));

-- Location: LCCOMB_X4_Y15_N8
\msecond_display_high[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_high[0]~feeder_combout\ = msecond_counter_high(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => msecond_counter_high(0),
	combout => \msecond_display_high[0]~feeder_combout\);

-- Location: LCFF_X4_Y15_N9
\msecond_display_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_display_high[0]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_high(0));

-- Location: LCFF_X4_Y15_N21
\msecond_display_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => msecond_counter_high(2),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_high(2));

-- Location: LCCOMB_X4_Y15_N14
\msecond_display_high[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \msecond_display_high[1]~feeder_combout\ = msecond_counter_high(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => msecond_counter_high(1),
	combout => \msecond_display_high[1]~feeder_combout\);

-- Location: LCFF_X4_Y15_N15
\msecond_display_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \msecond_display_high[1]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => msecond_display_high(1));

-- Location: LCCOMB_X4_Y15_N24
\LED8_msecond_display_high|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr6~0_combout\ = (msecond_display_high(1) & (msecond_display_high(3))) # (!msecond_display_high(1) & (msecond_display_high(2) $ (((!msecond_display_high(3) & msecond_display_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(3),
	datab => msecond_display_high(0),
	datac => msecond_display_high(2),
	datad => msecond_display_high(1),
	combout => \LED8_msecond_display_high|WideOr6~0_combout\);

-- Location: LCCOMB_X4_Y15_N20
\LED8_msecond_display_high|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr5~0_combout\ = (msecond_display_high(2) & ((msecond_display_high(3)) # (msecond_display_high(1) $ (msecond_display_high(0))))) # (!msecond_display_high(2) & (msecond_display_high(1) & ((msecond_display_high(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(1),
	datab => msecond_display_high(0),
	datac => msecond_display_high(2),
	datad => msecond_display_high(3),
	combout => \LED8_msecond_display_high|WideOr5~0_combout\);

-- Location: LCCOMB_X4_Y15_N10
\LED8_msecond_display_high|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr4~0_combout\ = (msecond_display_high(2) & (msecond_display_high(3))) # (!msecond_display_high(2) & (msecond_display_high(1) & ((msecond_display_high(3)) # (!msecond_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(3),
	datab => msecond_display_high(0),
	datac => msecond_display_high(2),
	datad => msecond_display_high(1),
	combout => \LED8_msecond_display_high|WideOr4~0_combout\);

-- Location: LCCOMB_X4_Y15_N6
\LED8_msecond_display_high|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr3~0_combout\ = (msecond_display_high(1) & ((msecond_display_high(3)) # ((msecond_display_high(2) & msecond_display_high(0))))) # (!msecond_display_high(1) & (msecond_display_high(2) $ (((msecond_display_high(0) & 
-- !msecond_display_high(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(2),
	datab => msecond_display_high(0),
	datac => msecond_display_high(3),
	datad => msecond_display_high(1),
	combout => \LED8_msecond_display_high|WideOr3~0_combout\);

-- Location: LCCOMB_X4_Y15_N16
\LED8_msecond_display_high|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr2~0_combout\ = (msecond_display_high(0)) # ((msecond_display_high(1) & (msecond_display_high(3))) # (!msecond_display_high(1) & ((msecond_display_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(3),
	datab => msecond_display_high(0),
	datac => msecond_display_high(2),
	datad => msecond_display_high(1),
	combout => \LED8_msecond_display_high|WideOr2~0_combout\);

-- Location: LCCOMB_X4_Y15_N26
\LED8_msecond_display_high|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr1~0_combout\ = (msecond_display_high(0) & ((msecond_display_high(1)) # (msecond_display_high(3) $ (!msecond_display_high(2))))) # (!msecond_display_high(0) & ((msecond_display_high(2) & (msecond_display_high(3))) # 
-- (!msecond_display_high(2) & ((msecond_display_high(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(3),
	datab => msecond_display_high(0),
	datac => msecond_display_high(2),
	datad => msecond_display_high(1),
	combout => \LED8_msecond_display_high|WideOr1~0_combout\);

-- Location: LCCOMB_X4_Y15_N4
\LED8_msecond_display_high|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_msecond_display_high|WideOr0~0_combout\ = (msecond_display_high(2) & (!msecond_display_high(3) & ((!msecond_display_high(1)) # (!msecond_display_high(0))))) # (!msecond_display_high(2) & (msecond_display_high(3) $ (((msecond_display_high(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => msecond_display_high(3),
	datab => msecond_display_high(0),
	datac => msecond_display_high(2),
	datad => msecond_display_high(1),
	combout => \LED8_msecond_display_high|WideOr0~0_combout\);

-- Location: LCCOMB_X6_Y12_N0
\second_counter_low[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low[0]~1_combout\ = (\always0~0_combout\ & ((\second_counter_low[0]~0_combout\) # ((\Equal3~9_combout\) # (\Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \second_counter_low[0]~0_combout\,
	datab => \Equal3~9_combout\,
	datac => \Equal3~4_combout\,
	datad => \always0~0_combout\,
	combout => \second_counter_low[0]~1_combout\);

-- Location: LCCOMB_X6_Y12_N16
\second_counter_low[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low[0]~4_combout\ = (second_counter_low(0) & (\second_counter_low[0]~1_combout\)) # (!second_counter_low(0) & ((\second_counter_low[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \second_counter_low[0]~1_combout\,
	datac => second_counter_low(0),
	datad => \second_counter_low[3]~3_combout\,
	combout => \second_counter_low[0]~4_combout\);

-- Location: LCFF_X6_Y12_N17
\second_counter_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_low[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_low(0));

-- Location: LCCOMB_X6_Y12_N12
\second_counter_low[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low[3]~7_combout\ = (\Add6~1_combout\ & ((\second_counter_low[3]~3_combout\) # ((\second_counter_low[0]~1_combout\ & second_counter_low(3))))) # (!\Add6~1_combout\ & (\second_counter_low[0]~1_combout\ & (second_counter_low(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~1_combout\,
	datab => \second_counter_low[0]~1_combout\,
	datac => second_counter_low(3),
	datad => \second_counter_low[3]~3_combout\,
	combout => \second_counter_low[3]~7_combout\);

-- Location: LCFF_X6_Y12_N13
\second_counter_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_low[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_low(3));

-- Location: LCCOMB_X6_Y12_N30
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (second_counter_low(2)) # (((second_counter_low(0)) # (!second_counter_low(3))) # (!second_counter_low(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_low(2),
	datab => second_counter_low(1),
	datac => second_counter_low(0),
	datad => second_counter_low(3),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X6_Y12_N26
\second_counter_low[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low[3]~3_combout\ = (\second_counter_low[3]~2_combout\ & (!\Equal3~9_combout\ & (!\Equal3~4_combout\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \second_counter_low[3]~2_combout\,
	datab => \Equal3~9_combout\,
	datac => \Equal3~4_combout\,
	datad => \Equal6~0_combout\,
	combout => \second_counter_low[3]~3_combout\);

-- Location: LCCOMB_X6_Y12_N28
\second_counter_low[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low[1]~5_combout\ = (second_counter_low(1) & ((\second_counter_low[0]~1_combout\) # ((!second_counter_low(0) & \second_counter_low[3]~3_combout\)))) # (!second_counter_low(1) & (second_counter_low(0) & 
-- ((\second_counter_low[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_low(0),
	datab => \second_counter_low[0]~1_combout\,
	datac => second_counter_low(1),
	datad => \second_counter_low[3]~3_combout\,
	combout => \second_counter_low[1]~5_combout\);

-- Location: LCFF_X6_Y12_N29
\second_counter_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_low[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_low(1));

-- Location: LCCOMB_X10_Y12_N10
\second_display_low[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_low[1]~feeder_combout\ = second_counter_low(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => second_counter_low(1),
	combout => \second_display_low[1]~feeder_combout\);

-- Location: LCFF_X10_Y12_N11
\second_display_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_low[1]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_low(1));

-- Location: LCCOMB_X10_Y12_N2
\second_display_low[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_low[3]~feeder_combout\ = second_counter_low(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => second_counter_low(3),
	combout => \second_display_low[3]~feeder_combout\);

-- Location: LCFF_X10_Y12_N3
\second_display_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_low[3]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_low(3));

-- Location: LCCOMB_X6_Y12_N20
\second_counter_low[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_low[2]~6_combout\ = (\Add6~0_combout\ & ((\second_counter_low[3]~3_combout\) # ((\second_counter_low[0]~1_combout\ & second_counter_low(2))))) # (!\Add6~0_combout\ & (\second_counter_low[0]~1_combout\ & (second_counter_low(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \second_counter_low[0]~1_combout\,
	datac => second_counter_low(2),
	datad => \second_counter_low[3]~3_combout\,
	combout => \second_counter_low[2]~6_combout\);

-- Location: LCFF_X6_Y12_N21
\second_counter_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_low[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_low(2));

-- Location: LCFF_X10_Y12_N21
\second_display_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => second_counter_low(2),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_low(2));

-- Location: LCCOMB_X10_Y12_N12
\second_display_low[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_low[0]~feeder_combout\ = second_counter_low(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => second_counter_low(0),
	combout => \second_display_low[0]~feeder_combout\);

-- Location: LCFF_X10_Y12_N13
\second_display_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_low[0]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_low(0));

-- Location: LCCOMB_X10_Y12_N28
\LED8_second_display_low|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr6~0_combout\ = (second_display_low(1) & (second_display_low(3))) # (!second_display_low(1) & (second_display_low(2) $ (((!second_display_low(3) & second_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(3),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr6~0_combout\);

-- Location: LCCOMB_X10_Y12_N22
\LED8_second_display_low|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr5~0_combout\ = (second_display_low(3) & ((second_display_low(1)) # ((second_display_low(2))))) # (!second_display_low(3) & (second_display_low(2) & (second_display_low(1) $ (second_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(3),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr5~0_combout\);

-- Location: LCCOMB_X10_Y12_N24
\LED8_second_display_low|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr4~0_combout\ = (second_display_low(2) & (((second_display_low(3))))) # (!second_display_low(2) & (second_display_low(1) & ((second_display_low(3)) # (!second_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(3),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr4~0_combout\);

-- Location: LCCOMB_X10_Y12_N18
\LED8_second_display_low|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr3~0_combout\ = (second_display_low(1) & ((second_display_low(3)) # ((second_display_low(2) & second_display_low(0))))) # (!second_display_low(1) & (second_display_low(2) $ (((!second_display_low(3) & 
-- second_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(3),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr3~0_combout\);

-- Location: LCCOMB_X10_Y12_N0
\LED8_second_display_low|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr2~0_combout\ = (second_display_low(0)) # ((second_display_low(1) & (second_display_low(3))) # (!second_display_low(1) & ((second_display_low(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(3),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr2~0_combout\);

-- Location: LCCOMB_X10_Y12_N26
\LED8_second_display_low|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr1~0_combout\ = (second_display_low(2) & ((second_display_low(3)) # ((second_display_low(1) & second_display_low(0))))) # (!second_display_low(2) & ((second_display_low(1)) # ((!second_display_low(3) & 
-- second_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(3),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr1~0_combout\);

-- Location: LCCOMB_X10_Y12_N16
\LED8_second_display_low|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_low|WideOr0~0_combout\ = (second_display_low(1) & (!second_display_low(3) & ((!second_display_low(0)) # (!second_display_low(2))))) # (!second_display_low(1) & (second_display_low(3) $ ((second_display_low(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_low(1),
	datab => second_display_low(3),
	datac => second_display_low(2),
	datad => second_display_low(0),
	combout => \LED8_second_display_low|WideOr0~0_combout\);

-- Location: LCCOMB_X6_Y12_N6
\second_counter_high[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high[0]~1_combout\ = (\always0~0_combout\ & ((\second_counter_high[0]~0_combout\) # ((\Equal3~9_combout\) # (\Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \second_counter_high[0]~0_combout\,
	datab => \Equal3~9_combout\,
	datac => \Equal3~4_combout\,
	datad => \always0~0_combout\,
	combout => \second_counter_high[0]~1_combout\);

-- Location: LCCOMB_X6_Y12_N14
\second_counter_high[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high[3]~7_combout\ = (\Add7~1_combout\ & ((\second_counter_high[3]~3_combout\) # ((second_counter_high(3) & \second_counter_high[0]~1_combout\)))) # (!\Add7~1_combout\ & (((second_counter_high(3) & \second_counter_high[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~1_combout\,
	datab => \second_counter_high[3]~3_combout\,
	datac => second_counter_high(3),
	datad => \second_counter_high[0]~1_combout\,
	combout => \second_counter_high[3]~7_combout\);

-- Location: LCFF_X6_Y12_N15
\second_counter_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_high[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_high(3));

-- Location: LCCOMB_X6_Y12_N8
\second_counter_high[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high[0]~4_combout\ = (second_counter_high(0) & ((\second_counter_high[0]~1_combout\))) # (!second_counter_high(0) & (\second_counter_high[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \second_counter_high[3]~3_combout\,
	datac => second_counter_high(0),
	datad => \second_counter_high[0]~1_combout\,
	combout => \second_counter_high[0]~4_combout\);

-- Location: LCFF_X6_Y12_N9
\second_counter_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_high[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_high(0));

-- Location: LCCOMB_X5_Y12_N6
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = ((second_counter_high(3)) # ((second_counter_high(0)) # (!second_counter_high(1)))) # (!second_counter_high(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_high(2),
	datab => second_counter_high(3),
	datac => second_counter_high(0),
	datad => second_counter_high(1),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X6_Y12_N4
\second_counter_high[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high[3]~3_combout\ = (\second_counter_high[3]~2_combout\ & (!\Equal3~4_combout\ & (!\Equal3~9_combout\ & \Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \second_counter_high[3]~2_combout\,
	datab => \Equal3~4_combout\,
	datac => \Equal3~9_combout\,
	datad => \Equal7~0_combout\,
	combout => \second_counter_high[3]~3_combout\);

-- Location: LCCOMB_X6_Y12_N24
\second_counter_high[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high[1]~5_combout\ = (second_counter_high(1) & ((\second_counter_high[0]~1_combout\) # ((!second_counter_high(0) & \second_counter_high[3]~3_combout\)))) # (!second_counter_high(1) & (second_counter_high(0) & 
-- (\second_counter_high[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_counter_high(0),
	datab => \second_counter_high[3]~3_combout\,
	datac => second_counter_high(1),
	datad => \second_counter_high[0]~1_combout\,
	combout => \second_counter_high[1]~5_combout\);

-- Location: LCFF_X6_Y12_N25
\second_counter_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_high[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_high(1));

-- Location: LCFF_X6_Y12_N19
\second_display_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => second_counter_high(1),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_high(1));

-- Location: LCFF_X6_Y12_N23
\second_display_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => second_counter_high(3),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_high(3));

-- Location: LCFF_X6_Y12_N11
\second_display_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => second_counter_high(0),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_high(0));

-- Location: LCCOMB_X6_Y12_N2
\second_counter_high[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_counter_high[2]~6_combout\ = (\Add7~0_combout\ & ((\second_counter_high[3]~3_combout\) # ((second_counter_high(2) & \second_counter_high[0]~1_combout\)))) # (!\Add7~0_combout\ & (((second_counter_high(2) & \second_counter_high[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \second_counter_high[3]~3_combout\,
	datac => second_counter_high(2),
	datad => \second_counter_high[0]~1_combout\,
	combout => \second_counter_high[2]~6_combout\);

-- Location: LCFF_X6_Y12_N3
\second_counter_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_counter_high[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_counter_high(2));

-- Location: LCCOMB_X5_Y12_N16
\second_display_high[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \second_display_high[2]~feeder_combout\ = second_counter_high(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => second_counter_high(2),
	combout => \second_display_high[2]~feeder_combout\);

-- Location: LCFF_X5_Y12_N17
\second_display_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \second_display_high[2]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => second_display_high(2));

-- Location: LCCOMB_X28_Y8_N30
\LED8_second_display_high|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr6~0_combout\ = (second_display_high(1) & (second_display_high(3))) # (!second_display_high(1) & (second_display_high(2) $ (((!second_display_high(3) & second_display_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(3),
	datac => second_display_high(0),
	datad => second_display_high(2),
	combout => \LED8_second_display_high|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y8_N16
\LED8_second_display_high|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr5~0_combout\ = (second_display_high(3) & ((second_display_high(1)) # ((second_display_high(2))))) # (!second_display_high(3) & (second_display_high(2) & (second_display_high(1) $ (second_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(3),
	datac => second_display_high(0),
	datad => second_display_high(2),
	combout => \LED8_second_display_high|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y8_N14
\LED8_second_display_high|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr4~0_combout\ = (second_display_high(2) & (((second_display_high(3))))) # (!second_display_high(2) & (second_display_high(1) & ((second_display_high(3)) # (!second_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(3),
	datac => second_display_high(0),
	datad => second_display_high(2),
	combout => \LED8_second_display_high|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y8_N28
\LED8_second_display_high|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr3~0_combout\ = (second_display_high(1) & ((second_display_high(3)) # ((second_display_high(0) & second_display_high(2))))) # (!second_display_high(1) & (second_display_high(2) $ (((!second_display_high(3) & 
-- second_display_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(3),
	datac => second_display_high(0),
	datad => second_display_high(2),
	combout => \LED8_second_display_high|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y8_N18
\LED8_second_display_high|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr2~0_combout\ = (second_display_high(0)) # ((second_display_high(1) & (second_display_high(3))) # (!second_display_high(1) & ((second_display_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(3),
	datac => second_display_high(0),
	datad => second_display_high(2),
	combout => \LED8_second_display_high|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y8_N24
\LED8_second_display_high|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr1~0_combout\ = (second_display_high(0) & ((second_display_high(1)) # (second_display_high(3) $ (!second_display_high(2))))) # (!second_display_high(0) & ((second_display_high(2) & ((second_display_high(3)))) # 
-- (!second_display_high(2) & (second_display_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(3),
	datac => second_display_high(0),
	datad => second_display_high(2),
	combout => \LED8_second_display_high|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y8_N26
\LED8_second_display_high|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_second_display_high|WideOr0~0_combout\ = (second_display_high(1) & (!second_display_high(3) & ((!second_display_high(2)) # (!second_display_high(0))))) # (!second_display_high(1) & (second_display_high(3) $ (((second_display_high(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second_display_high(1),
	datab => second_display_high(3),
	datac => second_display_high(0),
	datad => second_display_high(2),
	combout => \LED8_second_display_high|WideOr0~0_combout\);

-- Location: LCCOMB_X4_Y14_N14
\minute_counter_low[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low[3]~2_combout\ = (\start~regout\ & !\Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~regout\,
	datad => \Equal7~0_combout\,
	combout => \minute_counter_low[3]~2_combout\);

-- Location: LCCOMB_X4_Y14_N0
\minute_counter_low[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low[3]~3_combout\ = (\Equal8~0_combout\ & (!\Equal3~4_combout\ & (\minute_counter_low[3]~2_combout\ & !\Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal3~4_combout\,
	datac => \minute_counter_low[3]~2_combout\,
	datad => \Equal3~9_combout\,
	combout => \minute_counter_low[3]~3_combout\);

-- Location: LCCOMB_X4_Y14_N28
\minute_counter_low[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low[0]~4_combout\ = (minute_counter_low(0) & (\minute_counter_low[0]~1_combout\)) # (!minute_counter_low(0) & ((\minute_counter_low[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minute_counter_low[0]~1_combout\,
	datac => minute_counter_low(0),
	datad => \minute_counter_low[3]~3_combout\,
	combout => \minute_counter_low[0]~4_combout\);

-- Location: LCFF_X4_Y14_N29
\minute_counter_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_low[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_low(0));

-- Location: LCCOMB_X4_Y14_N8
\minute_display_low[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_low[0]~feeder_combout\ = minute_counter_low(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => minute_counter_low(0),
	combout => \minute_display_low[0]~feeder_combout\);

-- Location: LCFF_X4_Y14_N9
\minute_display_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_low[0]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_low(0));

-- Location: LCCOMB_X4_Y14_N12
\minute_counter_low[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low[0]~1_combout\ = (\always0~0_combout\ & ((\minute_counter_low[0]~0_combout\) # ((\Equal3~4_combout\) # (\Equal3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minute_counter_low[0]~0_combout\,
	datab => \Equal3~4_combout\,
	datac => \always0~0_combout\,
	datad => \Equal3~9_combout\,
	combout => \minute_counter_low[0]~1_combout\);

-- Location: LCCOMB_X4_Y14_N30
\minute_counter_low[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low[1]~5_combout\ = (minute_counter_low(1) & ((\minute_counter_low[0]~1_combout\) # ((!minute_counter_low(0) & \minute_counter_low[3]~3_combout\)))) # (!minute_counter_low(1) & (minute_counter_low(0) & (\minute_counter_low[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_low(0),
	datab => \minute_counter_low[3]~3_combout\,
	datac => minute_counter_low(1),
	datad => \minute_counter_low[0]~1_combout\,
	combout => \minute_counter_low[1]~5_combout\);

-- Location: LCFF_X4_Y14_N31
\minute_counter_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_low[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_low(1));

-- Location: LCCOMB_X4_Y14_N10
\minute_display_low[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_low[1]~feeder_combout\ = minute_counter_low(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => minute_counter_low(1),
	combout => \minute_display_low[1]~feeder_combout\);

-- Location: LCFF_X4_Y14_N11
\minute_display_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_low[1]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_low(1));

-- Location: LCCOMB_X4_Y14_N4
\minute_counter_low[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low[2]~6_combout\ = (\Add8~0_combout\ & ((\minute_counter_low[3]~3_combout\) # ((minute_counter_low(2) & \minute_counter_low[0]~1_combout\)))) # (!\Add8~0_combout\ & (((minute_counter_low(2) & \minute_counter_low[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => \minute_counter_low[3]~3_combout\,
	datac => minute_counter_low(2),
	datad => \minute_counter_low[0]~1_combout\,
	combout => \minute_counter_low[2]~6_combout\);

-- Location: LCFF_X4_Y14_N5
\minute_counter_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_low[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_low(2));

-- Location: LCFF_X4_Y14_N25
\minute_display_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => minute_counter_low(2),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_low(2));

-- Location: LCCOMB_X4_Y14_N18
\minute_counter_low[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_low[3]~7_combout\ = (\Add8~1_combout\ & ((\minute_counter_low[3]~3_combout\) # ((minute_counter_low(3) & \minute_counter_low[0]~1_combout\)))) # (!\Add8~1_combout\ & (((minute_counter_low(3) & \minute_counter_low[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~1_combout\,
	datab => \minute_counter_low[3]~3_combout\,
	datac => minute_counter_low(3),
	datad => \minute_counter_low[0]~1_combout\,
	combout => \minute_counter_low[3]~7_combout\);

-- Location: LCFF_X4_Y14_N19
\minute_counter_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_low[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_low(3));

-- Location: LCCOMB_X4_Y14_N26
\minute_display_low[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_low[3]~feeder_combout\ = minute_counter_low(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => minute_counter_low(3),
	combout => \minute_display_low[3]~feeder_combout\);

-- Location: LCFF_X4_Y14_N27
\minute_display_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_low[3]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_low(3));

-- Location: LCCOMB_X1_Y14_N16
\LED8_minute_display_low|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr6~0_combout\ = (minute_display_low(1) & (((minute_display_low(3))))) # (!minute_display_low(1) & (minute_display_low(2) $ (((minute_display_low(0) & !minute_display_low(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(0),
	datab => minute_display_low(1),
	datac => minute_display_low(2),
	datad => minute_display_low(3),
	combout => \LED8_minute_display_low|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y14_N22
\LED8_minute_display_low|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr5~0_combout\ = (minute_display_low(2) & ((minute_display_low(3)) # (minute_display_low(0) $ (minute_display_low(1))))) # (!minute_display_low(2) & (((minute_display_low(1) & minute_display_low(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(0),
	datab => minute_display_low(1),
	datac => minute_display_low(2),
	datad => minute_display_low(3),
	combout => \LED8_minute_display_low|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y14_N28
\LED8_minute_display_low|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr4~0_combout\ = (minute_display_low(2) & (((minute_display_low(3))))) # (!minute_display_low(2) & (minute_display_low(1) & ((minute_display_low(3)) # (!minute_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(0),
	datab => minute_display_low(1),
	datac => minute_display_low(2),
	datad => minute_display_low(3),
	combout => \LED8_minute_display_low|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y14_N30
\LED8_minute_display_low|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr3~0_combout\ = (minute_display_low(1) & ((minute_display_low(3)) # ((minute_display_low(0) & minute_display_low(2))))) # (!minute_display_low(1) & (minute_display_low(2) $ (((minute_display_low(0) & 
-- !minute_display_low(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(0),
	datab => minute_display_low(1),
	datac => minute_display_low(2),
	datad => minute_display_low(3),
	combout => \LED8_minute_display_low|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y14_N12
\LED8_minute_display_low|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr2~0_combout\ = (minute_display_low(0)) # ((minute_display_low(1) & ((minute_display_low(3)))) # (!minute_display_low(1) & (minute_display_low(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(0),
	datab => minute_display_low(1),
	datac => minute_display_low(2),
	datad => minute_display_low(3),
	combout => \LED8_minute_display_low|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y14_N14
\LED8_minute_display_low|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr1~0_combout\ = (minute_display_low(0) & ((minute_display_low(1)) # (minute_display_low(2) $ (!minute_display_low(3))))) # (!minute_display_low(0) & ((minute_display_low(2) & ((minute_display_low(3)))) # 
-- (!minute_display_low(2) & (minute_display_low(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(0),
	datab => minute_display_low(1),
	datac => minute_display_low(2),
	datad => minute_display_low(3),
	combout => \LED8_minute_display_low|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y14_N0
\LED8_minute_display_low|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_low|WideOr0~0_combout\ = (minute_display_low(1) & (!minute_display_low(3) & ((!minute_display_low(2)) # (!minute_display_low(0))))) # (!minute_display_low(1) & ((minute_display_low(2) $ (minute_display_low(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_low(0),
	datab => minute_display_low(1),
	datac => minute_display_low(2),
	datad => minute_display_low(3),
	combout => \LED8_minute_display_low|WideOr0~0_combout\);

-- Location: LCCOMB_X4_Y14_N16
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (((minute_counter_low(2)) # (minute_counter_low(0))) # (!minute_counter_low(3))) # (!minute_counter_low(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_low(1),
	datab => minute_counter_low(3),
	datac => minute_counter_low(2),
	datad => minute_counter_low(0),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X5_Y14_N16
\minute_counter_high[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high[0]~0_combout\ = ((\Equal8~0_combout\ & \Equal9~0_combout\)) # (!\start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \start~regout\,
	datad => \Equal9~0_combout\,
	combout => \minute_counter_high[0]~0_combout\);

-- Location: LCCOMB_X6_Y14_N2
\minute_counter_high[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high[0]~1_combout\ = (\always0~0_combout\ & ((\Equal3~9_combout\) # ((\Equal3~4_combout\) # (\minute_counter_high[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datab => \always0~0_combout\,
	datac => \Equal3~4_combout\,
	datad => \minute_counter_high[0]~0_combout\,
	combout => \minute_counter_high[0]~1_combout\);

-- Location: LCCOMB_X6_Y14_N30
\minute_counter_high[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high[1]~5_combout\ = (minute_counter_high(1) & ((\minute_counter_high[0]~1_combout\) # ((!minute_counter_high(0) & \minute_counter_high[3]~3_combout\)))) # (!minute_counter_high(1) & (minute_counter_high(0) & 
-- (\minute_counter_high[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_high(0),
	datab => \minute_counter_high[3]~3_combout\,
	datac => minute_counter_high(1),
	datad => \minute_counter_high[0]~1_combout\,
	combout => \minute_counter_high[1]~5_combout\);

-- Location: LCFF_X6_Y14_N31
\minute_counter_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_high[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_high(1));

-- Location: LCCOMB_X6_Y14_N4
\minute_counter_high[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high[2]~6_combout\ = (\Add9~0_combout\ & ((\minute_counter_high[3]~3_combout\) # ((minute_counter_high(2) & \minute_counter_high[0]~1_combout\)))) # (!\Add9~0_combout\ & (((minute_counter_high(2) & \minute_counter_high[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \minute_counter_high[3]~3_combout\,
	datac => minute_counter_high(2),
	datad => \minute_counter_high[0]~1_combout\,
	combout => \minute_counter_high[2]~6_combout\);

-- Location: LCFF_X6_Y14_N5
\minute_counter_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_high[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_high(2));

-- Location: LCCOMB_X6_Y14_N24
\Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (minute_counter_high(0)) # (((minute_counter_high(3)) # (!minute_counter_high(2))) # (!minute_counter_high(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_counter_high(0),
	datab => minute_counter_high(1),
	datac => minute_counter_high(2),
	datad => minute_counter_high(3),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X5_Y14_N14
\minute_counter_high[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high[3]~2_combout\ = (\start~regout\ & !\Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~regout\,
	datad => \Equal8~0_combout\,
	combout => \minute_counter_high[3]~2_combout\);

-- Location: LCCOMB_X6_Y14_N8
\minute_counter_high[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high[3]~3_combout\ = (!\Equal3~9_combout\ & (\Equal9~0_combout\ & (!\Equal3~4_combout\ & \minute_counter_high[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datab => \Equal9~0_combout\,
	datac => \Equal3~4_combout\,
	datad => \minute_counter_high[3]~2_combout\,
	combout => \minute_counter_high[3]~3_combout\);

-- Location: LCCOMB_X6_Y14_N22
\minute_counter_high[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high[3]~7_combout\ = (\Add9~1_combout\ & ((\minute_counter_high[3]~3_combout\) # ((minute_counter_high(3) & \minute_counter_high[0]~1_combout\)))) # (!\Add9~1_combout\ & (((minute_counter_high(3) & \minute_counter_high[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~1_combout\,
	datab => \minute_counter_high[3]~3_combout\,
	datac => minute_counter_high(3),
	datad => \minute_counter_high[0]~1_combout\,
	combout => \minute_counter_high[3]~7_combout\);

-- Location: LCFF_X6_Y14_N23
\minute_counter_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_high[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_high(3));

-- Location: LCCOMB_X5_Y14_N18
\minute_display_high[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_high[3]~feeder_combout\ = minute_counter_high(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => minute_counter_high(3),
	combout => \minute_display_high[3]~feeder_combout\);

-- Location: LCFF_X5_Y14_N19
\minute_display_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_high[3]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_high(3));

-- Location: LCCOMB_X5_Y14_N12
\minute_display_high[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_high[2]~feeder_combout\ = minute_counter_high(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => minute_counter_high(2),
	combout => \minute_display_high[2]~feeder_combout\);

-- Location: LCFF_X5_Y14_N13
\minute_display_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_high[2]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_high(2));

-- Location: LCCOMB_X5_Y14_N10
\minute_display_high[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_display_high[1]~feeder_combout\ = minute_counter_high(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => minute_counter_high(1),
	combout => \minute_display_high[1]~feeder_combout\);

-- Location: LCFF_X5_Y14_N11
\minute_display_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_display_high[1]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_high(1));

-- Location: LCCOMB_X6_Y14_N12
\minute_counter_high[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \minute_counter_high[0]~4_combout\ = (minute_counter_high(0) & ((\minute_counter_high[0]~1_combout\))) # (!minute_counter_high(0) & (\minute_counter_high[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \minute_counter_high[3]~3_combout\,
	datac => minute_counter_high(0),
	datad => \minute_counter_high[0]~1_combout\,
	combout => \minute_counter_high[0]~4_combout\);

-- Location: LCFF_X6_Y14_N13
\minute_counter_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \minute_counter_high[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_counter_high(0));

-- Location: LCFF_X5_Y14_N29
\minute_display_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => minute_counter_high(0),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => minute_display_high(0));

-- Location: LCCOMB_X4_Y15_N18
\LED8_minute_display_high|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr6~0_combout\ = (minute_display_high(1) & (minute_display_high(3))) # (!minute_display_high(1) & (minute_display_high(2) $ (((!minute_display_high(3) & minute_display_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(1),
	datad => minute_display_high(0),
	combout => \LED8_minute_display_high|WideOr6~0_combout\);

-- Location: LCCOMB_X4_Y15_N28
\LED8_minute_display_high|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr5~0_combout\ = (minute_display_high(3) & ((minute_display_high(2)) # ((minute_display_high(1))))) # (!minute_display_high(3) & (minute_display_high(2) & (minute_display_high(1) $ (minute_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(1),
	datad => minute_display_high(0),
	combout => \LED8_minute_display_high|WideOr5~0_combout\);

-- Location: LCCOMB_X4_Y15_N2
\LED8_minute_display_high|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr4~0_combout\ = (minute_display_high(2) & (minute_display_high(3))) # (!minute_display_high(2) & (minute_display_high(1) & ((minute_display_high(3)) # (!minute_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(1),
	datad => minute_display_high(0),
	combout => \LED8_minute_display_high|WideOr4~0_combout\);

-- Location: LCCOMB_X4_Y15_N12
\LED8_minute_display_high|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr3~0_combout\ = (minute_display_high(1) & ((minute_display_high(3)) # ((minute_display_high(2) & minute_display_high(0))))) # (!minute_display_high(1) & (minute_display_high(2) $ (((!minute_display_high(3) & 
-- minute_display_high(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(1),
	datad => minute_display_high(0),
	combout => \LED8_minute_display_high|WideOr3~0_combout\);

-- Location: LCCOMB_X4_Y15_N22
\LED8_minute_display_high|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr2~0_combout\ = (minute_display_high(0)) # ((minute_display_high(1) & (minute_display_high(3))) # (!minute_display_high(1) & ((minute_display_high(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(1),
	datad => minute_display_high(0),
	combout => \LED8_minute_display_high|WideOr2~0_combout\);

-- Location: LCCOMB_X4_Y15_N0
\LED8_minute_display_high|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr1~0_combout\ = (minute_display_high(2) & ((minute_display_high(3)) # ((minute_display_high(1) & minute_display_high(0))))) # (!minute_display_high(2) & ((minute_display_high(1)) # ((!minute_display_high(3) & 
-- minute_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(1),
	datad => minute_display_high(0),
	combout => \LED8_minute_display_high|WideOr1~0_combout\);

-- Location: LCCOMB_X4_Y15_N30
\LED8_minute_display_high|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_minute_display_high|WideOr0~0_combout\ = (minute_display_high(2) & (!minute_display_high(3) & ((!minute_display_high(0)) # (!minute_display_high(1))))) # (!minute_display_high(2) & (minute_display_high(3) $ ((minute_display_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => minute_display_high(3),
	datab => minute_display_high(2),
	datac => minute_display_high(1),
	datad => minute_display_high(0),
	combout => \LED8_minute_display_high|WideOr0~0_combout\);

-- Location: LCCOMB_X5_Y17_N2
\hour_counter_low[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low[3]~2_combout\ = (\start~regout\ & !\Equal9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~regout\,
	datad => \Equal9~0_combout\,
	combout => \hour_counter_low[3]~2_combout\);

-- Location: LCCOMB_X5_Y17_N4
\hour_counter_low[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low[3]~3_combout\ = (\Equal10~0_combout\ & (!\Equal3~4_combout\ & (!\Equal3~9_combout\ & \hour_counter_low[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Equal3~4_combout\,
	datac => \Equal3~9_combout\,
	datad => \hour_counter_low[3]~2_combout\,
	combout => \hour_counter_low[3]~3_combout\);

-- Location: LCCOMB_X5_Y17_N12
\hour_counter_low[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low[1]~1_combout\ = (\always0~0_combout\ & ((\hour_counter_low[1]~0_combout\) # ((\Equal3~4_combout\) # (\Equal3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_counter_low[1]~0_combout\,
	datab => \Equal3~4_combout\,
	datac => \Equal3~9_combout\,
	datad => \always0~0_combout\,
	combout => \hour_counter_low[1]~1_combout\);

-- Location: LCCOMB_X5_Y17_N14
\hour_counter_low[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low[1]~5_combout\ = (hour_counter_low(1) & ((\hour_counter_low[1]~1_combout\) # ((!hour_counter_low(0) & \hour_counter_low[3]~3_combout\)))) # (!hour_counter_low(1) & (hour_counter_low(0) & (\hour_counter_low[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_low(0),
	datab => \hour_counter_low[3]~3_combout\,
	datac => hour_counter_low(1),
	datad => \hour_counter_low[1]~1_combout\,
	combout => \hour_counter_low[1]~5_combout\);

-- Location: LCFF_X5_Y17_N15
\hour_counter_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_low[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_low(1));

-- Location: LCFF_X5_Y17_N27
\hour_display_low[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => hour_counter_low(1),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_low(1));

-- Location: LCCOMB_X5_Y17_N24
\hour_counter_low[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low[2]~6_combout\ = (\Add10~0_combout\ & ((\hour_counter_low[3]~3_combout\) # ((hour_counter_low(2) & \hour_counter_low[1]~1_combout\)))) # (!\Add10~0_combout\ & (((hour_counter_low(2) & \hour_counter_low[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \hour_counter_low[3]~3_combout\,
	datac => hour_counter_low(2),
	datad => \hour_counter_low[1]~1_combout\,
	combout => \hour_counter_low[2]~6_combout\);

-- Location: LCFF_X5_Y17_N25
\hour_counter_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_low[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_low(2));

-- Location: LCFF_X5_Y17_N9
\hour_display_low[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => hour_counter_low(2),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_low(2));

-- Location: LCCOMB_X5_Y17_N18
\hour_counter_low[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low[3]~7_combout\ = (\Add10~1_combout\ & ((\hour_counter_low[3]~3_combout\) # ((hour_counter_low(3) & \hour_counter_low[1]~1_combout\)))) # (!\Add10~1_combout\ & (((hour_counter_low(3) & \hour_counter_low[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~1_combout\,
	datab => \hour_counter_low[3]~3_combout\,
	datac => hour_counter_low(3),
	datad => \hour_counter_low[1]~1_combout\,
	combout => \hour_counter_low[3]~7_combout\);

-- Location: LCFF_X5_Y17_N19
\hour_counter_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_low[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_low(3));

-- Location: LCCOMB_X5_Y17_N22
\hour_display_low[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_low[3]~feeder_combout\ = hour_counter_low(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hour_counter_low(3),
	combout => \hour_display_low[3]~feeder_combout\);

-- Location: LCFF_X5_Y17_N23
\hour_display_low[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_low[3]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_low(3));

-- Location: LCCOMB_X5_Y17_N0
\hour_counter_low[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_low[0]~4_combout\ = (hour_counter_low(0) & ((\hour_counter_low[1]~1_combout\))) # (!hour_counter_low(0) & (\hour_counter_low[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hour_counter_low[3]~3_combout\,
	datac => hour_counter_low(0),
	datad => \hour_counter_low[1]~1_combout\,
	combout => \hour_counter_low[0]~4_combout\);

-- Location: LCFF_X5_Y17_N1
\hour_counter_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_low[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_low(0));

-- Location: LCCOMB_X5_Y17_N28
\hour_display_low[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_low[0]~feeder_combout\ = hour_counter_low(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hour_counter_low(0),
	combout => \hour_display_low[0]~feeder_combout\);

-- Location: LCFF_X5_Y17_N29
\hour_display_low[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_low[0]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_low(0));

-- Location: LCCOMB_X1_Y17_N20
\LED8_hour_display_low|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr6~0_combout\ = (hour_display_low(1) & (((hour_display_low(3))))) # (!hour_display_low(1) & (hour_display_low(2) $ (((!hour_display_low(3) & hour_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(1),
	datab => hour_display_low(2),
	datac => hour_display_low(3),
	datad => hour_display_low(0),
	combout => \LED8_hour_display_low|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y17_N14
\LED8_hour_display_low|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr5~0_combout\ = (hour_display_low(2) & ((hour_display_low(3)) # (hour_display_low(1) $ (hour_display_low(0))))) # (!hour_display_low(2) & (hour_display_low(1) & (hour_display_low(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(1),
	datab => hour_display_low(2),
	datac => hour_display_low(3),
	datad => hour_display_low(0),
	combout => \LED8_hour_display_low|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y17_N12
\LED8_hour_display_low|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr4~0_combout\ = (hour_display_low(2) & (((hour_display_low(3))))) # (!hour_display_low(2) & (hour_display_low(1) & ((hour_display_low(3)) # (!hour_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(1),
	datab => hour_display_low(2),
	datac => hour_display_low(3),
	datad => hour_display_low(0),
	combout => \LED8_hour_display_low|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y17_N6
\LED8_hour_display_low|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr3~0_combout\ = (hour_display_low(1) & ((hour_display_low(3)) # ((hour_display_low(2) & hour_display_low(0))))) # (!hour_display_low(1) & (hour_display_low(2) $ (((!hour_display_low(3) & hour_display_low(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(1),
	datab => hour_display_low(2),
	datac => hour_display_low(3),
	datad => hour_display_low(0),
	combout => \LED8_hour_display_low|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y17_N24
\LED8_hour_display_low|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr2~0_combout\ = (hour_display_low(0)) # ((hour_display_low(1) & ((hour_display_low(3)))) # (!hour_display_low(1) & (hour_display_low(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(1),
	datab => hour_display_low(2),
	datac => hour_display_low(3),
	datad => hour_display_low(0),
	combout => \LED8_hour_display_low|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y17_N10
\LED8_hour_display_low|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr1~0_combout\ = (hour_display_low(2) & ((hour_display_low(3)) # ((hour_display_low(1) & hour_display_low(0))))) # (!hour_display_low(2) & ((hour_display_low(1)) # ((!hour_display_low(3) & hour_display_low(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(1),
	datab => hour_display_low(2),
	datac => hour_display_low(3),
	datad => hour_display_low(0),
	combout => \LED8_hour_display_low|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y17_N4
\LED8_hour_display_low|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_low|WideOr0~0_combout\ = (hour_display_low(1) & (!hour_display_low(3) & ((!hour_display_low(0)) # (!hour_display_low(2))))) # (!hour_display_low(1) & (hour_display_low(2) $ ((hour_display_low(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_low(1),
	datab => hour_display_low(2),
	datac => hour_display_low(3),
	datad => hour_display_low(0),
	combout => \LED8_hour_display_low|WideOr0~0_combout\);

-- Location: LCCOMB_X5_Y17_N16
\Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (hour_counter_low(2)) # (((hour_counter_low(0)) # (!hour_counter_low(1))) # (!hour_counter_low(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_low(2),
	datab => hour_counter_low(3),
	datac => hour_counter_low(1),
	datad => hour_counter_low(0),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X3_Y16_N20
\hour_counter_high~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high~2_combout\ = (!\Equal10~0_combout\ & (!hour_counter_high(0) & \msecond_counter_low[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal10~0_combout\,
	datac => hour_counter_high(0),
	datad => \msecond_counter_low[0]~0_combout\,
	combout => \hour_counter_high~2_combout\);

-- Location: LCCOMB_X3_Y16_N24
\hour_counter_high[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high[0]~6_combout\ = (\reset_flag~regout\ & (((!\Equal10~0_combout\ & \msecond_counter_low[0]~0_combout\)))) # (!\reset_flag~regout\ & ((\reset_out~regout\) # ((!\Equal10~0_combout\ & \msecond_counter_low[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_flag~regout\,
	datab => \reset_out~regout\,
	datac => \Equal10~0_combout\,
	datad => \msecond_counter_low[0]~0_combout\,
	combout => \hour_counter_high[0]~6_combout\);

-- Location: LCFF_X3_Y16_N21
\hour_counter_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_high~2_combout\,
	ena => \hour_counter_high[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_high(0));

-- Location: LCFF_X3_Y16_N11
\hour_display_high[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => hour_counter_high(0),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_high(0));

-- Location: LCCOMB_X3_Y16_N26
\hour_counter_high~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high~3_combout\ = (!\Equal10~0_combout\ & (\msecond_counter_low[0]~0_combout\ & (hour_counter_high(0) $ (hour_counter_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_high(0),
	datab => \Equal10~0_combout\,
	datac => hour_counter_high(1),
	datad => \msecond_counter_low[0]~0_combout\,
	combout => \hour_counter_high~3_combout\);

-- Location: LCFF_X3_Y16_N27
\hour_counter_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_high~3_combout\,
	ena => \hour_counter_high[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_high(1));

-- Location: LCCOMB_X3_Y16_N18
\hour_display_high[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_display_high[1]~feeder_combout\ = hour_counter_high(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => hour_counter_high(1),
	combout => \hour_display_high[1]~feeder_combout\);

-- Location: LCFF_X3_Y16_N19
\hour_display_high[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_display_high[1]~feeder_combout\,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_high(1));

-- Location: LCCOMB_X3_Y16_N14
\Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = hour_counter_high(2) $ (((hour_counter_high(0) & hour_counter_high(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour_counter_high(2),
	datac => hour_counter_high(0),
	datad => hour_counter_high(1),
	combout => \Add11~0_combout\);

-- Location: LCCOMB_X3_Y16_N4
\hour_counter_high~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high~4_combout\ = (\Add11~0_combout\ & (!\Equal10~0_combout\ & \msecond_counter_low[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~0_combout\,
	datac => \Equal10~0_combout\,
	datad => \msecond_counter_low[0]~0_combout\,
	combout => \hour_counter_high~4_combout\);

-- Location: LCFF_X3_Y16_N5
\hour_counter_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_high~4_combout\,
	ena => \hour_counter_high[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_high(2));

-- Location: LCFF_X3_Y16_N23
\hour_display_high[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => hour_counter_high(2),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_high(2));

-- Location: LCCOMB_X3_Y16_N30
\Add11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add11~1_combout\ = hour_counter_high(3) $ (((hour_counter_high(0) & (hour_counter_high(2) & hour_counter_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_counter_high(0),
	datab => hour_counter_high(2),
	datac => hour_counter_high(3),
	datad => hour_counter_high(1),
	combout => \Add11~1_combout\);

-- Location: LCCOMB_X3_Y16_N16
\hour_counter_high~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \hour_counter_high~5_combout\ = (\Add11~1_combout\ & (!\Equal10~0_combout\ & \msecond_counter_low[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~1_combout\,
	datac => \Equal10~0_combout\,
	datad => \msecond_counter_low[0]~0_combout\,
	combout => \hour_counter_high~5_combout\);

-- Location: LCFF_X3_Y16_N17
\hour_counter_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \hour_counter_high~5_combout\,
	ena => \hour_counter_high[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_counter_high(3));

-- Location: LCFF_X3_Y16_N29
\hour_display_high[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => hour_counter_high(3),
	sload => VCC,
	ena => \ALT_INV_display~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hour_display_high(3));

-- Location: LCCOMB_X3_Y16_N6
\LED8_hour_display_high|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr6~0_combout\ = (hour_display_high(1) & (((hour_display_high(3))))) # (!hour_display_high(1) & (hour_display_high(2) $ (((hour_display_high(0) & !hour_display_high(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(2),
	datad => hour_display_high(3),
	combout => \LED8_hour_display_high|WideOr6~0_combout\);

-- Location: LCCOMB_X3_Y16_N12
\LED8_hour_display_high|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr5~0_combout\ = (hour_display_high(2) & ((hour_display_high(3)) # (hour_display_high(0) $ (hour_display_high(1))))) # (!hour_display_high(2) & (((hour_display_high(1) & hour_display_high(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(2),
	datad => hour_display_high(3),
	combout => \LED8_hour_display_high|WideOr5~0_combout\);

-- Location: LCCOMB_X3_Y16_N22
\LED8_hour_display_high|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr4~0_combout\ = (hour_display_high(2) & (((hour_display_high(3))))) # (!hour_display_high(2) & (hour_display_high(1) & ((hour_display_high(3)) # (!hour_display_high(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(2),
	datad => hour_display_high(3),
	combout => \LED8_hour_display_high|WideOr4~0_combout\);

-- Location: LCCOMB_X3_Y16_N28
\LED8_hour_display_high|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr3~0_combout\ = (hour_display_high(1) & ((hour_display_high(3)) # ((hour_display_high(0) & hour_display_high(2))))) # (!hour_display_high(1) & (hour_display_high(2) $ (((hour_display_high(0) & !hour_display_high(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(3),
	datad => hour_display_high(2),
	combout => \LED8_hour_display_high|WideOr3~0_combout\);

-- Location: LCCOMB_X3_Y16_N8
\LED8_hour_display_high|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr2~0_combout\ = (hour_display_high(0)) # ((hour_display_high(1) & ((hour_display_high(3)))) # (!hour_display_high(1) & (hour_display_high(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(2),
	datad => hour_display_high(3),
	combout => \LED8_hour_display_high|WideOr2~0_combout\);

-- Location: LCCOMB_X3_Y16_N0
\LED8_hour_display_high|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr1~0_combout\ = (hour_display_high(0) & ((hour_display_high(1)) # (hour_display_high(2) $ (!hour_display_high(3))))) # (!hour_display_high(0) & ((hour_display_high(2) & ((hour_display_high(3)))) # (!hour_display_high(2) & 
-- (hour_display_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(2),
	datad => hour_display_high(3),
	combout => \LED8_hour_display_high|WideOr1~0_combout\);

-- Location: LCCOMB_X3_Y16_N2
\LED8_hour_display_high|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED8_hour_display_high|WideOr0~0_combout\ = (hour_display_high(1) & (!hour_display_high(3) & ((!hour_display_high(2)) # (!hour_display_high(0))))) # (!hour_display_high(1) & ((hour_display_high(2) $ (hour_display_high(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_display_high(0),
	datab => hour_display_high(1),
	datac => hour_display_high(2),
	datad => hour_display_high(3),
	combout => \LED8_hour_display_high|WideOr0~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y14_N24
\display_flag~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_flag~feeder_combout\ = \display_out~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \display_out~regout\,
	combout => \display_flag~feeder_combout\);

-- Location: LCFF_X5_Y14_N25
display_flag : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \display_flag~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_flag~regout\);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[0]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[1]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[2]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[3]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[4]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[5]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[6]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_low|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[0]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[1]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[2]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[3]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[4]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(4));

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[5]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[6]~I\ : cycloneii_io
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
	datain => \LED8_msecond_display_high|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[0]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[1]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[2]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[3]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[4]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[5]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[6]~I\ : cycloneii_io
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
	datain => \LED8_second_display_low|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[0]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[1]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[2]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[3]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[4]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[5]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[6]~I\ : cycloneii_io
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
	datain => \LED8_second_display_high|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[0]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[1]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[2]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[3]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[4]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[5]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[6]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_low|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[0]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[1]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[2]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[3]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[4]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[5]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex5[6]~I\ : cycloneii_io
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
	datain => \LED8_minute_display_high|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[0]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[1]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[2]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[3]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[4]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[5]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex6[6]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_low|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[0]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[1]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[2]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[3]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[4]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[5]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex7[6]~I\ : cycloneii_io
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
	datain => \LED8_hour_display_high|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(6));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led0~I\ : cycloneii_io
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
	datain => \reset_flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led0);

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led1~I\ : cycloneii_io
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
	datain => \start_flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led1);

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led2~I\ : cycloneii_io
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
	datain => \display_flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led2);
END structure;


