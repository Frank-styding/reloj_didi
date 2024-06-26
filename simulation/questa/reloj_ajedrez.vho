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
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "06/20/2024 20:32:22"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	reloj_ajedrez IS
    PORT (
	reset_n : IN std_logic;
	clk : IN std_logic;
	config : IN std_logic;
	ini_pausa : IN std_logic;
	jugador_act : IN std_logic;
	modo : IN std_logic_vector(1 DOWNTO 0);
	ver_disp : IN std_logic_vector(1 DOWNTO 0);
	display_0 : BUFFER std_logic_vector(6 DOWNTO 0);
	display_1 : BUFFER std_logic_vector(6 DOWNTO 0);
	display_2 : BUFFER std_logic_vector(6 DOWNTO 0);
	display_3 : BUFFER std_logic_vector(6 DOWNTO 0);
	display_4 : BUFFER std_logic_vector(6 DOWNTO 0);
	display_5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END reloj_ajedrez;

-- Design Ports Information
-- display_0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ver_disp[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ver_disp[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ini_pausa	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jugador_act	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- config	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modo[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reloj_ajedrez IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_config : std_logic;
SIGNAL ww_ini_pausa : std_logic;
SIGNAL ww_jugador_act : std_logic;
SIGNAL ww_modo : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ver_disp : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_display_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \con1|q_next_d[0]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \con0|q_next_d[0]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \jugador_1|g_reset_n~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \jugador_0|g_reset_n~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \con0|q_next_d[3]~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \con1|q_next_d[3]~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \display_0[0]~output_o\ : std_logic;
SIGNAL \display_0[1]~output_o\ : std_logic;
SIGNAL \display_0[2]~output_o\ : std_logic;
SIGNAL \display_0[3]~output_o\ : std_logic;
SIGNAL \display_0[4]~output_o\ : std_logic;
SIGNAL \display_0[5]~output_o\ : std_logic;
SIGNAL \display_0[6]~output_o\ : std_logic;
SIGNAL \display_1[0]~output_o\ : std_logic;
SIGNAL \display_1[1]~output_o\ : std_logic;
SIGNAL \display_1[2]~output_o\ : std_logic;
SIGNAL \display_1[3]~output_o\ : std_logic;
SIGNAL \display_1[4]~output_o\ : std_logic;
SIGNAL \display_1[5]~output_o\ : std_logic;
SIGNAL \display_1[6]~output_o\ : std_logic;
SIGNAL \display_2[0]~output_o\ : std_logic;
SIGNAL \display_2[1]~output_o\ : std_logic;
SIGNAL \display_2[2]~output_o\ : std_logic;
SIGNAL \display_2[3]~output_o\ : std_logic;
SIGNAL \display_2[4]~output_o\ : std_logic;
SIGNAL \display_2[5]~output_o\ : std_logic;
SIGNAL \display_2[6]~output_o\ : std_logic;
SIGNAL \display_3[0]~output_o\ : std_logic;
SIGNAL \display_3[1]~output_o\ : std_logic;
SIGNAL \display_3[2]~output_o\ : std_logic;
SIGNAL \display_3[3]~output_o\ : std_logic;
SIGNAL \display_3[4]~output_o\ : std_logic;
SIGNAL \display_3[5]~output_o\ : std_logic;
SIGNAL \display_3[6]~output_o\ : std_logic;
SIGNAL \display_4[0]~output_o\ : std_logic;
SIGNAL \display_4[1]~output_o\ : std_logic;
SIGNAL \display_4[2]~output_o\ : std_logic;
SIGNAL \display_4[3]~output_o\ : std_logic;
SIGNAL \display_4[4]~output_o\ : std_logic;
SIGNAL \display_4[5]~output_o\ : std_logic;
SIGNAL \display_4[6]~output_o\ : std_logic;
SIGNAL \display_5[0]~output_o\ : std_logic;
SIGNAL \display_5[1]~output_o\ : std_logic;
SIGNAL \display_5[2]~output_o\ : std_logic;
SIGNAL \display_5[3]~output_o\ : std_logic;
SIGNAL \display_5[4]~output_o\ : std_logic;
SIGNAL \display_5[5]~output_o\ : std_logic;
SIGNAL \display_5[6]~output_o\ : std_logic;
SIGNAL \ver_disp[1]~input_o\ : std_logic;
SIGNAL \ver_disp[0]~input_o\ : std_logic;
SIGNAL \mu2|y[5]~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \con1|q_next_u~4_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \div|Add0~0_combout\ : std_logic;
SIGNAL \div|Add0~1\ : std_logic;
SIGNAL \div|Add0~2_combout\ : std_logic;
SIGNAL \div|Add0~3\ : std_logic;
SIGNAL \div|Add0~4_combout\ : std_logic;
SIGNAL \div|Add0~5\ : std_logic;
SIGNAL \div|Add0~6_combout\ : std_logic;
SIGNAL \div|Add0~7\ : std_logic;
SIGNAL \div|Add0~8_combout\ : std_logic;
SIGNAL \div|Add0~9\ : std_logic;
SIGNAL \div|Add0~10_combout\ : std_logic;
SIGNAL \div|Add0~11\ : std_logic;
SIGNAL \div|Add0~12_combout\ : std_logic;
SIGNAL \div|Add0~13\ : std_logic;
SIGNAL \div|Add0~14_combout\ : std_logic;
SIGNAL \div|q_next[7]~11_combout\ : std_logic;
SIGNAL \div|Add0~15\ : std_logic;
SIGNAL \div|Add0~16_combout\ : std_logic;
SIGNAL \div|Add0~17\ : std_logic;
SIGNAL \div|Add0~18_combout\ : std_logic;
SIGNAL \div|Equal0~5_combout\ : std_logic;
SIGNAL \div|Equal0~7_combout\ : std_logic;
SIGNAL \div|Equal0~6_combout\ : std_logic;
SIGNAL \div|Add0~19\ : std_logic;
SIGNAL \div|Add0~20_combout\ : std_logic;
SIGNAL \div|Add0~21\ : std_logic;
SIGNAL \div|Add0~22_combout\ : std_logic;
SIGNAL \div|Add0~23\ : std_logic;
SIGNAL \div|Add0~24_combout\ : std_logic;
SIGNAL \div|q_next[12]~10_combout\ : std_logic;
SIGNAL \div|Add0~25\ : std_logic;
SIGNAL \div|Add0~26_combout\ : std_logic;
SIGNAL \div|q_next[13]~9_combout\ : std_logic;
SIGNAL \div|Add0~27\ : std_logic;
SIGNAL \div|Add0~28_combout\ : std_logic;
SIGNAL \div|q_next[14]~8_combout\ : std_logic;
SIGNAL \div|Add0~29\ : std_logic;
SIGNAL \div|Add0~30_combout\ : std_logic;
SIGNAL \div|q_next[15]~7_combout\ : std_logic;
SIGNAL \div|Add0~31\ : std_logic;
SIGNAL \div|Add0~32_combout\ : std_logic;
SIGNAL \div|Add0~33\ : std_logic;
SIGNAL \div|Add0~34_combout\ : std_logic;
SIGNAL \div|q_next[17]~6_combout\ : std_logic;
SIGNAL \div|Add0~35\ : std_logic;
SIGNAL \div|Add0~36_combout\ : std_logic;
SIGNAL \div|Add0~37\ : std_logic;
SIGNAL \div|Add0~38_combout\ : std_logic;
SIGNAL \div|q_next[19]~5_combout\ : std_logic;
SIGNAL \div|Add0~39\ : std_logic;
SIGNAL \div|Add0~40_combout\ : std_logic;
SIGNAL \div|q_next[20]~4_combout\ : std_logic;
SIGNAL \div|Add0~41\ : std_logic;
SIGNAL \div|Add0~42_combout\ : std_logic;
SIGNAL \div|q_next[21]~3_combout\ : std_logic;
SIGNAL \div|Equal0~1_combout\ : std_logic;
SIGNAL \div|Add0~43\ : std_logic;
SIGNAL \div|Add0~44_combout\ : std_logic;
SIGNAL \div|q_next[22]~2_combout\ : std_logic;
SIGNAL \div|Add0~45\ : std_logic;
SIGNAL \div|Add0~46_combout\ : std_logic;
SIGNAL \div|q_next[23]~1_combout\ : std_logic;
SIGNAL \div|Add0~47\ : std_logic;
SIGNAL \div|Add0~48_combout\ : std_logic;
SIGNAL \div|Add0~49\ : std_logic;
SIGNAL \div|Add0~50_combout\ : std_logic;
SIGNAL \div|q_next[25]~0_combout\ : std_logic;
SIGNAL \div|Equal0~0_combout\ : std_logic;
SIGNAL \div|Equal0~2_combout\ : std_logic;
SIGNAL \div|Equal0~3_combout\ : std_logic;
SIGNAL \div|Equal0~4_combout\ : std_logic;
SIGNAL \div|Equal0~8_combout\ : std_logic;
SIGNAL \div|clk_o_reg~feeder_combout\ : std_logic;
SIGNAL \div|clk_o_reg~q\ : std_logic;
SIGNAL \ini_pausa~input_o\ : std_logic;
SIGNAL \jugador_act~input_o\ : std_logic;
SIGNAL \fsm1|Selector1~0_combout\ : std_logic;
SIGNAL \jugador_1|contador2|Add0~0_combout\ : std_logic;
SIGNAL \modo[0]~input_o\ : std_logic;
SIGNAL \reg0|q_reg_1[0]~feeder_combout\ : std_logic;
SIGNAL \config~input_o\ : std_logic;
SIGNAL \fsm1|state_reg.ST_IDLE~0_combout\ : std_logic;
SIGNAL \fsm1|state_reg.ST_IDLE~q\ : std_logic;
SIGNAL \fsm1|state_next.ST_WAIT_CONFIG~0_combout\ : std_logic;
SIGNAL \fsm1|state_reg.ST_WAIT_CONFIG~q\ : std_logic;
SIGNAL \modo[1]~input_o\ : std_logic;
SIGNAL \jugador_1|Equal1~0_combout\ : std_logic;
SIGNAL \jugador_0|start_min[0]~0_combout\ : std_logic;
SIGNAL \jugador_1|g_reset_n~3clkctrl_outclk\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[0]~1_combout\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[0]~3_combout\ : std_logic;
SIGNAL \jugador_1|contador1|q_reg[0]~1_combout\ : std_logic;
SIGNAL \jugador_1|contador1|Add0~0_combout\ : std_logic;
SIGNAL \jugador_1|contador1|q_reg[0]~3_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~0_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~1\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~2_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Equal0~7_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~3\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~4_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~5\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~6_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~7\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~8_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~9\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~10_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~11\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~12_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~13\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~14_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|q_next[7]~11_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~15\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~16_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~17\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~18_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Equal0~5_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~19\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~20_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~21\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~22_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~23\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~24_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|q_next[12]~10_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~25\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~26_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|q_next[13]~9_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Equal0~3_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~27\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~28_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|q_next[14]~8_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~29\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~30_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|q_next[15]~7_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~31\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~32_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~33\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~34_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|q_next[17]~6_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~35\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~36_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~37\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~38_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|q_next[19]~5_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~39\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~40_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|q_next[20]~4_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~41\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~42_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|q_next[21]~3_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~43\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~44_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|q_next[22]~2_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~45\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~46_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|q_next[23]~1_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~47\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~48_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~49\ : std_logic;
SIGNAL \jugador_1|divisor1|Add0~50_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|q_next[25]~0_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Equal0~0_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Equal0~1_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Equal0~2_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Equal0~4_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Equal0~6_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|Equal0~8_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|clk_o_reg~feeder_combout\ : std_logic;
SIGNAL \jugador_1|divisor1|clk_o_reg~q\ : std_logic;
SIGNAL \jugador_1|Equal1~2_combout\ : std_logic;
SIGNAL \jugador_0|g_reset_n~3clkctrl_outclk\ : std_logic;
SIGNAL \jugador_0|contador3|q_reg[1]~1_combout\ : std_logic;
SIGNAL \jugador_0|contador3|Add0~0_combout\ : std_logic;
SIGNAL \jugador_1|Equal1~1_combout\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[3]~9_combout\ : std_logic;
SIGNAL \jugador_0|contador2|Add0~0_combout\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[0]~1_combout\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[0]~3_combout\ : std_logic;
SIGNAL \fsm1|Selector0~0_combout\ : std_logic;
SIGNAL \fsm1|state_reg.ST_PLAYERS_CONFIG~feeder_combout\ : std_logic;
SIGNAL \fsm1|state_reg.ST_PLAYERS_CONFIG~q\ : std_logic;
SIGNAL \fsm1|Selector1~1_combout\ : std_logic;
SIGNAL \fsm1|Selector1~2_combout\ : std_logic;
SIGNAL \fsm1|state_reg.ST_PLAYER_0_P~q\ : std_logic;
SIGNAL \jugador_0|contador3|Add0~3\ : std_logic;
SIGNAL \jugador_0|contador3|Add0~4_combout\ : std_logic;
SIGNAL \jugador_0|contador3|Add0~5\ : std_logic;
SIGNAL \jugador_0|contador3|Add0~6_combout\ : std_logic;
SIGNAL \jugador_0|contador3|q_next~0_combout\ : std_logic;
SIGNAL \jugador_0|contador3|Add0~7\ : std_logic;
SIGNAL \jugador_0|contador3|Add0~8_combout\ : std_logic;
SIGNAL \jugador_0|contador3|Add0~9\ : std_logic;
SIGNAL \jugador_0|contador3|Add0~10_combout\ : std_logic;
SIGNAL \jugador_0|contador3|q_next~1_combout\ : std_logic;
SIGNAL \jugador_0|contador3|Equal0~0_combout\ : std_logic;
SIGNAL \jugador_0|contador3|Equal0~1_combout\ : std_logic;
SIGNAL \fsm1|Selector2~0_combout\ : std_logic;
SIGNAL \fsm1|Selector2~1_combout\ : std_logic;
SIGNAL \fsm1|state_reg.ST_PLAYER_0~q\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~0_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~1\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~2_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~3\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~4_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~5\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~6_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~7\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~8_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~9\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~10_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~11\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~12_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~13\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~14_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|q_next[7]~11_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~15\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~16_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~17\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~18_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Equal0~5_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Equal0~7_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~19\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~20_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~21\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~22_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~23\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~24_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|q_next[12]~10_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~25\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~26_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|q_next[13]~9_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~27\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~28_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|q_next[14]~8_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~29\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~30_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|q_next[15]~7_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~31\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~32_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~33\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~34_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|q_next[17]~6_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~35\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~36_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~37\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~38_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|q_next[19]~5_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~39\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~40_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|q_next[20]~4_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~41\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~42_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|q_next[21]~3_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Equal0~1_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~43\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~44_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|q_next[22]~2_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~45\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~46_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|q_next[23]~1_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~47\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~48_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~49\ : std_logic;
SIGNAL \jugador_0|divisor1|Add0~50_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|q_next[25]~0_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Equal0~0_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Equal0~3_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Equal0~2_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Equal0~4_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Equal0~6_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|Equal0~8_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|clk_o_reg~feeder_combout\ : std_logic;
SIGNAL \jugador_0|divisor1|clk_o_reg~q\ : std_logic;
SIGNAL \jugador_0|en_seg~0_combout\ : std_logic;
SIGNAL \jugador_0|contador1|q_reg[0]~1_combout\ : std_logic;
SIGNAL \jugador_0|contador1|Add0~0_combout\ : std_logic;
SIGNAL \jugador_0|contador1|q_reg[0]~3_combout\ : std_logic;
SIGNAL \jugador_0|contador1|q_reg[0]~_emulated_q\ : std_logic;
SIGNAL \jugador_0|contador1|q_reg[0]~2_combout\ : std_logic;
SIGNAL \jugador_0|contador1|Add0~1\ : std_logic;
SIGNAL \jugador_0|contador1|Add0~2_combout\ : std_logic;
SIGNAL \jugador_0|contador1|Add0~3\ : std_logic;
SIGNAL \jugador_0|contador1|Add0~4_combout\ : std_logic;
SIGNAL \jugador_0|contador1|Add0~5\ : std_logic;
SIGNAL \jugador_0|contador1|Add0~6_combout\ : std_logic;
SIGNAL \jugador_0|contador1|Add0~7\ : std_logic;
SIGNAL \jugador_0|contador1|Add0~8_combout\ : std_logic;
SIGNAL \jugador_0|contador1|Add0~9\ : std_logic;
SIGNAL \jugador_0|contador1|Add0~10_combout\ : std_logic;
SIGNAL \jugador_0|comporador1|Equal0~0_combout\ : std_logic;
SIGNAL \jugador_0|contador1|q_reg[2]~10_combout\ : std_logic;
SIGNAL \jugador_0|contador1|q_reg[2]~5_combout\ : std_logic;
SIGNAL \jugador_0|contador1|q_reg[2]~_emulated_q\ : std_logic;
SIGNAL \jugador_0|contador1|q_reg[2]~4_combout\ : std_logic;
SIGNAL \jugador_0|en_min~combout\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[0]~_emulated_q\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[0]~2_combout\ : std_logic;
SIGNAL \jugador_0|contador2|Add0~1\ : std_logic;
SIGNAL \jugador_0|contador2|Add0~2_combout\ : std_logic;
SIGNAL \jugador_0|contador2|Add0~3\ : std_logic;
SIGNAL \jugador_0|contador2|Add0~5\ : std_logic;
SIGNAL \jugador_0|contador2|Add0~6_combout\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[3]~11_combout\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[3]~_emulated_q\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[3]~10_combout\ : std_logic;
SIGNAL \jugador_0|contador2|Add0~7\ : std_logic;
SIGNAL \jugador_0|contador2|Add0~8_combout\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[4]~13_combout\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[4]~_emulated_q\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[4]~12_combout\ : std_logic;
SIGNAL \jugador_0|contador2|Add0~9\ : std_logic;
SIGNAL \jugador_0|contador2|Add0~10_combout\ : std_logic;
SIGNAL \jugador_0|comporador2|Equal0~0_combout\ : std_logic;
SIGNAL \jugador_0|en_hor~combout\ : std_logic;
SIGNAL \jugador_0|contador3|Add0~1\ : std_logic;
SIGNAL \jugador_0|contador3|Add0~2_combout\ : std_logic;
SIGNAL \jugador_0|contador3|q_reg[1]~3_combout\ : std_logic;
SIGNAL \jugador_0|contador3|q_reg[1]~_emulated_q\ : std_logic;
SIGNAL \jugador_0|contador3|q_reg[1]~2_combout\ : std_logic;
SIGNAL \jugador_0|g_reset_n~0_combout\ : std_logic;
SIGNAL \jugador_0|max_value~2_combout\ : std_logic;
SIGNAL \jugador_0|max_value~1_combout\ : std_logic;
SIGNAL \jugador_0|g_reset_n~1_combout\ : std_logic;
SIGNAL \jugador_0|max_value~0_combout\ : std_logic;
SIGNAL \jugador_0|g_reset_n~2_combout\ : std_logic;
SIGNAL \jugador_0|g_reset_n~3_combout\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[2]~21_combout\ : std_logic;
SIGNAL \jugador_0|contador2|Add0~4_combout\ : std_logic;
SIGNAL \jugador_0|start_min[2]~1_combout\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[2]~5_combout\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[2]~7_combout\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[2]~_emulated_q\ : std_logic;
SIGNAL \jugador_0|contador2|q_reg[2]~6_combout\ : std_logic;
SIGNAL \jugador_0|comporador1|Equal0~1_combout\ : std_logic;
SIGNAL \jugador_0|min_value~0_combout\ : std_logic;
SIGNAL \fsm1|Selector4~0_combout\ : std_logic;
SIGNAL \fsm1|state_next.ST_PLAYER_0_M~0_combout\ : std_logic;
SIGNAL \fsm1|state_reg.ST_PLAYER_0_M~q\ : std_logic;
SIGNAL \jugador_1|en_seg~0_combout\ : std_logic;
SIGNAL \jugador_1|contador1|q_reg[0]~_emulated_q\ : std_logic;
SIGNAL \jugador_1|contador1|q_reg[0]~2_combout\ : std_logic;
SIGNAL \jugador_1|contador1|q_reg[2]~9_combout\ : std_logic;
SIGNAL \jugador_1|contador1|Add0~1\ : std_logic;
SIGNAL \jugador_1|contador1|Add0~2_combout\ : std_logic;
SIGNAL \jugador_1|contador1|Add0~3\ : std_logic;
SIGNAL \jugador_1|contador1|Add0~4_combout\ : std_logic;
SIGNAL \jugador_1|contador1|q_reg[2]~5_combout\ : std_logic;
SIGNAL \jugador_1|contador1|q_reg[2]~_emulated_q\ : std_logic;
SIGNAL \jugador_1|contador1|q_reg[2]~4_combout\ : std_logic;
SIGNAL \jugador_1|contador1|Add0~5\ : std_logic;
SIGNAL \jugador_1|contador1|Add0~6_combout\ : std_logic;
SIGNAL \jugador_1|contador1|Add0~7\ : std_logic;
SIGNAL \jugador_1|contador1|Add0~8_combout\ : std_logic;
SIGNAL \jugador_1|contador1|Add0~9\ : std_logic;
SIGNAL \jugador_1|contador1|Add0~10_combout\ : std_logic;
SIGNAL \jugador_1|comporador1|Equal0~0_combout\ : std_logic;
SIGNAL \jugador_1|en_min~combout\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[0]~_emulated_q\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[0]~2_combout\ : std_logic;
SIGNAL \jugador_1|contador2|Add0~1\ : std_logic;
SIGNAL \jugador_1|contador2|Add0~2_combout\ : std_logic;
SIGNAL \jugador_1|contador2|Add0~3\ : std_logic;
SIGNAL \jugador_1|contador2|Add0~5\ : std_logic;
SIGNAL \jugador_1|contador2|Add0~6_combout\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[3]~9_combout\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[3]~11_combout\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[3]~_emulated_q\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[3]~10_combout\ : std_logic;
SIGNAL \jugador_1|max_value~2_combout\ : std_logic;
SIGNAL \jugador_1|contador3|q_reg[1]~1_combout\ : std_logic;
SIGNAL \jugador_1|contador3|Add0~0_combout\ : std_logic;
SIGNAL \jugador_1|contador2|Add0~7\ : std_logic;
SIGNAL \jugador_1|contador2|Add0~8_combout\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[4]~13_combout\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[4]~_emulated_q\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[4]~12_combout\ : std_logic;
SIGNAL \jugador_1|contador2|Add0~9\ : std_logic;
SIGNAL \jugador_1|contador2|Add0~10_combout\ : std_logic;
SIGNAL \jugador_1|comporador2|Equal0~0_combout\ : std_logic;
SIGNAL \jugador_1|en_hor~combout\ : std_logic;
SIGNAL \jugador_1|contador3|Add0~1\ : std_logic;
SIGNAL \jugador_1|contador3|Add0~2_combout\ : std_logic;
SIGNAL \jugador_1|contador3|q_reg[1]~3_combout\ : std_logic;
SIGNAL \jugador_1|contador3|q_reg[1]~_emulated_q\ : std_logic;
SIGNAL \jugador_1|contador3|q_reg[1]~2_combout\ : std_logic;
SIGNAL \jugador_1|contador3|Add0~3\ : std_logic;
SIGNAL \jugador_1|contador3|Add0~4_combout\ : std_logic;
SIGNAL \jugador_1|contador3|Add0~9\ : std_logic;
SIGNAL \jugador_1|contador3|Add0~10_combout\ : std_logic;
SIGNAL \jugador_1|contador3|q_next~1_combout\ : std_logic;
SIGNAL \jugador_1|contador3|Equal0~0_combout\ : std_logic;
SIGNAL \jugador_1|contador3|Add0~5\ : std_logic;
SIGNAL \jugador_1|contador3|Add0~6_combout\ : std_logic;
SIGNAL \jugador_1|contador3|q_next~0_combout\ : std_logic;
SIGNAL \jugador_1|contador3|Add0~7\ : std_logic;
SIGNAL \jugador_1|contador3|Add0~8_combout\ : std_logic;
SIGNAL \jugador_1|max_value~1_combout\ : std_logic;
SIGNAL \jugador_1|g_reset_n~1_combout\ : std_logic;
SIGNAL \jugador_1|max_value~0_combout\ : std_logic;
SIGNAL \jugador_1|g_reset_n~0_combout\ : std_logic;
SIGNAL \jugador_1|g_reset_n~2_combout\ : std_logic;
SIGNAL \jugador_1|g_reset_n~3_combout\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[2]~18_combout\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[2]~5_combout\ : std_logic;
SIGNAL \jugador_1|contador2|Add0~4_combout\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[2]~7_combout\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[2]~_emulated_q\ : std_logic;
SIGNAL \jugador_1|contador2|q_reg[2]~6_combout\ : std_logic;
SIGNAL \jugador_1|comporador1|Equal0~1_combout\ : std_logic;
SIGNAL \jugador_1|min_value~0_combout\ : std_logic;
SIGNAL \jugador_1|contador3|Equal0~1_combout\ : std_logic;
SIGNAL \fsm1|Selector3~0_combout\ : std_logic;
SIGNAL \fsm1|Selector4~1_combout\ : std_logic;
SIGNAL \fsm1|Selector4~2_combout\ : std_logic;
SIGNAL \fsm1|state_reg.ST_PLAYER_1_P~q\ : std_logic;
SIGNAL \fsm1|Selector3~1_combout\ : std_logic;
SIGNAL \fsm1|state_reg.ST_PLAYER_1~q\ : std_logic;
SIGNAL \fsm1|state_next.ST_PLAYER_1_M~0_combout\ : std_logic;
SIGNAL \fsm1|state_reg.ST_PLAYER_1_M~q\ : std_logic;
SIGNAL \aux_con_1~combout\ : std_logic;
SIGNAL \con1|Add0~0_combout\ : std_logic;
SIGNAL \con1|q_next_u~5_combout\ : std_logic;
SIGNAL \con1|Equal0~0_combout\ : std_logic;
SIGNAL \con1|q_next_d[0]~0_combout\ : std_logic;
SIGNAL \con1|q_next_c[2]~0_combout\ : std_logic;
SIGNAL \con1|q_next_d[0]~1_combout\ : std_logic;
SIGNAL \con1|q_next_d[0]~1clkctrl_outclk\ : std_logic;
SIGNAL \con1|q_next_d[1]~2_combout\ : std_logic;
SIGNAL \con1|q_next_d[1]~3_combout\ : std_logic;
SIGNAL \con1|Add1~0_combout\ : std_logic;
SIGNAL \con1|q_next_d[2]~4_combout\ : std_logic;
SIGNAL \con1|q_next_d[2]~5_combout\ : std_logic;
SIGNAL \con1|Equal1~0_combout\ : std_logic;
SIGNAL \con1|Add1~1_combout\ : std_logic;
SIGNAL \con1|q_next_d[3]~6_combout\ : std_logic;
SIGNAL \con1|q_next_d[3]~7_combout\ : std_logic;
SIGNAL \con1|process_1~1_combout\ : std_logic;
SIGNAL \con1|q_next_u~3_combout\ : std_logic;
SIGNAL \con1|q_next_u~6_combout\ : std_logic;
SIGNAL \con1|process_1~0_combout\ : std_logic;
SIGNAL \con1|q_next_c[0]~1_combout\ : std_logic;
SIGNAL \con1|q_next_c[0]~2_combout\ : std_logic;
SIGNAL \con1|q_next_d[3]~8_combout\ : std_logic;
SIGNAL \con1|q_next_d[3]~8clkctrl_outclk\ : std_logic;
SIGNAL \con1|q_next_c[1]~3_combout\ : std_logic;
SIGNAL \con1|Add2~0_combout\ : std_logic;
SIGNAL \con1|q_next_c[2]~4_combout\ : std_logic;
SIGNAL \con1|q_next_c[3]~5_combout\ : std_logic;
SIGNAL \con1|process_1~2_combout\ : std_logic;
SIGNAL \con1|q_next_u~2_combout\ : std_logic;
SIGNAL \con1|hexa_u|Mux6~0_combout\ : std_logic;
SIGNAL \jugador_0|bin1|Mux4~1_combout\ : std_logic;
SIGNAL \jugador_0|bin1|Mux4~0_combout\ : std_logic;
SIGNAL \jugador_0|bin1|Mux4~2_combout\ : std_logic;
SIGNAL \jugador_0|bin1|Mux3~0_combout\ : std_logic;
SIGNAL \jugador_0|bin1|Mux3~1_combout\ : std_logic;
SIGNAL \jugador_0|bin1|Mux3~2_combout\ : std_logic;
SIGNAL \jugador_0|bin1|Mux5~1_combout\ : std_logic;
SIGNAL \jugador_0|bin1|Mux5~0_combout\ : std_logic;
SIGNAL \jugador_0|bin1|Mux5~2_combout\ : std_logic;
SIGNAL \jugador_0|hexa1|Mux6~0_combout\ : std_logic;
SIGNAL \jugador_1|bin1|Mux4~0_combout\ : std_logic;
SIGNAL \jugador_1|bin1|Mux4~1_combout\ : std_logic;
SIGNAL \jugador_1|bin1|Mux4~2_combout\ : std_logic;
SIGNAL \jugador_1|bin1|Mux5~1_combout\ : std_logic;
SIGNAL \jugador_1|bin1|Mux5~0_combout\ : std_logic;
SIGNAL \jugador_1|bin1|Mux5~2_combout\ : std_logic;
SIGNAL \jugador_1|bin1|Mux3~1_combout\ : std_logic;
SIGNAL \jugador_1|bin1|Mux3~0_combout\ : std_logic;
SIGNAL \jugador_1|bin1|Mux3~2_combout\ : std_logic;
SIGNAL \jugador_1|hexa1|Mux6~0_combout\ : std_logic;
SIGNAL \con0|Add0~0_combout\ : std_logic;
SIGNAL \con0|q_next_u~5_combout\ : std_logic;
SIGNAL \aux_con_0~combout\ : std_logic;
SIGNAL \con0|Equal0~0_combout\ : std_logic;
SIGNAL \con0|q_next_d[2]~4_combout\ : std_logic;
SIGNAL \con0|q_next_d[0]~0_combout\ : std_logic;
SIGNAL \con0|q_next_d[0]~1_combout\ : std_logic;
SIGNAL \con0|q_next_d[0]~1clkctrl_outclk\ : std_logic;
SIGNAL \con0|q_next_d[1]~2_combout\ : std_logic;
SIGNAL \con0|q_next_d[1]~3_combout\ : std_logic;
SIGNAL \con0|Add1~0_combout\ : std_logic;
SIGNAL \con0|q_next_d[2]~5_combout\ : std_logic;
SIGNAL \con0|process_1~1_combout\ : std_logic;
SIGNAL \con0|q_next_u~3_combout\ : std_logic;
SIGNAL \con0|q_next_u~4_combout\ : std_logic;
SIGNAL \con0|q_next_u~6_combout\ : std_logic;
SIGNAL \con0|process_1~0_combout\ : std_logic;
SIGNAL \con0|q_next_c[2]~2_combout\ : std_logic;
SIGNAL \con0|Add1~1_combout\ : std_logic;
SIGNAL \con0|q_next_d[3]~6_combout\ : std_logic;
SIGNAL \con0|q_next_d[3]~7_combout\ : std_logic;
SIGNAL \con0|Equal1~0_combout\ : std_logic;
SIGNAL \con0|q_next_d[3]~8_combout\ : std_logic;
SIGNAL \con0|q_next_d[3]~8clkctrl_outclk\ : std_logic;
SIGNAL \con0|q_next_c[0]~6_combout\ : std_logic;
SIGNAL \con0|q_next_c[1]~3_combout\ : std_logic;
SIGNAL \con0|Add2~0_combout\ : std_logic;
SIGNAL \con0|q_next_c[2]~4_combout\ : std_logic;
SIGNAL \con0|q_next_c[3]~5_combout\ : std_logic;
SIGNAL \con0|process_1~2_combout\ : std_logic;
SIGNAL \con0|q_next_u~2_combout\ : std_logic;
SIGNAL \con0|hexa_u|Mux6~0_combout\ : std_logic;
SIGNAL \mu0|y[0]~0_combout\ : std_logic;
SIGNAL \mu0|y[0]~1_combout\ : std_logic;
SIGNAL \jugador_0|hexa1|Mux5~0_combout\ : std_logic;
SIGNAL \jugador_1|hexa1|Mux5~0_combout\ : std_logic;
SIGNAL \con0|hexa_u|Mux5~0_combout\ : std_logic;
SIGNAL \mu0|y[1]~2_combout\ : std_logic;
SIGNAL \con1|hexa_u|Mux5~0_combout\ : std_logic;
SIGNAL \mu0|y[1]~3_combout\ : std_logic;
SIGNAL \jugador_1|hexa1|Mux4~0_combout\ : std_logic;
SIGNAL \con0|hexa_u|Mux4~0_combout\ : std_logic;
SIGNAL \mu0|y[2]~4_combout\ : std_logic;
SIGNAL \jugador_0|hexa1|Mux4~0_combout\ : std_logic;
SIGNAL \con1|hexa_u|Mux4~0_combout\ : std_logic;
SIGNAL \mu0|y[2]~5_combout\ : std_logic;
SIGNAL \jugador_1|hexa1|Mux3~0_combout\ : std_logic;
SIGNAL \con0|hexa_u|Mux3~0_combout\ : std_logic;
SIGNAL \mu0|y[3]~6_combout\ : std_logic;
SIGNAL \jugador_0|hexa1|Mux3~0_combout\ : std_logic;
SIGNAL \con1|hexa_u|Mux3~0_combout\ : std_logic;
SIGNAL \mu0|y[3]~7_combout\ : std_logic;
SIGNAL \jugador_1|hexa1|Mux2~0_combout\ : std_logic;
SIGNAL \con0|hexa_u|Mux2~0_combout\ : std_logic;
SIGNAL \mu0|y[4]~8_combout\ : std_logic;
SIGNAL \con1|hexa_u|Mux2~0_combout\ : std_logic;
SIGNAL \jugador_0|hexa1|Mux2~0_combout\ : std_logic;
SIGNAL \mu0|y[4]~9_combout\ : std_logic;
SIGNAL \con1|hexa_u|Mux1~0_combout\ : std_logic;
SIGNAL \jugador_0|hexa1|Mux1~0_combout\ : std_logic;
SIGNAL \jugador_1|hexa1|Mux1~0_combout\ : std_logic;
SIGNAL \con0|hexa_u|Mux1~0_combout\ : std_logic;
SIGNAL \mu0|y[5]~10_combout\ : std_logic;
SIGNAL \mu0|y[5]~11_combout\ : std_logic;
SIGNAL \jugador_1|hexa1|Mux0~0_combout\ : std_logic;
SIGNAL \con0|hexa_u|Mux0~0_combout\ : std_logic;
SIGNAL \mu0|y[6]~12_combout\ : std_logic;
SIGNAL \con1|hexa_u|Mux0~0_combout\ : std_logic;
SIGNAL \jugador_0|hexa1|Mux0~0_combout\ : std_logic;
SIGNAL \mu0|y[6]~13_combout\ : std_logic;
SIGNAL \con0|hexa_d|Mux6~0_combout\ : std_logic;
SIGNAL \con1|hexa_d|Mux6~0_combout\ : std_logic;
SIGNAL \mu1|y[0]~0_combout\ : std_logic;
SIGNAL \jugador_1|bin1|Mux1~0_combout\ : std_logic;
SIGNAL \jugador_0|bin1|Mux1~0_combout\ : std_logic;
SIGNAL \mu1|y[0]~1_combout\ : std_logic;
SIGNAL \mu1|y[5]~3_combout\ : std_logic;
SIGNAL \jugador_0|hexa2|Mux4~0_combout\ : std_logic;
SIGNAL \mu1|y[5]~4_combout\ : std_logic;
SIGNAL \jugador_0|bin1|Mux2~1_combout\ : std_logic;
SIGNAL \jugador_0|bin1|Mux2~0_combout\ : std_logic;
SIGNAL \jugador_0|bin1|Mux2~2_combout\ : std_logic;
SIGNAL \jugador_1|bin1|Mux2~0_combout\ : std_logic;
SIGNAL \jugador_1|bin1|Mux2~1_combout\ : std_logic;
SIGNAL \jugador_1|bin1|Mux2~2_combout\ : std_logic;
SIGNAL \mu1|y[5]~2_combout\ : std_logic;
SIGNAL \mu1|y[0]~5_combout\ : std_logic;
SIGNAL \con0|hexa_d|Mux5~0_combout\ : std_logic;
SIGNAL \con1|hexa_d|Mux5~0_combout\ : std_logic;
SIGNAL \mu1|y[1]~6_combout\ : std_logic;
SIGNAL \mu1|y[5]~7_combout\ : std_logic;
SIGNAL \mu1|y[1]~8_combout\ : std_logic;
SIGNAL \mu1|y[1]~9_combout\ : std_logic;
SIGNAL \con1|hexa_d|Mux4~0_combout\ : std_logic;
SIGNAL \jugador_0|hexa2|Mux4~1_combout\ : std_logic;
SIGNAL \con0|hexa_d|Mux4~0_combout\ : std_logic;
SIGNAL \jugador_1|hexa2|Mux4~0_combout\ : std_logic;
SIGNAL \mu1|y[2]~10_combout\ : std_logic;
SIGNAL \mu1|y[2]~11_combout\ : std_logic;
SIGNAL \mu1|y[3]~13_combout\ : std_logic;
SIGNAL \con0|hexa_d|Mux3~0_combout\ : std_logic;
SIGNAL \con1|hexa_d|Mux3~0_combout\ : std_logic;
SIGNAL \mu1|y[3]~12_combout\ : std_logic;
SIGNAL \mu1|y[3]~14_combout\ : std_logic;
SIGNAL \mu1|y[4]~16_combout\ : std_logic;
SIGNAL \con1|hexa_d|Mux2~0_combout\ : std_logic;
SIGNAL \con0|hexa_d|Mux2~0_combout\ : std_logic;
SIGNAL \mu1|y[4]~15_combout\ : std_logic;
SIGNAL \mu1|y[4]~17_combout\ : std_logic;
SIGNAL \con0|hexa_d|Mux1~0_combout\ : std_logic;
SIGNAL \con1|hexa_d|Mux1~0_combout\ : std_logic;
SIGNAL \mu1|y[5]~18_combout\ : std_logic;
SIGNAL \mu1|y[5]~19_combout\ : std_logic;
SIGNAL \mu1|y[5]~20_combout\ : std_logic;
SIGNAL \mu1|y[6]~22_combout\ : std_logic;
SIGNAL \con1|hexa_d|Mux0~0_combout\ : std_logic;
SIGNAL \con0|hexa_d|Mux0~0_combout\ : std_logic;
SIGNAL \mu1|y[6]~21_combout\ : std_logic;
SIGNAL \mu1|y[6]~23_combout\ : std_logic;
SIGNAL \con1|hexa_c|Mux6~0_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux4~1_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux4~0_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux4~2_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux3~1_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux3~0_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux3~2_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux5~1_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux5~0_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux5~2_combout\ : std_logic;
SIGNAL \jugador_0|hexa3|Mux6~0_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux3~1_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux3~0_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux3~2_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux4~1_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux4~0_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux4~2_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux5~0_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux5~1_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux5~2_combout\ : std_logic;
SIGNAL \jugador_1|hexa3|Mux6~0_combout\ : std_logic;
SIGNAL \con0|hexa_c|Mux6~0_combout\ : std_logic;
SIGNAL \mu2|y[0]~1_combout\ : std_logic;
SIGNAL \mu2|y[0]~2_combout\ : std_logic;
SIGNAL \con1|hexa_c|Mux5~0_combout\ : std_logic;
SIGNAL \jugador_0|hexa3|Mux5~0_combout\ : std_logic;
SIGNAL \con0|hexa_c|Mux5~0_combout\ : std_logic;
SIGNAL \jugador_1|hexa3|Mux5~0_combout\ : std_logic;
SIGNAL \mu2|y[1]~3_combout\ : std_logic;
SIGNAL \mu2|y[1]~4_combout\ : std_logic;
SIGNAL \jugador_0|hexa3|Mux4~0_combout\ : std_logic;
SIGNAL \con1|hexa_c|Mux4~0_combout\ : std_logic;
SIGNAL \jugador_1|hexa3|Mux4~0_combout\ : std_logic;
SIGNAL \con0|hexa_c|Mux4~0_combout\ : std_logic;
SIGNAL \mu2|y[2]~5_combout\ : std_logic;
SIGNAL \mu2|y[2]~6_combout\ : std_logic;
SIGNAL \jugador_0|hexa3|Mux3~0_combout\ : std_logic;
SIGNAL \con0|hexa_c|Mux3~0_combout\ : std_logic;
SIGNAL \jugador_1|hexa3|Mux3~0_combout\ : std_logic;
SIGNAL \mu2|y[3]~7_combout\ : std_logic;
SIGNAL \con1|hexa_c|Mux3~0_combout\ : std_logic;
SIGNAL \mu2|y[3]~8_combout\ : std_logic;
SIGNAL \con0|hexa_c|Mux2~0_combout\ : std_logic;
SIGNAL \jugador_1|hexa3|Mux2~0_combout\ : std_logic;
SIGNAL \mu2|y[4]~9_combout\ : std_logic;
SIGNAL \jugador_0|hexa3|Mux2~0_combout\ : std_logic;
SIGNAL \con1|hexa_c|Mux2~0_combout\ : std_logic;
SIGNAL \mu2|y[4]~10_combout\ : std_logic;
SIGNAL \con1|hexa_c|Mux1~0_combout\ : std_logic;
SIGNAL \con0|hexa_c|Mux1~0_combout\ : std_logic;
SIGNAL \jugador_1|hexa3|Mux1~0_combout\ : std_logic;
SIGNAL \mu2|y[5]~11_combout\ : std_logic;
SIGNAL \jugador_0|hexa3|Mux1~0_combout\ : std_logic;
SIGNAL \mu2|y[5]~12_combout\ : std_logic;
SIGNAL \jugador_0|hexa3|Mux0~0_combout\ : std_logic;
SIGNAL \jugador_1|hexa3|Mux0~0_combout\ : std_logic;
SIGNAL \con0|hexa_c|Mux0~0_combout\ : std_logic;
SIGNAL \mu2|y[6]~13_combout\ : std_logic;
SIGNAL \con1|hexa_c|Mux0~0_combout\ : std_logic;
SIGNAL \mu2|y[6]~14_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux2~0_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux2~1_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux2~2_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux0~0_combout\ : std_logic;
SIGNAL \jugador_0|bin2|Mux1~0_combout\ : std_logic;
SIGNAL \mu3|y~0_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux0~0_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux2~1_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux2~0_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux2~2_combout\ : std_logic;
SIGNAL \jugador_1|bin2|Mux1~0_combout\ : std_logic;
SIGNAL \mu3|y~1_combout\ : std_logic;
SIGNAL \mu3|y~2_combout\ : std_logic;
SIGNAL \mu3|y~4_combout\ : std_logic;
SIGNAL \jugador_0|hexa4|Mux5~0_combout\ : std_logic;
SIGNAL \mu3|y~3_combout\ : std_logic;
SIGNAL \mu3|y~5_combout\ : std_logic;
SIGNAL \jugador_1|hexa4|Mux4~0_combout\ : std_logic;
SIGNAL \mu3|y[2]~6_combout\ : std_logic;
SIGNAL \mu3|y[2]~7_combout\ : std_logic;
SIGNAL \mu3|y~8_combout\ : std_logic;
SIGNAL \mu3|y~9_combout\ : std_logic;
SIGNAL \mu3|y~10_combout\ : std_logic;
SIGNAL \mu3|y~11_combout\ : std_logic;
SIGNAL \mu3|y~13_combout\ : std_logic;
SIGNAL \mu3|y~12_combout\ : std_logic;
SIGNAL \mu3|y~14_combout\ : std_logic;
SIGNAL \mu3|y~15_combout\ : std_logic;
SIGNAL \mu3|y~16_combout\ : std_logic;
SIGNAL \mu3|y~17_combout\ : std_logic;
SIGNAL \mu3|y~18_combout\ : std_logic;
SIGNAL \mu3|y~19_combout\ : std_logic;
SIGNAL \mu3|y~20_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux5~1_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux5~0_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux5~2_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux3~1_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux3~0_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux3~2_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux4~1_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux4~0_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux4~2_combout\ : std_logic;
SIGNAL \jugador_0|hexa5|Mux6~0_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux3~1_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux3~0_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux3~2_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux4~1_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux4~0_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux4~2_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux5~1_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux5~0_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux5~2_combout\ : std_logic;
SIGNAL \jugador_1|hexa5|Mux6~0_combout\ : std_logic;
SIGNAL \mu4|y[0]~0_combout\ : std_logic;
SIGNAL \jugador_1|hexa5|Mux5~0_combout\ : std_logic;
SIGNAL \jugador_0|hexa5|Mux5~0_combout\ : std_logic;
SIGNAL \mu4|y[1]~1_combout\ : std_logic;
SIGNAL \jugador_1|hexa5|Mux4~0_combout\ : std_logic;
SIGNAL \jugador_0|hexa5|Mux4~0_combout\ : std_logic;
SIGNAL \mu4|y[2]~2_combout\ : std_logic;
SIGNAL \jugador_1|hexa5|Mux3~0_combout\ : std_logic;
SIGNAL \jugador_0|hexa5|Mux3~0_combout\ : std_logic;
SIGNAL \mu4|y[3]~3_combout\ : std_logic;
SIGNAL \jugador_1|hexa5|Mux2~0_combout\ : std_logic;
SIGNAL \jugador_0|hexa5|Mux2~0_combout\ : std_logic;
SIGNAL \mu4|y[4]~4_combout\ : std_logic;
SIGNAL \jugador_1|hexa5|Mux1~0_combout\ : std_logic;
SIGNAL \jugador_0|hexa5|Mux1~0_combout\ : std_logic;
SIGNAL \mu4|y[5]~5_combout\ : std_logic;
SIGNAL \jugador_0|hexa5|Mux0~0_combout\ : std_logic;
SIGNAL \jugador_1|hexa5|Mux0~0_combout\ : std_logic;
SIGNAL \mu4|y[6]~6_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux2~1_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux2~0_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux2~2_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux1~0_combout\ : std_logic;
SIGNAL \jugador_1|bin3|Mux0~0_combout\ : std_logic;
SIGNAL \mu5|y~49_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux2~1_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux2~0_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux2~2_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux1~0_combout\ : std_logic;
SIGNAL \jugador_0|bin3|Mux0~0_combout\ : std_logic;
SIGNAL \mu5|y~48_combout\ : std_logic;
SIGNAL \mu5|y~50_combout\ : std_logic;
SIGNAL \mu5|y~15_combout\ : std_logic;
SIGNAL \mu5|y~63_combout\ : std_logic;
SIGNAL \mu5|y~3_combout\ : std_logic;
SIGNAL \mu5|y~62_combout\ : std_logic;
SIGNAL \mu5|y~51_combout\ : std_logic;
SIGNAL \mu5|y[2]~27_combout\ : std_logic;
SIGNAL \mu5|y[2]~64_combout\ : std_logic;
SIGNAL \jugador_1|hexa6|Mux4~3_combout\ : std_logic;
SIGNAL \jugador_1|hexa6|Mux4~6_combout\ : std_logic;
SIGNAL \mu5|y[2]~52_combout\ : std_logic;
SIGNAL \mu5|y~54_combout\ : std_logic;
SIGNAL \mu5|y~53_combout\ : std_logic;
SIGNAL \mu5|y~55_combout\ : std_logic;
SIGNAL \mu5|y~57_combout\ : std_logic;
SIGNAL \mu5|y~56_combout\ : std_logic;
SIGNAL \mu5|y~58_combout\ : std_logic;
SIGNAL \mu5|y~60_combout\ : std_logic;
SIGNAL \mu5|y~59_combout\ : std_logic;
SIGNAL \mu5|y~61_combout\ : std_logic;
SIGNAL \mu5|y~66_combout\ : std_logic;
SIGNAL \mu5|y~42_combout\ : std_logic;
SIGNAL \mu5|y~65_combout\ : std_logic;
SIGNAL \mu5|y~67_combout\ : std_logic;
SIGNAL \con1|q_reg_d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \jugador_0|contador1|q_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \con1|q_reg_u\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \jugador_1|contador1|q_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \con0|q_reg_u\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \con0|q_reg_d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \con0|q_reg_c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \jugador_0|contador2|q_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \jugador_1|contador2|q_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \con1|q_reg_c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \jugador_1|contador3|q_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \jugador_1|divisor1|q_reg\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \jugador_0|contador3|q_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \reg0|q_reg_1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \jugador_0|divisor1|q_reg\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \div|q_reg\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \con1|q_next_d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \con0|q_next_d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \con0|q_next_c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \con1|q_next_c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\ : std_logic;
SIGNAL \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset_n <= reset_n;
ww_clk <= clk;
ww_config <= config;
ww_ini_pausa <= ini_pausa;
ww_jugador_act <= jugador_act;
ww_modo <= modo;
ww_ver_disp <= ver_disp;
display_0 <= ww_display_0;
display_1 <= ww_display_1;
display_2 <= ww_display_2;
display_3 <= ww_display_3;
display_4 <= ww_display_4;
display_5 <= ww_display_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\con1|q_next_d[0]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \con1|q_next_d[0]~1_combout\);

\con0|q_next_d[0]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \con0|q_next_d[0]~1_combout\);

\jugador_1|g_reset_n~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \jugador_1|g_reset_n~3_combout\);

\jugador_0|g_reset_n~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \jugador_0|g_reset_n~3_combout\);

\con0|q_next_d[3]~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \con0|q_next_d[3]~8_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\con1|q_next_d[3]~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \con1|q_next_d[3]~8_combout\);
\jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\ <= NOT \jugador_0|g_reset_n~3clkctrl_outclk\;
\jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\ <= NOT \jugador_1|g_reset_n~3clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\display_0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu0|y[0]~1_combout\,
	devoe => ww_devoe,
	o => \display_0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\display_0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu0|y[1]~3_combout\,
	devoe => ww_devoe,
	o => \display_0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\display_0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu0|y[2]~5_combout\,
	devoe => ww_devoe,
	o => \display_0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\display_0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu0|y[3]~7_combout\,
	devoe => ww_devoe,
	o => \display_0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\display_0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu0|y[4]~9_combout\,
	devoe => ww_devoe,
	o => \display_0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\display_0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu0|y[5]~11_combout\,
	devoe => ww_devoe,
	o => \display_0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\display_0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu0|y[6]~13_combout\,
	devoe => ww_devoe,
	o => \display_0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\display_1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu1|y[0]~5_combout\,
	devoe => ww_devoe,
	o => \display_1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\display_1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu1|y[1]~9_combout\,
	devoe => ww_devoe,
	o => \display_1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\display_1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu1|y[2]~11_combout\,
	devoe => ww_devoe,
	o => \display_1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\display_1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu1|y[3]~14_combout\,
	devoe => ww_devoe,
	o => \display_1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\display_1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu1|y[4]~17_combout\,
	devoe => ww_devoe,
	o => \display_1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\display_1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu1|y[5]~20_combout\,
	devoe => ww_devoe,
	o => \display_1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\display_1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu1|y[6]~23_combout\,
	devoe => ww_devoe,
	o => \display_1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\display_2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu2|y[0]~2_combout\,
	devoe => ww_devoe,
	o => \display_2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\display_2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu2|y[1]~4_combout\,
	devoe => ww_devoe,
	o => \display_2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\display_2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu2|y[2]~6_combout\,
	devoe => ww_devoe,
	o => \display_2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\display_2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu2|y[3]~8_combout\,
	devoe => ww_devoe,
	o => \display_2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\display_2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu2|y[4]~10_combout\,
	devoe => ww_devoe,
	o => \display_2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\display_2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu2|y[5]~12_combout\,
	devoe => ww_devoe,
	o => \display_2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\display_2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu2|y[6]~14_combout\,
	devoe => ww_devoe,
	o => \display_2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\display_3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu3|y~2_combout\,
	devoe => ww_devoe,
	o => \display_3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\display_3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu3|y~5_combout\,
	devoe => ww_devoe,
	o => \display_3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\display_3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu3|y[2]~7_combout\,
	devoe => ww_devoe,
	o => \display_3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\display_3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu3|y~11_combout\,
	devoe => ww_devoe,
	o => \display_3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\display_3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu3|y~14_combout\,
	devoe => ww_devoe,
	o => \display_3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\display_3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu3|y~17_combout\,
	devoe => ww_devoe,
	o => \display_3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\display_3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu3|y~20_combout\,
	devoe => ww_devoe,
	o => \display_3[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\display_4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu4|y[0]~0_combout\,
	devoe => ww_devoe,
	o => \display_4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\display_4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu4|y[1]~1_combout\,
	devoe => ww_devoe,
	o => \display_4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\display_4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu4|y[2]~2_combout\,
	devoe => ww_devoe,
	o => \display_4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\display_4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu4|y[3]~3_combout\,
	devoe => ww_devoe,
	o => \display_4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\display_4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu4|y[4]~4_combout\,
	devoe => ww_devoe,
	o => \display_4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\display_4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu4|y[5]~5_combout\,
	devoe => ww_devoe,
	o => \display_4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\display_4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu4|y[6]~6_combout\,
	devoe => ww_devoe,
	o => \display_4[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\display_5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu5|y~50_combout\,
	devoe => ww_devoe,
	o => \display_5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\display_5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu5|y~51_combout\,
	devoe => ww_devoe,
	o => \display_5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\display_5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu5|y[2]~52_combout\,
	devoe => ww_devoe,
	o => \display_5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\display_5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu5|y~55_combout\,
	devoe => ww_devoe,
	o => \display_5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\display_5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu5|y~58_combout\,
	devoe => ww_devoe,
	o => \display_5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\display_5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu5|y~61_combout\,
	devoe => ww_devoe,
	o => \display_5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\display_5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mu5|y~67_combout\,
	devoe => ww_devoe,
	o => \display_5[6]~output_o\);

-- Location: IOIBUF_X49_Y54_N1
\ver_disp[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ver_disp(1),
	o => \ver_disp[1]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\ver_disp[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ver_disp(0),
	o => \ver_disp[0]~input_o\);

-- Location: LCCOMB_X49_Y46_N16
\mu2|y[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[5]~0_combout\ = \ver_disp[1]~input_o\ $ (!\ver_disp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datad => \ver_disp[0]~input_o\,
	combout => \mu2|y[5]~0_combout\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X46_Y47_N14
\con1|q_next_u~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_u~4_combout\ = (\con1|q_next_u~3_combout\ & (\con1|q_reg_u\(0) $ (\con1|q_reg_u\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_u\(0),
	datac => \con1|q_reg_u\(1),
	datad => \con1|q_next_u~3_combout\,
	combout => \con1|q_next_u~4_combout\);

-- Location: IOIBUF_X51_Y54_N22
\reset_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y49_N6
\div|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~0_combout\ = \div|q_reg\(0) $ (VCC)
-- \div|Add0~1\ = CARRY(\div|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(0),
	datad => VCC,
	combout => \div|Add0~0_combout\,
	cout => \div|Add0~1\);

-- Location: FF_X55_Y49_N7
\div|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(0));

-- Location: LCCOMB_X55_Y49_N8
\div|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~2_combout\ = (\div|q_reg\(1) & (!\div|Add0~1\)) # (!\div|q_reg\(1) & ((\div|Add0~1\) # (GND)))
-- \div|Add0~3\ = CARRY((!\div|Add0~1\) # (!\div|q_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|q_reg\(1),
	datad => VCC,
	cin => \div|Add0~1\,
	combout => \div|Add0~2_combout\,
	cout => \div|Add0~3\);

-- Location: FF_X55_Y49_N9
\div|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(1));

-- Location: LCCOMB_X55_Y49_N10
\div|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~4_combout\ = (\div|q_reg\(2) & (\div|Add0~3\ $ (GND))) # (!\div|q_reg\(2) & (!\div|Add0~3\ & VCC))
-- \div|Add0~5\ = CARRY((\div|q_reg\(2) & !\div|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(2),
	datad => VCC,
	cin => \div|Add0~3\,
	combout => \div|Add0~4_combout\,
	cout => \div|Add0~5\);

-- Location: FF_X55_Y49_N11
\div|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(2));

-- Location: LCCOMB_X55_Y49_N12
\div|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~6_combout\ = (\div|q_reg\(3) & (!\div|Add0~5\)) # (!\div|q_reg\(3) & ((\div|Add0~5\) # (GND)))
-- \div|Add0~7\ = CARRY((!\div|Add0~5\) # (!\div|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(3),
	datad => VCC,
	cin => \div|Add0~5\,
	combout => \div|Add0~6_combout\,
	cout => \div|Add0~7\);

-- Location: FF_X55_Y49_N13
\div|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(3));

-- Location: LCCOMB_X55_Y49_N14
\div|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~8_combout\ = (\div|q_reg\(4) & (\div|Add0~7\ $ (GND))) # (!\div|q_reg\(4) & (!\div|Add0~7\ & VCC))
-- \div|Add0~9\ = CARRY((\div|q_reg\(4) & !\div|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|q_reg\(4),
	datad => VCC,
	cin => \div|Add0~7\,
	combout => \div|Add0~8_combout\,
	cout => \div|Add0~9\);

-- Location: FF_X55_Y49_N15
\div|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~8_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(4));

-- Location: LCCOMB_X55_Y49_N16
\div|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~10_combout\ = (\div|q_reg\(5) & (!\div|Add0~9\)) # (!\div|q_reg\(5) & ((\div|Add0~9\) # (GND)))
-- \div|Add0~11\ = CARRY((!\div|Add0~9\) # (!\div|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|q_reg\(5),
	datad => VCC,
	cin => \div|Add0~9\,
	combout => \div|Add0~10_combout\,
	cout => \div|Add0~11\);

-- Location: FF_X55_Y49_N17
\div|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~10_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(5));

-- Location: LCCOMB_X55_Y49_N18
\div|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~12_combout\ = (\div|q_reg\(6) & (\div|Add0~11\ $ (GND))) # (!\div|q_reg\(6) & (!\div|Add0~11\ & VCC))
-- \div|Add0~13\ = CARRY((\div|q_reg\(6) & !\div|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|q_reg\(6),
	datad => VCC,
	cin => \div|Add0~11\,
	combout => \div|Add0~12_combout\,
	cout => \div|Add0~13\);

-- Location: FF_X55_Y49_N19
\div|q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~12_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(6));

-- Location: LCCOMB_X55_Y49_N20
\div|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~14_combout\ = (\div|q_reg\(7) & (!\div|Add0~13\)) # (!\div|q_reg\(7) & ((\div|Add0~13\) # (GND)))
-- \div|Add0~15\ = CARRY((!\div|Add0~13\) # (!\div|q_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|q_reg\(7),
	datad => VCC,
	cin => \div|Add0~13\,
	combout => \div|Add0~14_combout\,
	cout => \div|Add0~15\);

-- Location: LCCOMB_X55_Y49_N2
\div|q_next[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|q_next[7]~11_combout\ = (\div|Add0~14_combout\ & !\div|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Add0~14_combout\,
	datad => \div|Equal0~8_combout\,
	combout => \div|q_next[7]~11_combout\);

-- Location: FF_X55_Y49_N3
\div|q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q_next[7]~11_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(7));

-- Location: LCCOMB_X55_Y49_N22
\div|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~16_combout\ = (\div|q_reg\(8) & (\div|Add0~15\ $ (GND))) # (!\div|q_reg\(8) & (!\div|Add0~15\ & VCC))
-- \div|Add0~17\ = CARRY((\div|q_reg\(8) & !\div|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(8),
	datad => VCC,
	cin => \div|Add0~15\,
	combout => \div|Add0~16_combout\,
	cout => \div|Add0~17\);

-- Location: FF_X55_Y49_N23
\div|q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~16_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(8));

-- Location: LCCOMB_X55_Y49_N24
\div|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~18_combout\ = (\div|q_reg\(9) & (!\div|Add0~17\)) # (!\div|q_reg\(9) & ((\div|Add0~17\) # (GND)))
-- \div|Add0~19\ = CARRY((!\div|Add0~17\) # (!\div|q_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|q_reg\(9),
	datad => VCC,
	cin => \div|Add0~17\,
	combout => \div|Add0~18_combout\,
	cout => \div|Add0~19\);

-- Location: FF_X55_Y49_N25
\div|q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~18_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(9));

-- Location: LCCOMB_X55_Y49_N4
\div|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~5_combout\ = (!\div|q_reg\(8) & (\div|q_reg\(6) & (!\div|q_reg\(7) & !\div|q_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(8),
	datab => \div|q_reg\(6),
	datac => \div|q_reg\(7),
	datad => \div|q_reg\(9),
	combout => \div|Equal0~5_combout\);

-- Location: LCCOMB_X54_Y48_N24
\div|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~7_combout\ = (\div|q_reg\(0) & \div|q_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|q_reg\(0),
	datad => \div|q_reg\(1),
	combout => \div|Equal0~7_combout\);

-- Location: LCCOMB_X54_Y49_N24
\div|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~6_combout\ = (\div|q_reg\(3) & (\div|q_reg\(4) & (\div|q_reg\(2) & \div|q_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(3),
	datab => \div|q_reg\(4),
	datac => \div|q_reg\(2),
	datad => \div|q_reg\(5),
	combout => \div|Equal0~6_combout\);

-- Location: LCCOMB_X55_Y49_N26
\div|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~20_combout\ = (\div|q_reg\(10) & (\div|Add0~19\ $ (GND))) # (!\div|q_reg\(10) & (!\div|Add0~19\ & VCC))
-- \div|Add0~21\ = CARRY((\div|q_reg\(10) & !\div|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(10),
	datad => VCC,
	cin => \div|Add0~19\,
	combout => \div|Add0~20_combout\,
	cout => \div|Add0~21\);

-- Location: FF_X55_Y49_N27
\div|q_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~20_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(10));

-- Location: LCCOMB_X55_Y49_N28
\div|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~22_combout\ = (\div|q_reg\(11) & (!\div|Add0~21\)) # (!\div|q_reg\(11) & ((\div|Add0~21\) # (GND)))
-- \div|Add0~23\ = CARRY((!\div|Add0~21\) # (!\div|q_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|q_reg\(11),
	datad => VCC,
	cin => \div|Add0~21\,
	combout => \div|Add0~22_combout\,
	cout => \div|Add0~23\);

-- Location: FF_X55_Y49_N29
\div|q_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~22_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(11));

-- Location: LCCOMB_X55_Y49_N30
\div|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~24_combout\ = (\div|q_reg\(12) & (\div|Add0~23\ $ (GND))) # (!\div|q_reg\(12) & (!\div|Add0~23\ & VCC))
-- \div|Add0~25\ = CARRY((\div|q_reg\(12) & !\div|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|q_reg\(12),
	datad => VCC,
	cin => \div|Add0~23\,
	combout => \div|Add0~24_combout\,
	cout => \div|Add0~25\);

-- Location: LCCOMB_X55_Y49_N0
\div|q_next[12]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|q_next[12]~10_combout\ = (\div|Add0~24_combout\ & !\div|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|Add0~24_combout\,
	datad => \div|Equal0~8_combout\,
	combout => \div|q_next[12]~10_combout\);

-- Location: FF_X55_Y49_N1
\div|q_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q_next[12]~10_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(12));

-- Location: LCCOMB_X55_Y48_N0
\div|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~26_combout\ = (\div|q_reg\(13) & (!\div|Add0~25\)) # (!\div|q_reg\(13) & ((\div|Add0~25\) # (GND)))
-- \div|Add0~27\ = CARRY((!\div|Add0~25\) # (!\div|q_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(13),
	datad => VCC,
	cin => \div|Add0~25\,
	combout => \div|Add0~26_combout\,
	cout => \div|Add0~27\);

-- Location: LCCOMB_X54_Y48_N16
\div|q_next[13]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|q_next[13]~9_combout\ = (!\div|Equal0~8_combout\ & \div|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Equal0~8_combout\,
	datac => \div|Add0~26_combout\,
	combout => \div|q_next[13]~9_combout\);

-- Location: FF_X54_Y48_N17
\div|q_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q_next[13]~9_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(13));

-- Location: LCCOMB_X55_Y48_N2
\div|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~28_combout\ = (\div|q_reg\(14) & (\div|Add0~27\ $ (GND))) # (!\div|q_reg\(14) & (!\div|Add0~27\ & VCC))
-- \div|Add0~29\ = CARRY((\div|q_reg\(14) & !\div|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(14),
	datad => VCC,
	cin => \div|Add0~27\,
	combout => \div|Add0~28_combout\,
	cout => \div|Add0~29\);

-- Location: LCCOMB_X55_Y48_N26
\div|q_next[14]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|q_next[14]~8_combout\ = (!\div|Equal0~8_combout\ & \div|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div|Equal0~8_combout\,
	datad => \div|Add0~28_combout\,
	combout => \div|q_next[14]~8_combout\);

-- Location: FF_X55_Y48_N27
\div|q_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q_next[14]~8_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(14));

-- Location: LCCOMB_X55_Y48_N4
\div|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~30_combout\ = (\div|q_reg\(15) & (!\div|Add0~29\)) # (!\div|q_reg\(15) & ((\div|Add0~29\) # (GND)))
-- \div|Add0~31\ = CARRY((!\div|Add0~29\) # (!\div|q_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|q_reg\(15),
	datad => VCC,
	cin => \div|Add0~29\,
	combout => \div|Add0~30_combout\,
	cout => \div|Add0~31\);

-- Location: LCCOMB_X55_Y48_N28
\div|q_next[15]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|q_next[15]~7_combout\ = (\div|Add0~30_combout\ & !\div|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|Add0~30_combout\,
	datad => \div|Equal0~8_combout\,
	combout => \div|q_next[15]~7_combout\);

-- Location: FF_X55_Y48_N29
\div|q_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q_next[15]~7_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(15));

-- Location: LCCOMB_X55_Y48_N6
\div|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~32_combout\ = (\div|q_reg\(16) & (\div|Add0~31\ $ (GND))) # (!\div|q_reg\(16) & (!\div|Add0~31\ & VCC))
-- \div|Add0~33\ = CARRY((\div|q_reg\(16) & !\div|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(16),
	datad => VCC,
	cin => \div|Add0~31\,
	combout => \div|Add0~32_combout\,
	cout => \div|Add0~33\);

-- Location: FF_X55_Y48_N7
\div|q_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~32_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(16));

-- Location: LCCOMB_X55_Y48_N8
\div|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~34_combout\ = (\div|q_reg\(17) & (!\div|Add0~33\)) # (!\div|q_reg\(17) & ((\div|Add0~33\) # (GND)))
-- \div|Add0~35\ = CARRY((!\div|Add0~33\) # (!\div|q_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(17),
	datad => VCC,
	cin => \div|Add0~33\,
	combout => \div|Add0~34_combout\,
	cout => \div|Add0~35\);

-- Location: LCCOMB_X55_Y48_N30
\div|q_next[17]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|q_next[17]~6_combout\ = (\div|Add0~34_combout\ & !\div|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|Add0~34_combout\,
	datad => \div|Equal0~8_combout\,
	combout => \div|q_next[17]~6_combout\);

-- Location: FF_X55_Y48_N31
\div|q_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q_next[17]~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(17));

-- Location: LCCOMB_X55_Y48_N10
\div|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~36_combout\ = (\div|q_reg\(18) & (\div|Add0~35\ $ (GND))) # (!\div|q_reg\(18) & (!\div|Add0~35\ & VCC))
-- \div|Add0~37\ = CARRY((\div|q_reg\(18) & !\div|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(18),
	datad => VCC,
	cin => \div|Add0~35\,
	combout => \div|Add0~36_combout\,
	cout => \div|Add0~37\);

-- Location: FF_X55_Y48_N11
\div|q_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~36_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(18));

-- Location: LCCOMB_X55_Y48_N12
\div|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~38_combout\ = (\div|q_reg\(19) & (!\div|Add0~37\)) # (!\div|q_reg\(19) & ((\div|Add0~37\) # (GND)))
-- \div|Add0~39\ = CARRY((!\div|Add0~37\) # (!\div|q_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(19),
	datad => VCC,
	cin => \div|Add0~37\,
	combout => \div|Add0~38_combout\,
	cout => \div|Add0~39\);

-- Location: LCCOMB_X54_Y48_N10
\div|q_next[19]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|q_next[19]~5_combout\ = (!\div|Equal0~8_combout\ & \div|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Equal0~8_combout\,
	datac => \div|Add0~38_combout\,
	combout => \div|q_next[19]~5_combout\);

-- Location: FF_X54_Y48_N11
\div|q_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q_next[19]~5_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(19));

-- Location: LCCOMB_X55_Y48_N14
\div|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~40_combout\ = (\div|q_reg\(20) & (\div|Add0~39\ $ (GND))) # (!\div|q_reg\(20) & (!\div|Add0~39\ & VCC))
-- \div|Add0~41\ = CARRY((\div|q_reg\(20) & !\div|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|q_reg\(20),
	datad => VCC,
	cin => \div|Add0~39\,
	combout => \div|Add0~40_combout\,
	cout => \div|Add0~41\);

-- Location: LCCOMB_X54_Y48_N22
\div|q_next[20]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|q_next[20]~4_combout\ = (!\div|Equal0~8_combout\ & \div|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Equal0~8_combout\,
	datac => \div|Add0~40_combout\,
	combout => \div|q_next[20]~4_combout\);

-- Location: FF_X54_Y48_N23
\div|q_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q_next[20]~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(20));

-- Location: LCCOMB_X55_Y48_N16
\div|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~42_combout\ = (\div|q_reg\(21) & (!\div|Add0~41\)) # (!\div|q_reg\(21) & ((\div|Add0~41\) # (GND)))
-- \div|Add0~43\ = CARRY((!\div|Add0~41\) # (!\div|q_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(21),
	datad => VCC,
	cin => \div|Add0~41\,
	combout => \div|Add0~42_combout\,
	cout => \div|Add0~43\);

-- Location: LCCOMB_X54_Y48_N26
\div|q_next[21]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|q_next[21]~3_combout\ = (!\div|Equal0~8_combout\ & \div|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|Equal0~8_combout\,
	datad => \div|Add0~42_combout\,
	combout => \div|q_next[21]~3_combout\);

-- Location: FF_X54_Y48_N27
\div|q_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q_next[21]~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(21));

-- Location: LCCOMB_X54_Y48_N12
\div|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~1_combout\ = (\div|q_reg\(20) & (\div|q_reg\(19) & (!\div|q_reg\(18) & \div|q_reg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(20),
	datab => \div|q_reg\(19),
	datac => \div|q_reg\(18),
	datad => \div|q_reg\(21),
	combout => \div|Equal0~1_combout\);

-- Location: LCCOMB_X55_Y48_N18
\div|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~44_combout\ = (\div|q_reg\(22) & (\div|Add0~43\ $ (GND))) # (!\div|q_reg\(22) & (!\div|Add0~43\ & VCC))
-- \div|Add0~45\ = CARRY((\div|q_reg\(22) & !\div|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|q_reg\(22),
	datad => VCC,
	cin => \div|Add0~43\,
	combout => \div|Add0~44_combout\,
	cout => \div|Add0~45\);

-- Location: LCCOMB_X54_Y48_N18
\div|q_next[22]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|q_next[22]~2_combout\ = (!\div|Equal0~8_combout\ & \div|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|Equal0~8_combout\,
	datad => \div|Add0~44_combout\,
	combout => \div|q_next[22]~2_combout\);

-- Location: FF_X54_Y48_N19
\div|q_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q_next[22]~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(22));

-- Location: LCCOMB_X55_Y48_N20
\div|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~46_combout\ = (\div|q_reg\(23) & (!\div|Add0~45\)) # (!\div|q_reg\(23) & ((\div|Add0~45\) # (GND)))
-- \div|Add0~47\ = CARRY((!\div|Add0~45\) # (!\div|q_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div|q_reg\(23),
	datad => VCC,
	cin => \div|Add0~45\,
	combout => \div|Add0~46_combout\,
	cout => \div|Add0~47\);

-- Location: LCCOMB_X54_Y48_N6
\div|q_next[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|q_next[23]~1_combout\ = (!\div|Equal0~8_combout\ & \div|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Equal0~8_combout\,
	datac => \div|Add0~46_combout\,
	combout => \div|q_next[23]~1_combout\);

-- Location: FF_X54_Y48_N7
\div|q_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q_next[23]~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(23));

-- Location: LCCOMB_X55_Y48_N22
\div|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~48_combout\ = (\div|q_reg\(24) & (\div|Add0~47\ $ (GND))) # (!\div|q_reg\(24) & (!\div|Add0~47\ & VCC))
-- \div|Add0~49\ = CARRY((\div|q_reg\(24) & !\div|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(24),
	datad => VCC,
	cin => \div|Add0~47\,
	combout => \div|Add0~48_combout\,
	cout => \div|Add0~49\);

-- Location: FF_X55_Y48_N23
\div|q_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|Add0~48_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(24));

-- Location: LCCOMB_X55_Y48_N24
\div|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Add0~50_combout\ = \div|Add0~49\ $ (\div|q_reg\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \div|q_reg\(25),
	cin => \div|Add0~49\,
	combout => \div|Add0~50_combout\);

-- Location: LCCOMB_X54_Y48_N14
\div|q_next[25]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|q_next[25]~0_combout\ = (!\div|Equal0~8_combout\ & \div|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|Equal0~8_combout\,
	datad => \div|Add0~50_combout\,
	combout => \div|q_next[25]~0_combout\);

-- Location: FF_X54_Y48_N15
\div|q_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|q_next[25]~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|q_reg\(25));

-- Location: LCCOMB_X54_Y48_N20
\div|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~0_combout\ = (\div|q_reg\(22) & (\div|q_reg\(23) & (\div|q_reg\(25) & !\div|q_reg\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(22),
	datab => \div|q_reg\(23),
	datac => \div|q_reg\(25),
	datad => \div|q_reg\(24),
	combout => \div|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y48_N4
\div|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~2_combout\ = (!\div|q_reg\(16) & (\div|q_reg\(15) & (\div|q_reg\(17) & \div|q_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(16),
	datab => \div|q_reg\(15),
	datac => \div|q_reg\(17),
	datad => \div|q_reg\(14),
	combout => \div|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y48_N2
\div|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~3_combout\ = (\div|q_reg\(13) & (\div|q_reg\(12) & (!\div|q_reg\(11) & !\div|q_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|q_reg\(13),
	datab => \div|q_reg\(12),
	datac => \div|q_reg\(11),
	datad => \div|q_reg\(10),
	combout => \div|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y48_N28
\div|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~4_combout\ = (\div|Equal0~1_combout\ & (\div|Equal0~0_combout\ & (\div|Equal0~2_combout\ & \div|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Equal0~1_combout\,
	datab => \div|Equal0~0_combout\,
	datac => \div|Equal0~2_combout\,
	datad => \div|Equal0~3_combout\,
	combout => \div|Equal0~4_combout\);

-- Location: LCCOMB_X54_Y48_N30
\div|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|Equal0~8_combout\ = (\div|Equal0~5_combout\ & (\div|Equal0~7_combout\ & (\div|Equal0~6_combout\ & \div|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|Equal0~5_combout\,
	datab => \div|Equal0~7_combout\,
	datac => \div|Equal0~6_combout\,
	datad => \div|Equal0~4_combout\,
	combout => \div|Equal0~8_combout\);

-- Location: LCCOMB_X54_Y48_N8
\div|clk_o_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div|clk_o_reg~feeder_combout\ = \div|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|Equal0~8_combout\,
	combout => \div|clk_o_reg~feeder_combout\);

-- Location: FF_X54_Y48_N9
\div|clk_o_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div|clk_o_reg~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div|clk_o_reg~q\);

-- Location: IOIBUF_X51_Y54_N29
\ini_pausa~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ini_pausa,
	o => \ini_pausa~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\jugador_act~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jugador_act,
	o => \jugador_act~input_o\);

-- Location: LCCOMB_X45_Y50_N14
\fsm1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|Selector1~0_combout\ = (\ini_pausa~input_o\ & !\jugador_act~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ini_pausa~input_o\,
	datad => \jugador_act~input_o\,
	combout => \fsm1|Selector1~0_combout\);

-- Location: LCCOMB_X44_Y43_N12
\jugador_1|contador2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|Add0~0_combout\ = \jugador_1|contador2|q_reg[0]~2_combout\ $ (VCC)
-- \jugador_1|contador2|Add0~1\ = CARRY(\jugador_1|contador2|q_reg[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador2|q_reg[0]~2_combout\,
	datad => VCC,
	combout => \jugador_1|contador2|Add0~0_combout\,
	cout => \jugador_1|contador2|Add0~1\);

-- Location: IOIBUF_X51_Y54_N1
\modo[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modo(0),
	o => \modo[0]~input_o\);

-- Location: LCCOMB_X46_Y43_N18
\reg0|q_reg_1[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \reg0|q_reg_1[0]~feeder_combout\ = \modo[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \modo[0]~input_o\,
	combout => \reg0|q_reg_1[0]~feeder_combout\);

-- Location: IOIBUF_X58_Y54_N29
\config~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_config,
	o => \config~input_o\);

-- Location: LCCOMB_X46_Y50_N4
\fsm1|state_reg.ST_IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|state_reg.ST_IDLE~0_combout\ = (\fsm1|state_reg.ST_IDLE~q\) # ((\div|clk_o_reg~q\ & \config~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|clk_o_reg~q\,
	datac => \fsm1|state_reg.ST_IDLE~q\,
	datad => \config~input_o\,
	combout => \fsm1|state_reg.ST_IDLE~0_combout\);

-- Location: FF_X44_Y50_N19
\fsm1|state_reg.ST_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fsm1|state_reg.ST_IDLE~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|state_reg.ST_IDLE~q\);

-- Location: LCCOMB_X45_Y50_N18
\fsm1|state_next.ST_WAIT_CONFIG~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|state_next.ST_WAIT_CONFIG~0_combout\ = (\config~input_o\ & ((\fsm1|state_reg.ST_WAIT_CONFIG~q\) # (!\fsm1|state_reg.ST_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|state_reg.ST_WAIT_CONFIG~q\,
	datac => \config~input_o\,
	datad => \fsm1|state_reg.ST_IDLE~q\,
	combout => \fsm1|state_next.ST_WAIT_CONFIG~0_combout\);

-- Location: FF_X45_Y50_N15
\fsm1|state_reg.ST_WAIT_CONFIG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \fsm1|state_next.ST_WAIT_CONFIG~0_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \div|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|state_reg.ST_WAIT_CONFIG~q\);

-- Location: FF_X46_Y43_N19
\reg0|q_reg_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \reg0|q_reg_1[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \fsm1|state_reg.ST_WAIT_CONFIG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|q_reg_1\(0));

-- Location: IOIBUF_X54_Y54_N29
\modo[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modo(1),
	o => \modo[1]~input_o\);

-- Location: FF_X46_Y43_N29
\reg0|q_reg_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \modo[1]~input_o\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \fsm1|state_reg.ST_WAIT_CONFIG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|q_reg_1\(1));

-- Location: LCCOMB_X46_Y43_N24
\jugador_1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|Equal1~0_combout\ = (\reg0|q_reg_1\(0) & \reg0|q_reg_1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg0|q_reg_1\(0),
	datad => \reg0|q_reg_1\(1),
	combout => \jugador_1|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y43_N30
\jugador_0|start_min[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|start_min[0]~0_combout\ = ((\reg0|q_reg_1\(0) & !\jugador_1|Equal1~0_combout\)) # (!\reg0|q_reg_1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg0|q_reg_1\(0),
	datac => \reg0|q_reg_1\(1),
	datad => \jugador_1|Equal1~0_combout\,
	combout => \jugador_0|start_min[0]~0_combout\);

-- Location: CLKCTRL_G12
\jugador_1|g_reset_n~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \jugador_1|g_reset_n~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \jugador_1|g_reset_n~3clkctrl_outclk\);

-- Location: LCCOMB_X45_Y43_N22
\jugador_1|contador2|q_reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|q_reg[0]~1_combout\ = (GLOBAL(\jugador_1|g_reset_n~3clkctrl_outclk\) & ((\jugador_0|start_min[0]~0_combout\))) # (!GLOBAL(\jugador_1|g_reset_n~3clkctrl_outclk\) & (\jugador_1|contador2|q_reg[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[0]~1_combout\,
	datac => \jugador_0|start_min[0]~0_combout\,
	datad => \jugador_1|g_reset_n~3clkctrl_outclk\,
	combout => \jugador_1|contador2|q_reg[0]~1_combout\);

-- Location: LCCOMB_X45_Y43_N28
\jugador_1|contador2|q_reg[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|q_reg[0]~3_combout\ = \jugador_1|contador2|Add0~0_combout\ $ (\jugador_1|contador2|q_reg[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|Add0~0_combout\,
	datad => \jugador_1|contador2|q_reg[0]~1_combout\,
	combout => \jugador_1|contador2|q_reg[0]~3_combout\);

-- Location: LCCOMB_X45_Y43_N6
\jugador_1|contador1|q_reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador1|q_reg[0]~1_combout\ = (GLOBAL(\jugador_1|g_reset_n~3clkctrl_outclk\) & (\jugador_1|Equal1~0_combout\)) # (!GLOBAL(\jugador_1|g_reset_n~3clkctrl_outclk\) & ((\jugador_1|contador1|q_reg[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|Equal1~0_combout\,
	datac => \jugador_1|contador1|q_reg[0]~1_combout\,
	datad => \jugador_1|g_reset_n~3clkctrl_outclk\,
	combout => \jugador_1|contador1|q_reg[0]~1_combout\);

-- Location: LCCOMB_X45_Y43_N8
\jugador_1|contador1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador1|Add0~0_combout\ = \jugador_1|contador1|q_reg[0]~2_combout\ $ (VCC)
-- \jugador_1|contador1|Add0~1\ = CARRY(\jugador_1|contador1|q_reg[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[0]~2_combout\,
	datad => VCC,
	combout => \jugador_1|contador1|Add0~0_combout\,
	cout => \jugador_1|contador1|Add0~1\);

-- Location: LCCOMB_X45_Y43_N4
\jugador_1|contador1|q_reg[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador1|q_reg[0]~3_combout\ = \jugador_1|contador1|q_reg[0]~1_combout\ $ (\jugador_1|contador1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[0]~1_combout\,
	datab => \jugador_1|contador1|Add0~0_combout\,
	combout => \jugador_1|contador1|q_reg[0]~3_combout\);

-- Location: LCCOMB_X57_Y48_N6
\jugador_1|divisor1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~0_combout\ = \jugador_1|divisor1|q_reg\(0) $ (VCC)
-- \jugador_1|divisor1|Add0~1\ = CARRY(\jugador_1|divisor1|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(0),
	datad => VCC,
	combout => \jugador_1|divisor1|Add0~0_combout\,
	cout => \jugador_1|divisor1|Add0~1\);

-- Location: FF_X57_Y48_N7
\jugador_1|divisor1|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~0_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(0));

-- Location: LCCOMB_X57_Y48_N8
\jugador_1|divisor1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~2_combout\ = (\jugador_1|divisor1|q_reg\(1) & (!\jugador_1|divisor1|Add0~1\)) # (!\jugador_1|divisor1|q_reg\(1) & ((\jugador_1|divisor1|Add0~1\) # (GND)))
-- \jugador_1|divisor1|Add0~3\ = CARRY((!\jugador_1|divisor1|Add0~1\) # (!\jugador_1|divisor1|q_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|q_reg\(1),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~1\,
	combout => \jugador_1|divisor1|Add0~2_combout\,
	cout => \jugador_1|divisor1|Add0~3\);

-- Location: FF_X57_Y48_N9
\jugador_1|divisor1|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~2_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(1));

-- Location: LCCOMB_X57_Y48_N4
\jugador_1|divisor1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Equal0~7_combout\ = (\jugador_1|divisor1|q_reg\(1) & \jugador_1|divisor1|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_1|divisor1|q_reg\(1),
	datad => \jugador_1|divisor1|q_reg\(0),
	combout => \jugador_1|divisor1|Equal0~7_combout\);

-- Location: LCCOMB_X57_Y48_N10
\jugador_1|divisor1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~4_combout\ = (\jugador_1|divisor1|q_reg\(2) & (\jugador_1|divisor1|Add0~3\ $ (GND))) # (!\jugador_1|divisor1|q_reg\(2) & (!\jugador_1|divisor1|Add0~3\ & VCC))
-- \jugador_1|divisor1|Add0~5\ = CARRY((\jugador_1|divisor1|q_reg\(2) & !\jugador_1|divisor1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(2),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~3\,
	combout => \jugador_1|divisor1|Add0~4_combout\,
	cout => \jugador_1|divisor1|Add0~5\);

-- Location: FF_X57_Y48_N11
\jugador_1|divisor1|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~4_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(2));

-- Location: LCCOMB_X57_Y48_N12
\jugador_1|divisor1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~6_combout\ = (\jugador_1|divisor1|q_reg\(3) & (!\jugador_1|divisor1|Add0~5\)) # (!\jugador_1|divisor1|q_reg\(3) & ((\jugador_1|divisor1|Add0~5\) # (GND)))
-- \jugador_1|divisor1|Add0~7\ = CARRY((!\jugador_1|divisor1|Add0~5\) # (!\jugador_1|divisor1|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(3),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~5\,
	combout => \jugador_1|divisor1|Add0~6_combout\,
	cout => \jugador_1|divisor1|Add0~7\);

-- Location: FF_X57_Y48_N13
\jugador_1|divisor1|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~6_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(3));

-- Location: LCCOMB_X57_Y48_N14
\jugador_1|divisor1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~8_combout\ = (\jugador_1|divisor1|q_reg\(4) & (\jugador_1|divisor1|Add0~7\ $ (GND))) # (!\jugador_1|divisor1|q_reg\(4) & (!\jugador_1|divisor1|Add0~7\ & VCC))
-- \jugador_1|divisor1|Add0~9\ = CARRY((\jugador_1|divisor1|q_reg\(4) & !\jugador_1|divisor1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|q_reg\(4),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~7\,
	combout => \jugador_1|divisor1|Add0~8_combout\,
	cout => \jugador_1|divisor1|Add0~9\);

-- Location: FF_X57_Y48_N15
\jugador_1|divisor1|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~8_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(4));

-- Location: LCCOMB_X57_Y48_N16
\jugador_1|divisor1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~10_combout\ = (\jugador_1|divisor1|q_reg\(5) & (!\jugador_1|divisor1|Add0~9\)) # (!\jugador_1|divisor1|q_reg\(5) & ((\jugador_1|divisor1|Add0~9\) # (GND)))
-- \jugador_1|divisor1|Add0~11\ = CARRY((!\jugador_1|divisor1|Add0~9\) # (!\jugador_1|divisor1|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|q_reg\(5),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~9\,
	combout => \jugador_1|divisor1|Add0~10_combout\,
	cout => \jugador_1|divisor1|Add0~11\);

-- Location: FF_X57_Y48_N17
\jugador_1|divisor1|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~10_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(5));

-- Location: LCCOMB_X57_Y48_N18
\jugador_1|divisor1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~12_combout\ = (\jugador_1|divisor1|q_reg\(6) & (\jugador_1|divisor1|Add0~11\ $ (GND))) # (!\jugador_1|divisor1|q_reg\(6) & (!\jugador_1|divisor1|Add0~11\ & VCC))
-- \jugador_1|divisor1|Add0~13\ = CARRY((\jugador_1|divisor1|q_reg\(6) & !\jugador_1|divisor1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|q_reg\(6),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~11\,
	combout => \jugador_1|divisor1|Add0~12_combout\,
	cout => \jugador_1|divisor1|Add0~13\);

-- Location: FF_X57_Y48_N19
\jugador_1|divisor1|q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~12_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(6));

-- Location: LCCOMB_X57_Y48_N20
\jugador_1|divisor1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~14_combout\ = (\jugador_1|divisor1|q_reg\(7) & (!\jugador_1|divisor1|Add0~13\)) # (!\jugador_1|divisor1|q_reg\(7) & ((\jugador_1|divisor1|Add0~13\) # (GND)))
-- \jugador_1|divisor1|Add0~15\ = CARRY((!\jugador_1|divisor1|Add0~13\) # (!\jugador_1|divisor1|q_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(7),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~13\,
	combout => \jugador_1|divisor1|Add0~14_combout\,
	cout => \jugador_1|divisor1|Add0~15\);

-- Location: LCCOMB_X56_Y48_N16
\jugador_1|divisor1|q_next[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|q_next[7]~11_combout\ = (\jugador_1|divisor1|Add0~14_combout\ & !\jugador_1|divisor1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_1|divisor1|Add0~14_combout\,
	datad => \jugador_1|divisor1|Equal0~8_combout\,
	combout => \jugador_1|divisor1|q_next[7]~11_combout\);

-- Location: FF_X56_Y48_N17
\jugador_1|divisor1|q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|q_next[7]~11_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(7));

-- Location: LCCOMB_X57_Y48_N22
\jugador_1|divisor1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~16_combout\ = (\jugador_1|divisor1|q_reg\(8) & (\jugador_1|divisor1|Add0~15\ $ (GND))) # (!\jugador_1|divisor1|q_reg\(8) & (!\jugador_1|divisor1|Add0~15\ & VCC))
-- \jugador_1|divisor1|Add0~17\ = CARRY((\jugador_1|divisor1|q_reg\(8) & !\jugador_1|divisor1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(8),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~15\,
	combout => \jugador_1|divisor1|Add0~16_combout\,
	cout => \jugador_1|divisor1|Add0~17\);

-- Location: FF_X57_Y48_N23
\jugador_1|divisor1|q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~16_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(8));

-- Location: LCCOMB_X57_Y48_N24
\jugador_1|divisor1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~18_combout\ = (\jugador_1|divisor1|q_reg\(9) & (!\jugador_1|divisor1|Add0~17\)) # (!\jugador_1|divisor1|q_reg\(9) & ((\jugador_1|divisor1|Add0~17\) # (GND)))
-- \jugador_1|divisor1|Add0~19\ = CARRY((!\jugador_1|divisor1|Add0~17\) # (!\jugador_1|divisor1|q_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|q_reg\(9),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~17\,
	combout => \jugador_1|divisor1|Add0~18_combout\,
	cout => \jugador_1|divisor1|Add0~19\);

-- Location: FF_X57_Y48_N25
\jugador_1|divisor1|q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~18_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(9));

-- Location: LCCOMB_X57_Y48_N0
\jugador_1|divisor1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Equal0~5_combout\ = (!\jugador_1|divisor1|q_reg\(7) & (\jugador_1|divisor1|q_reg\(6) & (!\jugador_1|divisor1|q_reg\(8) & !\jugador_1|divisor1|q_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(7),
	datab => \jugador_1|divisor1|q_reg\(6),
	datac => \jugador_1|divisor1|q_reg\(8),
	datad => \jugador_1|divisor1|q_reg\(9),
	combout => \jugador_1|divisor1|Equal0~5_combout\);

-- Location: LCCOMB_X57_Y48_N26
\jugador_1|divisor1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~20_combout\ = (\jugador_1|divisor1|q_reg\(10) & (\jugador_1|divisor1|Add0~19\ $ (GND))) # (!\jugador_1|divisor1|q_reg\(10) & (!\jugador_1|divisor1|Add0~19\ & VCC))
-- \jugador_1|divisor1|Add0~21\ = CARRY((\jugador_1|divisor1|q_reg\(10) & !\jugador_1|divisor1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(10),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~19\,
	combout => \jugador_1|divisor1|Add0~20_combout\,
	cout => \jugador_1|divisor1|Add0~21\);

-- Location: FF_X57_Y48_N27
\jugador_1|divisor1|q_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~20_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(10));

-- Location: LCCOMB_X57_Y48_N28
\jugador_1|divisor1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~22_combout\ = (\jugador_1|divisor1|q_reg\(11) & (!\jugador_1|divisor1|Add0~21\)) # (!\jugador_1|divisor1|q_reg\(11) & ((\jugador_1|divisor1|Add0~21\) # (GND)))
-- \jugador_1|divisor1|Add0~23\ = CARRY((!\jugador_1|divisor1|Add0~21\) # (!\jugador_1|divisor1|q_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|q_reg\(11),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~21\,
	combout => \jugador_1|divisor1|Add0~22_combout\,
	cout => \jugador_1|divisor1|Add0~23\);

-- Location: FF_X57_Y48_N29
\jugador_1|divisor1|q_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~22_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(11));

-- Location: LCCOMB_X57_Y48_N30
\jugador_1|divisor1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~24_combout\ = (\jugador_1|divisor1|q_reg\(12) & (\jugador_1|divisor1|Add0~23\ $ (GND))) # (!\jugador_1|divisor1|q_reg\(12) & (!\jugador_1|divisor1|Add0~23\ & VCC))
-- \jugador_1|divisor1|Add0~25\ = CARRY((\jugador_1|divisor1|q_reg\(12) & !\jugador_1|divisor1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(12),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~23\,
	combout => \jugador_1|divisor1|Add0~24_combout\,
	cout => \jugador_1|divisor1|Add0~25\);

-- Location: LCCOMB_X56_Y48_N0
\jugador_1|divisor1|q_next[12]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|q_next[12]~10_combout\ = (\jugador_1|divisor1|Add0~24_combout\ & !\jugador_1|divisor1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_1|divisor1|Add0~24_combout\,
	datad => \jugador_1|divisor1|Equal0~8_combout\,
	combout => \jugador_1|divisor1|q_next[12]~10_combout\);

-- Location: FF_X56_Y48_N1
\jugador_1|divisor1|q_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|q_next[12]~10_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(12));

-- Location: LCCOMB_X57_Y47_N0
\jugador_1|divisor1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~26_combout\ = (\jugador_1|divisor1|q_reg\(13) & (!\jugador_1|divisor1|Add0~25\)) # (!\jugador_1|divisor1|q_reg\(13) & ((\jugador_1|divisor1|Add0~25\) # (GND)))
-- \jugador_1|divisor1|Add0~27\ = CARRY((!\jugador_1|divisor1|Add0~25\) # (!\jugador_1|divisor1|q_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|q_reg\(13),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~25\,
	combout => \jugador_1|divisor1|Add0~26_combout\,
	cout => \jugador_1|divisor1|Add0~27\);

-- Location: LCCOMB_X56_Y47_N28
\jugador_1|divisor1|q_next[13]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|q_next[13]~9_combout\ = (\jugador_1|divisor1|Add0~26_combout\ & !\jugador_1|divisor1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_1|divisor1|Add0~26_combout\,
	datad => \jugador_1|divisor1|Equal0~8_combout\,
	combout => \jugador_1|divisor1|q_next[13]~9_combout\);

-- Location: FF_X56_Y47_N29
\jugador_1|divisor1|q_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|q_next[13]~9_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(13));

-- Location: LCCOMB_X56_Y48_N30
\jugador_1|divisor1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Equal0~3_combout\ = (\jugador_1|divisor1|q_reg\(12) & (!\jugador_1|divisor1|q_reg\(11) & (\jugador_1|divisor1|q_reg\(13) & !\jugador_1|divisor1|q_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(12),
	datab => \jugador_1|divisor1|q_reg\(11),
	datac => \jugador_1|divisor1|q_reg\(13),
	datad => \jugador_1|divisor1|q_reg\(10),
	combout => \jugador_1|divisor1|Equal0~3_combout\);

-- Location: LCCOMB_X57_Y47_N2
\jugador_1|divisor1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~28_combout\ = (\jugador_1|divisor1|q_reg\(14) & (\jugador_1|divisor1|Add0~27\ $ (GND))) # (!\jugador_1|divisor1|q_reg\(14) & (!\jugador_1|divisor1|Add0~27\ & VCC))
-- \jugador_1|divisor1|Add0~29\ = CARRY((\jugador_1|divisor1|q_reg\(14) & !\jugador_1|divisor1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(14),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~27\,
	combout => \jugador_1|divisor1|Add0~28_combout\,
	cout => \jugador_1|divisor1|Add0~29\);

-- Location: LCCOMB_X56_Y47_N16
\jugador_1|divisor1|q_next[14]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|q_next[14]~8_combout\ = (\jugador_1|divisor1|Add0~28_combout\ & !\jugador_1|divisor1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|Add0~28_combout\,
	datad => \jugador_1|divisor1|Equal0~8_combout\,
	combout => \jugador_1|divisor1|q_next[14]~8_combout\);

-- Location: FF_X56_Y47_N17
\jugador_1|divisor1|q_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|q_next[14]~8_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(14));

-- Location: LCCOMB_X57_Y47_N4
\jugador_1|divisor1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~30_combout\ = (\jugador_1|divisor1|q_reg\(15) & (!\jugador_1|divisor1|Add0~29\)) # (!\jugador_1|divisor1|q_reg\(15) & ((\jugador_1|divisor1|Add0~29\) # (GND)))
-- \jugador_1|divisor1|Add0~31\ = CARRY((!\jugador_1|divisor1|Add0~29\) # (!\jugador_1|divisor1|q_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|q_reg\(15),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~29\,
	combout => \jugador_1|divisor1|Add0~30_combout\,
	cout => \jugador_1|divisor1|Add0~31\);

-- Location: LCCOMB_X56_Y47_N22
\jugador_1|divisor1|q_next[15]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|q_next[15]~7_combout\ = (\jugador_1|divisor1|Add0~30_combout\ & !\jugador_1|divisor1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|Add0~30_combout\,
	datad => \jugador_1|divisor1|Equal0~8_combout\,
	combout => \jugador_1|divisor1|q_next[15]~7_combout\);

-- Location: FF_X56_Y47_N23
\jugador_1|divisor1|q_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|q_next[15]~7_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(15));

-- Location: LCCOMB_X57_Y47_N6
\jugador_1|divisor1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~32_combout\ = (\jugador_1|divisor1|q_reg\(16) & (\jugador_1|divisor1|Add0~31\ $ (GND))) # (!\jugador_1|divisor1|q_reg\(16) & (!\jugador_1|divisor1|Add0~31\ & VCC))
-- \jugador_1|divisor1|Add0~33\ = CARRY((\jugador_1|divisor1|q_reg\(16) & !\jugador_1|divisor1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(16),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~31\,
	combout => \jugador_1|divisor1|Add0~32_combout\,
	cout => \jugador_1|divisor1|Add0~33\);

-- Location: FF_X57_Y47_N7
\jugador_1|divisor1|q_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~32_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(16));

-- Location: LCCOMB_X57_Y47_N8
\jugador_1|divisor1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~34_combout\ = (\jugador_1|divisor1|q_reg\(17) & (!\jugador_1|divisor1|Add0~33\)) # (!\jugador_1|divisor1|q_reg\(17) & ((\jugador_1|divisor1|Add0~33\) # (GND)))
-- \jugador_1|divisor1|Add0~35\ = CARRY((!\jugador_1|divisor1|Add0~33\) # (!\jugador_1|divisor1|q_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|q_reg\(17),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~33\,
	combout => \jugador_1|divisor1|Add0~34_combout\,
	cout => \jugador_1|divisor1|Add0~35\);

-- Location: LCCOMB_X56_Y47_N24
\jugador_1|divisor1|q_next[17]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|q_next[17]~6_combout\ = (\jugador_1|divisor1|Add0~34_combout\ & !\jugador_1|divisor1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_1|divisor1|Add0~34_combout\,
	datad => \jugador_1|divisor1|Equal0~8_combout\,
	combout => \jugador_1|divisor1|q_next[17]~6_combout\);

-- Location: FF_X56_Y47_N25
\jugador_1|divisor1|q_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|q_next[17]~6_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(17));

-- Location: LCCOMB_X57_Y47_N10
\jugador_1|divisor1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~36_combout\ = (\jugador_1|divisor1|q_reg\(18) & (\jugador_1|divisor1|Add0~35\ $ (GND))) # (!\jugador_1|divisor1|q_reg\(18) & (!\jugador_1|divisor1|Add0~35\ & VCC))
-- \jugador_1|divisor1|Add0~37\ = CARRY((\jugador_1|divisor1|q_reg\(18) & !\jugador_1|divisor1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(18),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~35\,
	combout => \jugador_1|divisor1|Add0~36_combout\,
	cout => \jugador_1|divisor1|Add0~37\);

-- Location: FF_X57_Y47_N11
\jugador_1|divisor1|q_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~36_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(18));

-- Location: LCCOMB_X57_Y47_N12
\jugador_1|divisor1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~38_combout\ = (\jugador_1|divisor1|q_reg\(19) & (!\jugador_1|divisor1|Add0~37\)) # (!\jugador_1|divisor1|q_reg\(19) & ((\jugador_1|divisor1|Add0~37\) # (GND)))
-- \jugador_1|divisor1|Add0~39\ = CARRY((!\jugador_1|divisor1|Add0~37\) # (!\jugador_1|divisor1|q_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(19),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~37\,
	combout => \jugador_1|divisor1|Add0~38_combout\,
	cout => \jugador_1|divisor1|Add0~39\);

-- Location: LCCOMB_X56_Y47_N14
\jugador_1|divisor1|q_next[19]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|q_next[19]~5_combout\ = (\jugador_1|divisor1|Add0~38_combout\ & !\jugador_1|divisor1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_1|divisor1|Add0~38_combout\,
	datad => \jugador_1|divisor1|Equal0~8_combout\,
	combout => \jugador_1|divisor1|q_next[19]~5_combout\);

-- Location: FF_X56_Y47_N15
\jugador_1|divisor1|q_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|q_next[19]~5_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(19));

-- Location: LCCOMB_X57_Y47_N14
\jugador_1|divisor1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~40_combout\ = (\jugador_1|divisor1|q_reg\(20) & (\jugador_1|divisor1|Add0~39\ $ (GND))) # (!\jugador_1|divisor1|q_reg\(20) & (!\jugador_1|divisor1|Add0~39\ & VCC))
-- \jugador_1|divisor1|Add0~41\ = CARRY((\jugador_1|divisor1|q_reg\(20) & !\jugador_1|divisor1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|q_reg\(20),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~39\,
	combout => \jugador_1|divisor1|Add0~40_combout\,
	cout => \jugador_1|divisor1|Add0~41\);

-- Location: LCCOMB_X57_Y47_N28
\jugador_1|divisor1|q_next[20]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|q_next[20]~4_combout\ = (\jugador_1|divisor1|Add0~40_combout\ & !\jugador_1|divisor1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_1|divisor1|Add0~40_combout\,
	datad => \jugador_1|divisor1|Equal0~8_combout\,
	combout => \jugador_1|divisor1|q_next[20]~4_combout\);

-- Location: FF_X57_Y47_N29
\jugador_1|divisor1|q_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|q_next[20]~4_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(20));

-- Location: LCCOMB_X57_Y47_N16
\jugador_1|divisor1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~42_combout\ = (\jugador_1|divisor1|q_reg\(21) & (!\jugador_1|divisor1|Add0~41\)) # (!\jugador_1|divisor1|q_reg\(21) & ((\jugador_1|divisor1|Add0~41\) # (GND)))
-- \jugador_1|divisor1|Add0~43\ = CARRY((!\jugador_1|divisor1|Add0~41\) # (!\jugador_1|divisor1|q_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(21),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~41\,
	combout => \jugador_1|divisor1|Add0~42_combout\,
	cout => \jugador_1|divisor1|Add0~43\);

-- Location: LCCOMB_X57_Y47_N26
\jugador_1|divisor1|q_next[21]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|q_next[21]~3_combout\ = (!\jugador_1|divisor1|Equal0~8_combout\ & \jugador_1|divisor1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|Equal0~8_combout\,
	datad => \jugador_1|divisor1|Add0~42_combout\,
	combout => \jugador_1|divisor1|q_next[21]~3_combout\);

-- Location: FF_X57_Y47_N27
\jugador_1|divisor1|q_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|q_next[21]~3_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(21));

-- Location: LCCOMB_X57_Y47_N18
\jugador_1|divisor1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~44_combout\ = (\jugador_1|divisor1|q_reg\(22) & (\jugador_1|divisor1|Add0~43\ $ (GND))) # (!\jugador_1|divisor1|q_reg\(22) & (!\jugador_1|divisor1|Add0~43\ & VCC))
-- \jugador_1|divisor1|Add0~45\ = CARRY((\jugador_1|divisor1|q_reg\(22) & !\jugador_1|divisor1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|q_reg\(22),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~43\,
	combout => \jugador_1|divisor1|Add0~44_combout\,
	cout => \jugador_1|divisor1|Add0~45\);

-- Location: LCCOMB_X56_Y47_N18
\jugador_1|divisor1|q_next[22]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|q_next[22]~2_combout\ = (!\jugador_1|divisor1|Equal0~8_combout\ & \jugador_1|divisor1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|Equal0~8_combout\,
	datad => \jugador_1|divisor1|Add0~44_combout\,
	combout => \jugador_1|divisor1|q_next[22]~2_combout\);

-- Location: FF_X56_Y47_N19
\jugador_1|divisor1|q_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|q_next[22]~2_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(22));

-- Location: LCCOMB_X57_Y47_N20
\jugador_1|divisor1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~46_combout\ = (\jugador_1|divisor1|q_reg\(23) & (!\jugador_1|divisor1|Add0~45\)) # (!\jugador_1|divisor1|q_reg\(23) & ((\jugador_1|divisor1|Add0~45\) # (GND)))
-- \jugador_1|divisor1|Add0~47\ = CARRY((!\jugador_1|divisor1|Add0~45\) # (!\jugador_1|divisor1|q_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(23),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~45\,
	combout => \jugador_1|divisor1|Add0~46_combout\,
	cout => \jugador_1|divisor1|Add0~47\);

-- Location: LCCOMB_X56_Y47_N12
\jugador_1|divisor1|q_next[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|q_next[23]~1_combout\ = (\jugador_1|divisor1|Add0~46_combout\ & !\jugador_1|divisor1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_1|divisor1|Add0~46_combout\,
	datad => \jugador_1|divisor1|Equal0~8_combout\,
	combout => \jugador_1|divisor1|q_next[23]~1_combout\);

-- Location: FF_X56_Y47_N13
\jugador_1|divisor1|q_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|q_next[23]~1_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(23));

-- Location: LCCOMB_X57_Y47_N22
\jugador_1|divisor1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~48_combout\ = (\jugador_1|divisor1|q_reg\(24) & (\jugador_1|divisor1|Add0~47\ $ (GND))) # (!\jugador_1|divisor1|q_reg\(24) & (!\jugador_1|divisor1|Add0~47\ & VCC))
-- \jugador_1|divisor1|Add0~49\ = CARRY((\jugador_1|divisor1|q_reg\(24) & !\jugador_1|divisor1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(24),
	datad => VCC,
	cin => \jugador_1|divisor1|Add0~47\,
	combout => \jugador_1|divisor1|Add0~48_combout\,
	cout => \jugador_1|divisor1|Add0~49\);

-- Location: FF_X57_Y47_N23
\jugador_1|divisor1|q_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|Add0~48_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(24));

-- Location: LCCOMB_X57_Y47_N24
\jugador_1|divisor1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Add0~50_combout\ = \jugador_1|divisor1|q_reg\(25) $ (\jugador_1|divisor1|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(25),
	cin => \jugador_1|divisor1|Add0~49\,
	combout => \jugador_1|divisor1|Add0~50_combout\);

-- Location: LCCOMB_X56_Y47_N26
\jugador_1|divisor1|q_next[25]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|q_next[25]~0_combout\ = (!\jugador_1|divisor1|Equal0~8_combout\ & \jugador_1|divisor1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|divisor1|Equal0~8_combout\,
	datad => \jugador_1|divisor1|Add0~50_combout\,
	combout => \jugador_1|divisor1|q_next[25]~0_combout\);

-- Location: FF_X56_Y47_N27
\jugador_1|divisor1|q_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|q_next[25]~0_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|q_reg\(25));

-- Location: LCCOMB_X56_Y47_N20
\jugador_1|divisor1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Equal0~0_combout\ = (\jugador_1|divisor1|q_reg\(23) & (\jugador_1|divisor1|q_reg\(22) & (\jugador_1|divisor1|q_reg\(25) & !\jugador_1|divisor1|q_reg\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(23),
	datab => \jugador_1|divisor1|q_reg\(22),
	datac => \jugador_1|divisor1|q_reg\(25),
	datad => \jugador_1|divisor1|q_reg\(24),
	combout => \jugador_1|divisor1|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y47_N30
\jugador_1|divisor1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Equal0~1_combout\ = (\jugador_1|divisor1|q_reg\(19) & (\jugador_1|divisor1|q_reg\(20) & (\jugador_1|divisor1|q_reg\(21) & !\jugador_1|divisor1|q_reg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(19),
	datab => \jugador_1|divisor1|q_reg\(20),
	datac => \jugador_1|divisor1|q_reg\(21),
	datad => \jugador_1|divisor1|q_reg\(18),
	combout => \jugador_1|divisor1|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y47_N6
\jugador_1|divisor1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Equal0~2_combout\ = (!\jugador_1|divisor1|q_reg\(16) & (\jugador_1|divisor1|q_reg\(14) & (\jugador_1|divisor1|q_reg\(15) & \jugador_1|divisor1|q_reg\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(16),
	datab => \jugador_1|divisor1|q_reg\(14),
	datac => \jugador_1|divisor1|q_reg\(15),
	datad => \jugador_1|divisor1|q_reg\(17),
	combout => \jugador_1|divisor1|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y47_N10
\jugador_1|divisor1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Equal0~4_combout\ = (\jugador_1|divisor1|Equal0~3_combout\ & (\jugador_1|divisor1|Equal0~0_combout\ & (\jugador_1|divisor1|Equal0~1_combout\ & \jugador_1|divisor1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|Equal0~3_combout\,
	datab => \jugador_1|divisor1|Equal0~0_combout\,
	datac => \jugador_1|divisor1|Equal0~1_combout\,
	datad => \jugador_1|divisor1|Equal0~2_combout\,
	combout => \jugador_1|divisor1|Equal0~4_combout\);

-- Location: LCCOMB_X57_Y48_N2
\jugador_1|divisor1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Equal0~6_combout\ = (\jugador_1|divisor1|q_reg\(3) & (\jugador_1|divisor1|q_reg\(5) & (\jugador_1|divisor1|q_reg\(4) & \jugador_1|divisor1|q_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|q_reg\(3),
	datab => \jugador_1|divisor1|q_reg\(5),
	datac => \jugador_1|divisor1|q_reg\(4),
	datad => \jugador_1|divisor1|q_reg\(2),
	combout => \jugador_1|divisor1|Equal0~6_combout\);

-- Location: LCCOMB_X56_Y48_N10
\jugador_1|divisor1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|Equal0~8_combout\ = (\jugador_1|divisor1|Equal0~7_combout\ & (\jugador_1|divisor1|Equal0~5_combout\ & (\jugador_1|divisor1|Equal0~4_combout\ & \jugador_1|divisor1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|Equal0~7_combout\,
	datab => \jugador_1|divisor1|Equal0~5_combout\,
	datac => \jugador_1|divisor1|Equal0~4_combout\,
	datad => \jugador_1|divisor1|Equal0~6_combout\,
	combout => \jugador_1|divisor1|Equal0~8_combout\);

-- Location: LCCOMB_X56_Y47_N8
\jugador_1|divisor1|clk_o_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|divisor1|clk_o_reg~feeder_combout\ = \jugador_1|divisor1|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \jugador_1|divisor1|Equal0~8_combout\,
	combout => \jugador_1|divisor1|clk_o_reg~feeder_combout\);

-- Location: FF_X56_Y47_N9
\jugador_1|divisor1|clk_o_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_1|divisor1|clk_o_reg~feeder_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|divisor1|clk_o_reg~q\);

-- Location: LCCOMB_X45_Y42_N6
\jugador_1|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|Equal1~2_combout\ = (!\reg0|q_reg_1\(0) & \reg0|q_reg_1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg0|q_reg_1\(0),
	datad => \reg0|q_reg_1\(1),
	combout => \jugador_1|Equal1~2_combout\);

-- Location: CLKCTRL_G14
\jugador_0|g_reset_n~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \jugador_0|g_reset_n~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \jugador_0|g_reset_n~3clkctrl_outclk\);

-- Location: LCCOMB_X46_Y42_N20
\jugador_0|contador3|q_reg[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador3|q_reg[1]~1_combout\ = (GLOBAL(\jugador_0|g_reset_n~3clkctrl_outclk\) & ((\jugador_1|Equal1~2_combout\))) # (!GLOBAL(\jugador_0|g_reset_n~3clkctrl_outclk\) & (\jugador_0|contador3|q_reg[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|contador3|q_reg[1]~1_combout\,
	datac => \jugador_1|Equal1~2_combout\,
	datad => \jugador_0|g_reset_n~3clkctrl_outclk\,
	combout => \jugador_0|contador3|q_reg[1]~1_combout\);

-- Location: LCCOMB_X46_Y42_N8
\jugador_0|contador3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador3|Add0~0_combout\ = \jugador_0|contador3|q_reg\(0) $ (VCC)
-- \jugador_0|contador3|Add0~1\ = CARRY(\jugador_0|contador3|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|contador3|q_reg\(0),
	datad => VCC,
	combout => \jugador_0|contador3|Add0~0_combout\,
	cout => \jugador_0|contador3|Add0~1\);

-- Location: LCCOMB_X46_Y43_N14
\jugador_1|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|Equal1~1_combout\ = (!\reg0|q_reg_1\(1) & \reg0|q_reg_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg0|q_reg_1\(1),
	datad => \reg0|q_reg_1\(0),
	combout => \jugador_1|Equal1~1_combout\);

-- Location: LCCOMB_X45_Y39_N10
\jugador_0|contador2|q_reg[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|q_reg[3]~9_combout\ = (GLOBAL(\jugador_0|g_reset_n~3clkctrl_outclk\) & ((\jugador_1|Equal1~1_combout\))) # (!GLOBAL(\jugador_0|g_reset_n~3clkctrl_outclk\) & (\jugador_0|contador2|q_reg[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|contador2|q_reg[3]~9_combout\,
	datac => \jugador_1|Equal1~1_combout\,
	datad => \jugador_0|g_reset_n~3clkctrl_outclk\,
	combout => \jugador_0|contador2|q_reg[3]~9_combout\);

-- Location: LCCOMB_X45_Y39_N16
\jugador_0|contador2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|Add0~0_combout\ = \jugador_0|contador2|q_reg[0]~2_combout\ $ (VCC)
-- \jugador_0|contador2|Add0~1\ = CARRY(\jugador_0|contador2|q_reg[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|contador2|q_reg[0]~2_combout\,
	datad => VCC,
	combout => \jugador_0|contador2|Add0~0_combout\,
	cout => \jugador_0|contador2|Add0~1\);

-- Location: LCCOMB_X45_Y39_N0
\jugador_0|contador2|q_reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|q_reg[0]~1_combout\ = (GLOBAL(\jugador_0|g_reset_n~3clkctrl_outclk\) & ((\jugador_0|start_min[0]~0_combout\))) # (!GLOBAL(\jugador_0|g_reset_n~3clkctrl_outclk\) & (\jugador_0|contador2|q_reg[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|contador2|q_reg[0]~1_combout\,
	datac => \jugador_0|start_min[0]~0_combout\,
	datad => \jugador_0|g_reset_n~3clkctrl_outclk\,
	combout => \jugador_0|contador2|q_reg[0]~1_combout\);

-- Location: LCCOMB_X45_Y39_N30
\jugador_0|contador2|q_reg[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|q_reg[0]~3_combout\ = \jugador_0|contador2|Add0~0_combout\ $ (\jugador_0|contador2|q_reg[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|Add0~0_combout\,
	datab => \jugador_0|contador2|q_reg[0]~1_combout\,
	combout => \jugador_0|contador2|q_reg[0]~3_combout\);

-- Location: LCCOMB_X45_Y50_N2
\fsm1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|Selector0~0_combout\ = (\ini_pausa~input_o\ & (\fsm1|state_reg.ST_WAIT_CONFIG~q\ & (!\config~input_o\))) # (!\ini_pausa~input_o\ & ((\fsm1|state_reg.ST_PLAYERS_CONFIG~q\) # ((\fsm1|state_reg.ST_WAIT_CONFIG~q\ & !\config~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ini_pausa~input_o\,
	datab => \fsm1|state_reg.ST_WAIT_CONFIG~q\,
	datac => \config~input_o\,
	datad => \fsm1|state_reg.ST_PLAYERS_CONFIG~q\,
	combout => \fsm1|Selector0~0_combout\);

-- Location: LCCOMB_X45_Y50_N6
\fsm1|state_reg.ST_PLAYERS_CONFIG~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|state_reg.ST_PLAYERS_CONFIG~feeder_combout\ = \fsm1|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsm1|Selector0~0_combout\,
	combout => \fsm1|state_reg.ST_PLAYERS_CONFIG~feeder_combout\);

-- Location: FF_X45_Y50_N7
\fsm1|state_reg.ST_PLAYERS_CONFIG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm1|state_reg.ST_PLAYERS_CONFIG~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \div|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|state_reg.ST_PLAYERS_CONFIG~q\);

-- Location: LCCOMB_X44_Y50_N12
\fsm1|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|Selector1~1_combout\ = (\fsm1|state_reg.ST_PLAYERS_CONFIG~q\ & (\ini_pausa~input_o\ & !\jugador_act~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state_reg.ST_PLAYERS_CONFIG~q\,
	datac => \ini_pausa~input_o\,
	datad => \jugador_act~input_o\,
	combout => \fsm1|Selector1~1_combout\);

-- Location: LCCOMB_X45_Y50_N28
\fsm1|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|Selector1~2_combout\ = (\fsm1|Selector1~1_combout\) # ((!\ini_pausa~input_o\ & ((\fsm1|state_reg.ST_PLAYER_0~q\) # (\fsm1|state_reg.ST_PLAYER_0_P~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ini_pausa~input_o\,
	datab => \fsm1|state_reg.ST_PLAYER_0~q\,
	datac => \fsm1|state_reg.ST_PLAYER_0_P~q\,
	datad => \fsm1|Selector1~1_combout\,
	combout => \fsm1|Selector1~2_combout\);

-- Location: FF_X45_Y50_N29
\fsm1|state_reg.ST_PLAYER_0_P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm1|Selector1~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \div|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|state_reg.ST_PLAYER_0_P~q\);

-- Location: LCCOMB_X46_Y42_N10
\jugador_0|contador3|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador3|Add0~2_combout\ = (\jugador_0|contador3|q_reg[1]~2_combout\ & (\jugador_0|contador3|Add0~1\ & VCC)) # (!\jugador_0|contador3|q_reg[1]~2_combout\ & (!\jugador_0|contador3|Add0~1\))
-- \jugador_0|contador3|Add0~3\ = CARRY((!\jugador_0|contador3|q_reg[1]~2_combout\ & !\jugador_0|contador3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg[1]~2_combout\,
	datad => VCC,
	cin => \jugador_0|contador3|Add0~1\,
	combout => \jugador_0|contador3|Add0~2_combout\,
	cout => \jugador_0|contador3|Add0~3\);

-- Location: LCCOMB_X46_Y42_N12
\jugador_0|contador3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador3|Add0~4_combout\ = (\jugador_0|contador3|q_reg\(2) & ((GND) # (!\jugador_0|contador3|Add0~3\))) # (!\jugador_0|contador3|q_reg\(2) & (\jugador_0|contador3|Add0~3\ $ (GND)))
-- \jugador_0|contador3|Add0~5\ = CARRY((\jugador_0|contador3|q_reg\(2)) # (!\jugador_0|contador3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(2),
	datad => VCC,
	cin => \jugador_0|contador3|Add0~3\,
	combout => \jugador_0|contador3|Add0~4_combout\,
	cout => \jugador_0|contador3|Add0~5\);

-- Location: FF_X46_Y42_N13
\jugador_0|contador3|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador3|Add0~4_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_hor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador3|q_reg\(2));

-- Location: LCCOMB_X46_Y42_N14
\jugador_0|contador3|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador3|Add0~6_combout\ = (\jugador_0|contador3|q_reg\(3) & (\jugador_0|contador3|Add0~5\ & VCC)) # (!\jugador_0|contador3|q_reg\(3) & (!\jugador_0|contador3|Add0~5\))
-- \jugador_0|contador3|Add0~7\ = CARRY((!\jugador_0|contador3|q_reg\(3) & !\jugador_0|contador3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(3),
	datad => VCC,
	cin => \jugador_0|contador3|Add0~5\,
	combout => \jugador_0|contador3|Add0~6_combout\,
	cout => \jugador_0|contador3|Add0~7\);

-- Location: LCCOMB_X46_Y42_N6
\jugador_0|contador3|q_next~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador3|q_next~0_combout\ = (\jugador_0|contador3|Add0~6_combout\ & (((\jugador_0|contador3|q_reg[1]~2_combout\) # (\jugador_0|contador3|q_reg\(2))) # (!\jugador_0|contador3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|Equal0~0_combout\,
	datab => \jugador_0|contador3|Add0~6_combout\,
	datac => \jugador_0|contador3|q_reg[1]~2_combout\,
	datad => \jugador_0|contador3|q_reg\(2),
	combout => \jugador_0|contador3|q_next~0_combout\);

-- Location: FF_X46_Y42_N7
\jugador_0|contador3|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador3|q_next~0_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_hor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador3|q_reg\(3));

-- Location: LCCOMB_X46_Y42_N16
\jugador_0|contador3|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador3|Add0~8_combout\ = (\jugador_0|contador3|q_reg\(4) & ((GND) # (!\jugador_0|contador3|Add0~7\))) # (!\jugador_0|contador3|q_reg\(4) & (\jugador_0|contador3|Add0~7\ $ (GND)))
-- \jugador_0|contador3|Add0~9\ = CARRY((\jugador_0|contador3|q_reg\(4)) # (!\jugador_0|contador3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|contador3|q_reg\(4),
	datad => VCC,
	cin => \jugador_0|contador3|Add0~7\,
	combout => \jugador_0|contador3|Add0~8_combout\,
	cout => \jugador_0|contador3|Add0~9\);

-- Location: FF_X46_Y42_N17
\jugador_0|contador3|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador3|Add0~8_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_hor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador3|q_reg\(4));

-- Location: LCCOMB_X46_Y42_N18
\jugador_0|contador3|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador3|Add0~10_combout\ = \jugador_0|contador3|q_reg\(5) $ (!\jugador_0|contador3|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(5),
	cin => \jugador_0|contador3|Add0~9\,
	combout => \jugador_0|contador3|Add0~10_combout\);

-- Location: LCCOMB_X46_Y42_N22
\jugador_0|contador3|q_next~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador3|q_next~1_combout\ = (\jugador_0|contador3|Add0~10_combout\ & ((\jugador_0|contador3|q_reg\(2)) # ((\jugador_0|contador3|q_reg[1]~2_combout\) # (!\jugador_0|contador3|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(2),
	datab => \jugador_0|contador3|Add0~10_combout\,
	datac => \jugador_0|contador3|q_reg[1]~2_combout\,
	datad => \jugador_0|contador3|Equal0~0_combout\,
	combout => \jugador_0|contador3|q_next~1_combout\);

-- Location: FF_X46_Y42_N23
\jugador_0|contador3|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador3|q_next~1_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_hor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador3|q_reg\(5));

-- Location: LCCOMB_X46_Y42_N30
\jugador_0|contador3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador3|Equal0~0_combout\ = (!\jugador_0|contador3|q_reg\(5) & (!\jugador_0|contador3|q_reg\(4) & (!\jugador_0|contador3|q_reg\(0) & !\jugador_0|contador3|q_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(5),
	datab => \jugador_0|contador3|q_reg\(4),
	datac => \jugador_0|contador3|q_reg\(0),
	datad => \jugador_0|contador3|q_reg\(3),
	combout => \jugador_0|contador3|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y42_N4
\jugador_0|contador3|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador3|Equal0~1_combout\ = (!\jugador_0|contador3|q_reg\(2) & (\jugador_0|contador3|Equal0~0_combout\ & !\jugador_0|contador3|q_reg[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(2),
	datac => \jugador_0|contador3|Equal0~0_combout\,
	datad => \jugador_0|contador3|q_reg[1]~2_combout\,
	combout => \jugador_0|contador3|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y50_N4
\fsm1|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|Selector2~0_combout\ = (\fsm1|state_reg.ST_PLAYER_0~q\ & (!\jugador_act~input_o\ & ((!\jugador_0|min_value~0_combout\) # (!\jugador_0|contador3|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|Equal0~1_combout\,
	datab => \jugador_0|min_value~0_combout\,
	datac => \fsm1|state_reg.ST_PLAYER_0~q\,
	datad => \jugador_act~input_o\,
	combout => \fsm1|Selector2~0_combout\);

-- Location: LCCOMB_X45_Y50_N16
\fsm1|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|Selector2~1_combout\ = (\fsm1|state_reg.ST_PLAYER_1_M~q\) # ((\ini_pausa~input_o\ & ((\fsm1|state_reg.ST_PLAYER_0_P~q\) # (\fsm1|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ini_pausa~input_o\,
	datab => \fsm1|state_reg.ST_PLAYER_0_P~q\,
	datac => \fsm1|Selector2~0_combout\,
	datad => \fsm1|state_reg.ST_PLAYER_1_M~q\,
	combout => \fsm1|Selector2~1_combout\);

-- Location: FF_X45_Y50_N17
\fsm1|state_reg.ST_PLAYER_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \fsm1|Selector2~1_combout\,
	clrn => \reset_n~input_o\,
	ena => \div|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|state_reg.ST_PLAYER_0~q\);

-- Location: LCCOMB_X52_Y44_N6
\jugador_0|divisor1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~0_combout\ = \jugador_0|divisor1|q_reg\(0) $ (VCC)
-- \jugador_0|divisor1|Add0~1\ = CARRY(\jugador_0|divisor1|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(0),
	datad => VCC,
	combout => \jugador_0|divisor1|Add0~0_combout\,
	cout => \jugador_0|divisor1|Add0~1\);

-- Location: FF_X52_Y44_N7
\jugador_0|divisor1|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~0_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(0));

-- Location: LCCOMB_X52_Y44_N8
\jugador_0|divisor1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~2_combout\ = (\jugador_0|divisor1|q_reg\(1) & (!\jugador_0|divisor1|Add0~1\)) # (!\jugador_0|divisor1|q_reg\(1) & ((\jugador_0|divisor1|Add0~1\) # (GND)))
-- \jugador_0|divisor1|Add0~3\ = CARRY((!\jugador_0|divisor1|Add0~1\) # (!\jugador_0|divisor1|q_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|divisor1|q_reg\(1),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~1\,
	combout => \jugador_0|divisor1|Add0~2_combout\,
	cout => \jugador_0|divisor1|Add0~3\);

-- Location: FF_X52_Y44_N9
\jugador_0|divisor1|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~2_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(1));

-- Location: LCCOMB_X52_Y44_N10
\jugador_0|divisor1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~4_combout\ = (\jugador_0|divisor1|q_reg\(2) & (\jugador_0|divisor1|Add0~3\ $ (GND))) # (!\jugador_0|divisor1|q_reg\(2) & (!\jugador_0|divisor1|Add0~3\ & VCC))
-- \jugador_0|divisor1|Add0~5\ = CARRY((\jugador_0|divisor1|q_reg\(2) & !\jugador_0|divisor1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(2),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~3\,
	combout => \jugador_0|divisor1|Add0~4_combout\,
	cout => \jugador_0|divisor1|Add0~5\);

-- Location: FF_X52_Y44_N11
\jugador_0|divisor1|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~4_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(2));

-- Location: LCCOMB_X52_Y44_N12
\jugador_0|divisor1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~6_combout\ = (\jugador_0|divisor1|q_reg\(3) & (!\jugador_0|divisor1|Add0~5\)) # (!\jugador_0|divisor1|q_reg\(3) & ((\jugador_0|divisor1|Add0~5\) # (GND)))
-- \jugador_0|divisor1|Add0~7\ = CARRY((!\jugador_0|divisor1|Add0~5\) # (!\jugador_0|divisor1|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(3),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~5\,
	combout => \jugador_0|divisor1|Add0~6_combout\,
	cout => \jugador_0|divisor1|Add0~7\);

-- Location: FF_X52_Y44_N13
\jugador_0|divisor1|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~6_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(3));

-- Location: LCCOMB_X52_Y44_N14
\jugador_0|divisor1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~8_combout\ = (\jugador_0|divisor1|q_reg\(4) & (\jugador_0|divisor1|Add0~7\ $ (GND))) # (!\jugador_0|divisor1|q_reg\(4) & (!\jugador_0|divisor1|Add0~7\ & VCC))
-- \jugador_0|divisor1|Add0~9\ = CARRY((\jugador_0|divisor1|q_reg\(4) & !\jugador_0|divisor1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|divisor1|q_reg\(4),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~7\,
	combout => \jugador_0|divisor1|Add0~8_combout\,
	cout => \jugador_0|divisor1|Add0~9\);

-- Location: FF_X52_Y44_N15
\jugador_0|divisor1|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~8_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(4));

-- Location: LCCOMB_X52_Y44_N16
\jugador_0|divisor1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~10_combout\ = (\jugador_0|divisor1|q_reg\(5) & (!\jugador_0|divisor1|Add0~9\)) # (!\jugador_0|divisor1|q_reg\(5) & ((\jugador_0|divisor1|Add0~9\) # (GND)))
-- \jugador_0|divisor1|Add0~11\ = CARRY((!\jugador_0|divisor1|Add0~9\) # (!\jugador_0|divisor1|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|divisor1|q_reg\(5),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~9\,
	combout => \jugador_0|divisor1|Add0~10_combout\,
	cout => \jugador_0|divisor1|Add0~11\);

-- Location: FF_X52_Y44_N17
\jugador_0|divisor1|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~10_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(5));

-- Location: LCCOMB_X52_Y44_N18
\jugador_0|divisor1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~12_combout\ = (\jugador_0|divisor1|q_reg\(6) & (\jugador_0|divisor1|Add0~11\ $ (GND))) # (!\jugador_0|divisor1|q_reg\(6) & (!\jugador_0|divisor1|Add0~11\ & VCC))
-- \jugador_0|divisor1|Add0~13\ = CARRY((\jugador_0|divisor1|q_reg\(6) & !\jugador_0|divisor1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|divisor1|q_reg\(6),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~11\,
	combout => \jugador_0|divisor1|Add0~12_combout\,
	cout => \jugador_0|divisor1|Add0~13\);

-- Location: FF_X52_Y44_N19
\jugador_0|divisor1|q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~12_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(6));

-- Location: LCCOMB_X52_Y44_N20
\jugador_0|divisor1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~14_combout\ = (\jugador_0|divisor1|q_reg\(7) & (!\jugador_0|divisor1|Add0~13\)) # (!\jugador_0|divisor1|q_reg\(7) & ((\jugador_0|divisor1|Add0~13\) # (GND)))
-- \jugador_0|divisor1|Add0~15\ = CARRY((!\jugador_0|divisor1|Add0~13\) # (!\jugador_0|divisor1|q_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(7),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~13\,
	combout => \jugador_0|divisor1|Add0~14_combout\,
	cout => \jugador_0|divisor1|Add0~15\);

-- Location: LCCOMB_X51_Y44_N16
\jugador_0|divisor1|q_next[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|q_next[7]~11_combout\ = (\jugador_0|divisor1|Add0~14_combout\ & !\jugador_0|divisor1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_0|divisor1|Add0~14_combout\,
	datad => \jugador_0|divisor1|Equal0~8_combout\,
	combout => \jugador_0|divisor1|q_next[7]~11_combout\);

-- Location: FF_X51_Y44_N17
\jugador_0|divisor1|q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|q_next[7]~11_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(7));

-- Location: LCCOMB_X52_Y44_N22
\jugador_0|divisor1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~16_combout\ = (\jugador_0|divisor1|q_reg\(8) & (\jugador_0|divisor1|Add0~15\ $ (GND))) # (!\jugador_0|divisor1|q_reg\(8) & (!\jugador_0|divisor1|Add0~15\ & VCC))
-- \jugador_0|divisor1|Add0~17\ = CARRY((\jugador_0|divisor1|q_reg\(8) & !\jugador_0|divisor1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(8),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~15\,
	combout => \jugador_0|divisor1|Add0~16_combout\,
	cout => \jugador_0|divisor1|Add0~17\);

-- Location: FF_X52_Y44_N23
\jugador_0|divisor1|q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~16_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(8));

-- Location: LCCOMB_X52_Y44_N24
\jugador_0|divisor1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~18_combout\ = (\jugador_0|divisor1|q_reg\(9) & (!\jugador_0|divisor1|Add0~17\)) # (!\jugador_0|divisor1|q_reg\(9) & ((\jugador_0|divisor1|Add0~17\) # (GND)))
-- \jugador_0|divisor1|Add0~19\ = CARRY((!\jugador_0|divisor1|Add0~17\) # (!\jugador_0|divisor1|q_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|divisor1|q_reg\(9),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~17\,
	combout => \jugador_0|divisor1|Add0~18_combout\,
	cout => \jugador_0|divisor1|Add0~19\);

-- Location: FF_X52_Y44_N25
\jugador_0|divisor1|q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~18_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(9));

-- Location: LCCOMB_X52_Y44_N4
\jugador_0|divisor1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Equal0~5_combout\ = (!\jugador_0|divisor1|q_reg\(7) & (\jugador_0|divisor1|q_reg\(6) & (!\jugador_0|divisor1|q_reg\(8) & !\jugador_0|divisor1|q_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(7),
	datab => \jugador_0|divisor1|q_reg\(6),
	datac => \jugador_0|divisor1|q_reg\(8),
	datad => \jugador_0|divisor1|q_reg\(9),
	combout => \jugador_0|divisor1|Equal0~5_combout\);

-- Location: LCCOMB_X52_Y44_N0
\jugador_0|divisor1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Equal0~7_combout\ = (\jugador_0|divisor1|q_reg\(1) & \jugador_0|divisor1|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_0|divisor1|q_reg\(1),
	datad => \jugador_0|divisor1|q_reg\(0),
	combout => \jugador_0|divisor1|Equal0~7_combout\);

-- Location: LCCOMB_X52_Y44_N26
\jugador_0|divisor1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~20_combout\ = (\jugador_0|divisor1|q_reg\(10) & (\jugador_0|divisor1|Add0~19\ $ (GND))) # (!\jugador_0|divisor1|q_reg\(10) & (!\jugador_0|divisor1|Add0~19\ & VCC))
-- \jugador_0|divisor1|Add0~21\ = CARRY((\jugador_0|divisor1|q_reg\(10) & !\jugador_0|divisor1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(10),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~19\,
	combout => \jugador_0|divisor1|Add0~20_combout\,
	cout => \jugador_0|divisor1|Add0~21\);

-- Location: FF_X52_Y44_N27
\jugador_0|divisor1|q_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~20_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(10));

-- Location: LCCOMB_X52_Y44_N28
\jugador_0|divisor1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~22_combout\ = (\jugador_0|divisor1|q_reg\(11) & (!\jugador_0|divisor1|Add0~21\)) # (!\jugador_0|divisor1|q_reg\(11) & ((\jugador_0|divisor1|Add0~21\) # (GND)))
-- \jugador_0|divisor1|Add0~23\ = CARRY((!\jugador_0|divisor1|Add0~21\) # (!\jugador_0|divisor1|q_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|divisor1|q_reg\(11),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~21\,
	combout => \jugador_0|divisor1|Add0~22_combout\,
	cout => \jugador_0|divisor1|Add0~23\);

-- Location: FF_X52_Y44_N29
\jugador_0|divisor1|q_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~22_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(11));

-- Location: LCCOMB_X52_Y44_N30
\jugador_0|divisor1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~24_combout\ = (\jugador_0|divisor1|q_reg\(12) & (\jugador_0|divisor1|Add0~23\ $ (GND))) # (!\jugador_0|divisor1|q_reg\(12) & (!\jugador_0|divisor1|Add0~23\ & VCC))
-- \jugador_0|divisor1|Add0~25\ = CARRY((\jugador_0|divisor1|q_reg\(12) & !\jugador_0|divisor1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(12),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~23\,
	combout => \jugador_0|divisor1|Add0~24_combout\,
	cout => \jugador_0|divisor1|Add0~25\);

-- Location: LCCOMB_X51_Y44_N0
\jugador_0|divisor1|q_next[12]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|q_next[12]~10_combout\ = (\jugador_0|divisor1|Add0~24_combout\ & !\jugador_0|divisor1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_0|divisor1|Add0~24_combout\,
	datad => \jugador_0|divisor1|Equal0~8_combout\,
	combout => \jugador_0|divisor1|q_next[12]~10_combout\);

-- Location: FF_X51_Y44_N1
\jugador_0|divisor1|q_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|q_next[12]~10_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(12));

-- Location: LCCOMB_X52_Y43_N0
\jugador_0|divisor1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~26_combout\ = (\jugador_0|divisor1|q_reg\(13) & (!\jugador_0|divisor1|Add0~25\)) # (!\jugador_0|divisor1|q_reg\(13) & ((\jugador_0|divisor1|Add0~25\) # (GND)))
-- \jugador_0|divisor1|Add0~27\ = CARRY((!\jugador_0|divisor1|Add0~25\) # (!\jugador_0|divisor1|q_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(13),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~25\,
	combout => \jugador_0|divisor1|Add0~26_combout\,
	cout => \jugador_0|divisor1|Add0~27\);

-- Location: LCCOMB_X52_Y43_N30
\jugador_0|divisor1|q_next[13]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|q_next[13]~9_combout\ = (\jugador_0|divisor1|Add0~26_combout\ & !\jugador_0|divisor1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|divisor1|Add0~26_combout\,
	datad => \jugador_0|divisor1|Equal0~8_combout\,
	combout => \jugador_0|divisor1|q_next[13]~9_combout\);

-- Location: FF_X52_Y43_N31
\jugador_0|divisor1|q_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|q_next[13]~9_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(13));

-- Location: LCCOMB_X52_Y43_N2
\jugador_0|divisor1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~28_combout\ = (\jugador_0|divisor1|q_reg\(14) & (\jugador_0|divisor1|Add0~27\ $ (GND))) # (!\jugador_0|divisor1|q_reg\(14) & (!\jugador_0|divisor1|Add0~27\ & VCC))
-- \jugador_0|divisor1|Add0~29\ = CARRY((\jugador_0|divisor1|q_reg\(14) & !\jugador_0|divisor1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|divisor1|q_reg\(14),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~27\,
	combout => \jugador_0|divisor1|Add0~28_combout\,
	cout => \jugador_0|divisor1|Add0~29\);

-- Location: LCCOMB_X52_Y43_N28
\jugador_0|divisor1|q_next[14]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|q_next[14]~8_combout\ = (\jugador_0|divisor1|Add0~28_combout\ & !\jugador_0|divisor1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|divisor1|Add0~28_combout\,
	datad => \jugador_0|divisor1|Equal0~8_combout\,
	combout => \jugador_0|divisor1|q_next[14]~8_combout\);

-- Location: FF_X52_Y43_N29
\jugador_0|divisor1|q_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|q_next[14]~8_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(14));

-- Location: LCCOMB_X52_Y43_N4
\jugador_0|divisor1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~30_combout\ = (\jugador_0|divisor1|q_reg\(15) & (!\jugador_0|divisor1|Add0~29\)) # (!\jugador_0|divisor1|q_reg\(15) & ((\jugador_0|divisor1|Add0~29\) # (GND)))
-- \jugador_0|divisor1|Add0~31\ = CARRY((!\jugador_0|divisor1|Add0~29\) # (!\jugador_0|divisor1|q_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|divisor1|q_reg\(15),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~29\,
	combout => \jugador_0|divisor1|Add0~30_combout\,
	cout => \jugador_0|divisor1|Add0~31\);

-- Location: LCCOMB_X51_Y43_N6
\jugador_0|divisor1|q_next[15]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|q_next[15]~7_combout\ = (!\jugador_0|divisor1|Equal0~8_combout\ & \jugador_0|divisor1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_0|divisor1|Equal0~8_combout\,
	datad => \jugador_0|divisor1|Add0~30_combout\,
	combout => \jugador_0|divisor1|q_next[15]~7_combout\);

-- Location: FF_X51_Y43_N7
\jugador_0|divisor1|q_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|q_next[15]~7_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(15));

-- Location: LCCOMB_X52_Y43_N6
\jugador_0|divisor1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~32_combout\ = (\jugador_0|divisor1|q_reg\(16) & (\jugador_0|divisor1|Add0~31\ $ (GND))) # (!\jugador_0|divisor1|q_reg\(16) & (!\jugador_0|divisor1|Add0~31\ & VCC))
-- \jugador_0|divisor1|Add0~33\ = CARRY((\jugador_0|divisor1|q_reg\(16) & !\jugador_0|divisor1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(16),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~31\,
	combout => \jugador_0|divisor1|Add0~32_combout\,
	cout => \jugador_0|divisor1|Add0~33\);

-- Location: FF_X52_Y43_N7
\jugador_0|divisor1|q_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~32_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(16));

-- Location: LCCOMB_X52_Y43_N8
\jugador_0|divisor1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~34_combout\ = (\jugador_0|divisor1|q_reg\(17) & (!\jugador_0|divisor1|Add0~33\)) # (!\jugador_0|divisor1|q_reg\(17) & ((\jugador_0|divisor1|Add0~33\) # (GND)))
-- \jugador_0|divisor1|Add0~35\ = CARRY((!\jugador_0|divisor1|Add0~33\) # (!\jugador_0|divisor1|q_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(17),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~33\,
	combout => \jugador_0|divisor1|Add0~34_combout\,
	cout => \jugador_0|divisor1|Add0~35\);

-- Location: LCCOMB_X51_Y43_N16
\jugador_0|divisor1|q_next[17]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|q_next[17]~6_combout\ = (!\jugador_0|divisor1|Equal0~8_combout\ & \jugador_0|divisor1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|Equal0~8_combout\,
	datac => \jugador_0|divisor1|Add0~34_combout\,
	combout => \jugador_0|divisor1|q_next[17]~6_combout\);

-- Location: FF_X51_Y43_N17
\jugador_0|divisor1|q_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|q_next[17]~6_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(17));

-- Location: LCCOMB_X52_Y43_N10
\jugador_0|divisor1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~36_combout\ = (\jugador_0|divisor1|q_reg\(18) & (\jugador_0|divisor1|Add0~35\ $ (GND))) # (!\jugador_0|divisor1|q_reg\(18) & (!\jugador_0|divisor1|Add0~35\ & VCC))
-- \jugador_0|divisor1|Add0~37\ = CARRY((\jugador_0|divisor1|q_reg\(18) & !\jugador_0|divisor1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(18),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~35\,
	combout => \jugador_0|divisor1|Add0~36_combout\,
	cout => \jugador_0|divisor1|Add0~37\);

-- Location: FF_X52_Y43_N11
\jugador_0|divisor1|q_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~36_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(18));

-- Location: LCCOMB_X52_Y43_N12
\jugador_0|divisor1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~38_combout\ = (\jugador_0|divisor1|q_reg\(19) & (!\jugador_0|divisor1|Add0~37\)) # (!\jugador_0|divisor1|q_reg\(19) & ((\jugador_0|divisor1|Add0~37\) # (GND)))
-- \jugador_0|divisor1|Add0~39\ = CARRY((!\jugador_0|divisor1|Add0~37\) # (!\jugador_0|divisor1|q_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(19),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~37\,
	combout => \jugador_0|divisor1|Add0~38_combout\,
	cout => \jugador_0|divisor1|Add0~39\);

-- Location: LCCOMB_X51_Y43_N12
\jugador_0|divisor1|q_next[19]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|q_next[19]~5_combout\ = (!\jugador_0|divisor1|Equal0~8_combout\ & \jugador_0|divisor1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|Equal0~8_combout\,
	datac => \jugador_0|divisor1|Add0~38_combout\,
	combout => \jugador_0|divisor1|q_next[19]~5_combout\);

-- Location: FF_X51_Y43_N13
\jugador_0|divisor1|q_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|q_next[19]~5_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(19));

-- Location: LCCOMB_X52_Y43_N14
\jugador_0|divisor1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~40_combout\ = (\jugador_0|divisor1|q_reg\(20) & (\jugador_0|divisor1|Add0~39\ $ (GND))) # (!\jugador_0|divisor1|q_reg\(20) & (!\jugador_0|divisor1|Add0~39\ & VCC))
-- \jugador_0|divisor1|Add0~41\ = CARRY((\jugador_0|divisor1|q_reg\(20) & !\jugador_0|divisor1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(20),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~39\,
	combout => \jugador_0|divisor1|Add0~40_combout\,
	cout => \jugador_0|divisor1|Add0~41\);

-- Location: LCCOMB_X51_Y43_N10
\jugador_0|divisor1|q_next[20]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|q_next[20]~4_combout\ = (!\jugador_0|divisor1|Equal0~8_combout\ & \jugador_0|divisor1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|Equal0~8_combout\,
	datac => \jugador_0|divisor1|Add0~40_combout\,
	combout => \jugador_0|divisor1|q_next[20]~4_combout\);

-- Location: FF_X51_Y43_N11
\jugador_0|divisor1|q_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|q_next[20]~4_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(20));

-- Location: LCCOMB_X52_Y43_N16
\jugador_0|divisor1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~42_combout\ = (\jugador_0|divisor1|q_reg\(21) & (!\jugador_0|divisor1|Add0~41\)) # (!\jugador_0|divisor1|q_reg\(21) & ((\jugador_0|divisor1|Add0~41\) # (GND)))
-- \jugador_0|divisor1|Add0~43\ = CARRY((!\jugador_0|divisor1|Add0~41\) # (!\jugador_0|divisor1|q_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(21),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~41\,
	combout => \jugador_0|divisor1|Add0~42_combout\,
	cout => \jugador_0|divisor1|Add0~43\);

-- Location: LCCOMB_X51_Y43_N8
\jugador_0|divisor1|q_next[21]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|q_next[21]~3_combout\ = (!\jugador_0|divisor1|Equal0~8_combout\ & \jugador_0|divisor1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_0|divisor1|Equal0~8_combout\,
	datad => \jugador_0|divisor1|Add0~42_combout\,
	combout => \jugador_0|divisor1|q_next[21]~3_combout\);

-- Location: FF_X51_Y43_N9
\jugador_0|divisor1|q_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|q_next[21]~3_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(21));

-- Location: LCCOMB_X51_Y43_N22
\jugador_0|divisor1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Equal0~1_combout\ = (\jugador_0|divisor1|q_reg\(19) & (\jugador_0|divisor1|q_reg\(21) & (!\jugador_0|divisor1|q_reg\(18) & \jugador_0|divisor1|q_reg\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(19),
	datab => \jugador_0|divisor1|q_reg\(21),
	datac => \jugador_0|divisor1|q_reg\(18),
	datad => \jugador_0|divisor1|q_reg\(20),
	combout => \jugador_0|divisor1|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y43_N18
\jugador_0|divisor1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~44_combout\ = (\jugador_0|divisor1|q_reg\(22) & (\jugador_0|divisor1|Add0~43\ $ (GND))) # (!\jugador_0|divisor1|q_reg\(22) & (!\jugador_0|divisor1|Add0~43\ & VCC))
-- \jugador_0|divisor1|Add0~45\ = CARRY((\jugador_0|divisor1|q_reg\(22) & !\jugador_0|divisor1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(22),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~43\,
	combout => \jugador_0|divisor1|Add0~44_combout\,
	cout => \jugador_0|divisor1|Add0~45\);

-- Location: LCCOMB_X51_Y43_N28
\jugador_0|divisor1|q_next[22]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|q_next[22]~2_combout\ = (!\jugador_0|divisor1|Equal0~8_combout\ & \jugador_0|divisor1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_0|divisor1|Equal0~8_combout\,
	datad => \jugador_0|divisor1|Add0~44_combout\,
	combout => \jugador_0|divisor1|q_next[22]~2_combout\);

-- Location: FF_X51_Y43_N29
\jugador_0|divisor1|q_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|q_next[22]~2_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(22));

-- Location: LCCOMB_X52_Y43_N20
\jugador_0|divisor1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~46_combout\ = (\jugador_0|divisor1|q_reg\(23) & (!\jugador_0|divisor1|Add0~45\)) # (!\jugador_0|divisor1|q_reg\(23) & ((\jugador_0|divisor1|Add0~45\) # (GND)))
-- \jugador_0|divisor1|Add0~47\ = CARRY((!\jugador_0|divisor1|Add0~45\) # (!\jugador_0|divisor1|q_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(23),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~45\,
	combout => \jugador_0|divisor1|Add0~46_combout\,
	cout => \jugador_0|divisor1|Add0~47\);

-- Location: LCCOMB_X51_Y43_N26
\jugador_0|divisor1|q_next[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|q_next[23]~1_combout\ = (!\jugador_0|divisor1|Equal0~8_combout\ & \jugador_0|divisor1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|Equal0~8_combout\,
	datac => \jugador_0|divisor1|Add0~46_combout\,
	combout => \jugador_0|divisor1|q_next[23]~1_combout\);

-- Location: FF_X51_Y43_N27
\jugador_0|divisor1|q_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|q_next[23]~1_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(23));

-- Location: LCCOMB_X52_Y43_N22
\jugador_0|divisor1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~48_combout\ = (\jugador_0|divisor1|q_reg\(24) & (\jugador_0|divisor1|Add0~47\ $ (GND))) # (!\jugador_0|divisor1|q_reg\(24) & (!\jugador_0|divisor1|Add0~47\ & VCC))
-- \jugador_0|divisor1|Add0~49\ = CARRY((\jugador_0|divisor1|q_reg\(24) & !\jugador_0|divisor1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(24),
	datad => VCC,
	cin => \jugador_0|divisor1|Add0~47\,
	combout => \jugador_0|divisor1|Add0~48_combout\,
	cout => \jugador_0|divisor1|Add0~49\);

-- Location: FF_X52_Y43_N23
\jugador_0|divisor1|q_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|Add0~48_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(24));

-- Location: LCCOMB_X52_Y43_N24
\jugador_0|divisor1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Add0~50_combout\ = \jugador_0|divisor1|q_reg\(25) $ (\jugador_0|divisor1|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(25),
	cin => \jugador_0|divisor1|Add0~49\,
	combout => \jugador_0|divisor1|Add0~50_combout\);

-- Location: LCCOMB_X52_Y43_N26
\jugador_0|divisor1|q_next[25]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|q_next[25]~0_combout\ = (!\jugador_0|divisor1|Equal0~8_combout\ & \jugador_0|divisor1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|divisor1|Equal0~8_combout\,
	datad => \jugador_0|divisor1|Add0~50_combout\,
	combout => \jugador_0|divisor1|q_next[25]~0_combout\);

-- Location: FF_X52_Y43_N27
\jugador_0|divisor1|q_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|q_next[25]~0_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|q_reg\(25));

-- Location: LCCOMB_X51_Y43_N18
\jugador_0|divisor1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Equal0~0_combout\ = (\jugador_0|divisor1|q_reg\(22) & (\jugador_0|divisor1|q_reg\(25) & (\jugador_0|divisor1|q_reg\(23) & !\jugador_0|divisor1|q_reg\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(22),
	datab => \jugador_0|divisor1|q_reg\(25),
	datac => \jugador_0|divisor1|q_reg\(23),
	datad => \jugador_0|divisor1|q_reg\(24),
	combout => \jugador_0|divisor1|Equal0~0_combout\);

-- Location: LCCOMB_X51_Y44_N30
\jugador_0|divisor1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Equal0~3_combout\ = (!\jugador_0|divisor1|q_reg\(10) & (\jugador_0|divisor1|q_reg\(12) & (\jugador_0|divisor1|q_reg\(13) & !\jugador_0|divisor1|q_reg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(10),
	datab => \jugador_0|divisor1|q_reg\(12),
	datac => \jugador_0|divisor1|q_reg\(13),
	datad => \jugador_0|divisor1|q_reg\(11),
	combout => \jugador_0|divisor1|Equal0~3_combout\);

-- Location: LCCOMB_X51_Y43_N20
\jugador_0|divisor1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Equal0~2_combout\ = (!\jugador_0|divisor1|q_reg\(16) & (\jugador_0|divisor1|q_reg\(17) & (\jugador_0|divisor1|q_reg\(14) & \jugador_0|divisor1|q_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(16),
	datab => \jugador_0|divisor1|q_reg\(17),
	datac => \jugador_0|divisor1|q_reg\(14),
	datad => \jugador_0|divisor1|q_reg\(15),
	combout => \jugador_0|divisor1|Equal0~2_combout\);

-- Location: LCCOMB_X51_Y43_N14
\jugador_0|divisor1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Equal0~4_combout\ = (\jugador_0|divisor1|Equal0~1_combout\ & (\jugador_0|divisor1|Equal0~0_combout\ & (\jugador_0|divisor1|Equal0~3_combout\ & \jugador_0|divisor1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|Equal0~1_combout\,
	datab => \jugador_0|divisor1|Equal0~0_combout\,
	datac => \jugador_0|divisor1|Equal0~3_combout\,
	datad => \jugador_0|divisor1|Equal0~2_combout\,
	combout => \jugador_0|divisor1|Equal0~4_combout\);

-- Location: LCCOMB_X52_Y44_N2
\jugador_0|divisor1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Equal0~6_combout\ = (\jugador_0|divisor1|q_reg\(2) & (\jugador_0|divisor1|q_reg\(5) & (\jugador_0|divisor1|q_reg\(4) & \jugador_0|divisor1|q_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|q_reg\(2),
	datab => \jugador_0|divisor1|q_reg\(5),
	datac => \jugador_0|divisor1|q_reg\(4),
	datad => \jugador_0|divisor1|q_reg\(3),
	combout => \jugador_0|divisor1|Equal0~6_combout\);

-- Location: LCCOMB_X51_Y44_N18
\jugador_0|divisor1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|Equal0~8_combout\ = (\jugador_0|divisor1|Equal0~5_combout\ & (\jugador_0|divisor1|Equal0~7_combout\ & (\jugador_0|divisor1|Equal0~4_combout\ & \jugador_0|divisor1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|divisor1|Equal0~5_combout\,
	datab => \jugador_0|divisor1|Equal0~7_combout\,
	datac => \jugador_0|divisor1|Equal0~4_combout\,
	datad => \jugador_0|divisor1|Equal0~6_combout\,
	combout => \jugador_0|divisor1|Equal0~8_combout\);

-- Location: LCCOMB_X51_Y43_N24
\jugador_0|divisor1|clk_o_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|divisor1|clk_o_reg~feeder_combout\ = \jugador_0|divisor1|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_0|divisor1|Equal0~8_combout\,
	combout => \jugador_0|divisor1|clk_o_reg~feeder_combout\);

-- Location: FF_X51_Y43_N25
\jugador_0|divisor1|clk_o_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \jugador_0|divisor1|clk_o_reg~feeder_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|divisor1|clk_o_reg~q\);

-- Location: LCCOMB_X47_Y43_N24
\jugador_0|en_seg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|en_seg~0_combout\ = (\jugador_0|divisor1|clk_o_reg~q\ & ((\fsm1|state_reg.ST_PLAYER_1_M~q\) # (\fsm1|state_reg.ST_PLAYER_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|state_reg.ST_PLAYER_1_M~q\,
	datac => \fsm1|state_reg.ST_PLAYER_0~q\,
	datad => \jugador_0|divisor1|clk_o_reg~q\,
	combout => \jugador_0|en_seg~0_combout\);

-- Location: LCCOMB_X47_Y39_N28
\jugador_0|contador1|q_reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador1|q_reg[0]~1_combout\ = (GLOBAL(\jugador_0|g_reset_n~3clkctrl_outclk\) & ((\jugador_1|Equal1~0_combout\))) # (!GLOBAL(\jugador_0|g_reset_n~3clkctrl_outclk\) & (\jugador_0|contador1|q_reg[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg[0]~1_combout\,
	datac => \jugador_1|Equal1~0_combout\,
	datad => \jugador_0|g_reset_n~3clkctrl_outclk\,
	combout => \jugador_0|contador1|q_reg[0]~1_combout\);

-- Location: LCCOMB_X47_Y39_N14
\jugador_0|contador1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador1|Add0~0_combout\ = \jugador_0|contador1|q_reg[0]~2_combout\ $ (VCC)
-- \jugador_0|contador1|Add0~1\ = CARRY(\jugador_0|contador1|q_reg[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|contador1|q_reg[0]~2_combout\,
	datad => VCC,
	combout => \jugador_0|contador1|Add0~0_combout\,
	cout => \jugador_0|contador1|Add0~1\);

-- Location: LCCOMB_X47_Y39_N4
\jugador_0|contador1|q_reg[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador1|q_reg[0]~3_combout\ = \jugador_0|contador1|q_reg[0]~1_combout\ $ (\jugador_0|contador1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg[0]~1_combout\,
	datad => \jugador_0|contador1|Add0~0_combout\,
	combout => \jugador_0|contador1|q_reg[0]~3_combout\);

-- Location: FF_X47_Y39_N5
\jugador_0|contador1|q_reg[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador1|q_reg[0]~3_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador1|q_reg[0]~_emulated_q\);

-- Location: LCCOMB_X47_Y39_N2
\jugador_0|contador1|q_reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador1|q_reg[0]~2_combout\ = (\jugador_0|g_reset_n~3_combout\ & (\jugador_1|Equal1~0_combout\)) # (!\jugador_0|g_reset_n~3_combout\ & ((\jugador_0|contador1|q_reg[0]~_emulated_q\ $ (\jugador_0|contador1|q_reg[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|g_reset_n~3_combout\,
	datab => \jugador_1|Equal1~0_combout\,
	datac => \jugador_0|contador1|q_reg[0]~_emulated_q\,
	datad => \jugador_0|contador1|q_reg[0]~1_combout\,
	combout => \jugador_0|contador1|q_reg[0]~2_combout\);

-- Location: LCCOMB_X47_Y39_N16
\jugador_0|contador1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador1|Add0~2_combout\ = (\jugador_0|contador1|q_reg\(1) & (\jugador_0|contador1|Add0~1\ & VCC)) # (!\jugador_0|contador1|q_reg\(1) & (!\jugador_0|contador1|Add0~1\))
-- \jugador_0|contador1|Add0~3\ = CARRY((!\jugador_0|contador1|q_reg\(1) & !\jugador_0|contador1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg\(1),
	datad => VCC,
	cin => \jugador_0|contador1|Add0~1\,
	combout => \jugador_0|contador1|Add0~2_combout\,
	cout => \jugador_0|contador1|Add0~3\);

-- Location: FF_X47_Y39_N17
\jugador_0|contador1|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador1|Add0~2_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador1|q_reg\(1));

-- Location: LCCOMB_X47_Y39_N18
\jugador_0|contador1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador1|Add0~4_combout\ = (\jugador_0|contador1|q_reg[2]~4_combout\ & ((GND) # (!\jugador_0|contador1|Add0~3\))) # (!\jugador_0|contador1|q_reg[2]~4_combout\ & (\jugador_0|contador1|Add0~3\ $ (GND)))
-- \jugador_0|contador1|Add0~5\ = CARRY((\jugador_0|contador1|q_reg[2]~4_combout\) # (!\jugador_0|contador1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg[2]~4_combout\,
	datad => VCC,
	cin => \jugador_0|contador1|Add0~3\,
	combout => \jugador_0|contador1|Add0~4_combout\,
	cout => \jugador_0|contador1|Add0~5\);

-- Location: LCCOMB_X47_Y39_N20
\jugador_0|contador1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador1|Add0~6_combout\ = (\jugador_0|contador1|q_reg\(3) & (\jugador_0|contador1|Add0~5\ & VCC)) # (!\jugador_0|contador1|q_reg\(3) & (!\jugador_0|contador1|Add0~5\))
-- \jugador_0|contador1|Add0~7\ = CARRY((!\jugador_0|contador1|q_reg\(3) & !\jugador_0|contador1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|contador1|q_reg\(3),
	datad => VCC,
	cin => \jugador_0|contador1|Add0~5\,
	combout => \jugador_0|contador1|Add0~6_combout\,
	cout => \jugador_0|contador1|Add0~7\);

-- Location: FF_X47_Y39_N21
\jugador_0|contador1|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador1|Add0~6_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador1|q_reg\(3));

-- Location: LCCOMB_X47_Y39_N22
\jugador_0|contador1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador1|Add0~8_combout\ = (\jugador_0|contador1|q_reg\(4) & ((GND) # (!\jugador_0|contador1|Add0~7\))) # (!\jugador_0|contador1|q_reg\(4) & (\jugador_0|contador1|Add0~7\ $ (GND)))
-- \jugador_0|contador1|Add0~9\ = CARRY((\jugador_0|contador1|q_reg\(4)) # (!\jugador_0|contador1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg\(4),
	datad => VCC,
	cin => \jugador_0|contador1|Add0~7\,
	combout => \jugador_0|contador1|Add0~8_combout\,
	cout => \jugador_0|contador1|Add0~9\);

-- Location: FF_X47_Y39_N23
\jugador_0|contador1|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador1|Add0~8_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador1|q_reg\(4));

-- Location: LCCOMB_X47_Y39_N24
\jugador_0|contador1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador1|Add0~10_combout\ = \jugador_0|contador1|q_reg\(5) $ (!\jugador_0|contador1|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|contador1|q_reg\(5),
	cin => \jugador_0|contador1|Add0~9\,
	combout => \jugador_0|contador1|Add0~10_combout\);

-- Location: FF_X47_Y39_N25
\jugador_0|contador1|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador1|Add0~10_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador1|q_reg\(5));

-- Location: LCCOMB_X47_Y39_N26
\jugador_0|comporador1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|comporador1|Equal0~0_combout\ = (!\jugador_0|contador1|q_reg\(1) & (!\jugador_0|contador1|q_reg\(3) & (!\jugador_0|contador1|q_reg\(4) & !\jugador_0|contador1|q_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg\(1),
	datab => \jugador_0|contador1|q_reg\(3),
	datac => \jugador_0|contador1|q_reg\(4),
	datad => \jugador_0|contador1|q_reg\(5),
	combout => \jugador_0|comporador1|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y39_N12
\jugador_0|contador1|q_reg[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador1|q_reg[2]~10_combout\ = (\jugador_0|contador1|q_reg[0]~2_combout\) # ((\jugador_0|contador1|q_reg[2]~4_combout\) # (!\jugador_0|comporador1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg[0]~2_combout\,
	datac => \jugador_0|contador1|q_reg[2]~4_combout\,
	datad => \jugador_0|comporador1|Equal0~0_combout\,
	combout => \jugador_0|contador1|q_reg[2]~10_combout\);

-- Location: LCCOMB_X47_Y39_N30
\jugador_0|contador1|q_reg[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador1|q_reg[2]~5_combout\ = \jugador_0|contador1|q_reg[0]~1_combout\ $ (((\jugador_0|contador1|Add0~4_combout\ & \jugador_0|contador1|q_reg[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg[0]~1_combout\,
	datac => \jugador_0|contador1|Add0~4_combout\,
	datad => \jugador_0|contador1|q_reg[2]~10_combout\,
	combout => \jugador_0|contador1|q_reg[2]~5_combout\);

-- Location: FF_X47_Y39_N31
\jugador_0|contador1|q_reg[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador1|q_reg[2]~5_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador1|q_reg[2]~_emulated_q\);

-- Location: LCCOMB_X47_Y39_N8
\jugador_0|contador1|q_reg[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador1|q_reg[2]~4_combout\ = (\jugador_0|g_reset_n~3_combout\ & (\jugador_1|Equal1~0_combout\)) # (!\jugador_0|g_reset_n~3_combout\ & ((\jugador_0|contador1|q_reg[2]~_emulated_q\ $ (\jugador_0|contador1|q_reg[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|g_reset_n~3_combout\,
	datab => \jugador_1|Equal1~0_combout\,
	datac => \jugador_0|contador1|q_reg[2]~_emulated_q\,
	datad => \jugador_0|contador1|q_reg[0]~1_combout\,
	combout => \jugador_0|contador1|q_reg[2]~4_combout\);

-- Location: LCCOMB_X47_Y39_N0
\jugador_0|en_min\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|en_min~combout\ = (\jugador_0|en_seg~0_combout\ & (!\jugador_0|contador1|q_reg[0]~2_combout\ & (!\jugador_0|contador1|q_reg[2]~4_combout\ & \jugador_0|comporador1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|en_seg~0_combout\,
	datab => \jugador_0|contador1|q_reg[0]~2_combout\,
	datac => \jugador_0|contador1|q_reg[2]~4_combout\,
	datad => \jugador_0|comporador1|Equal0~0_combout\,
	combout => \jugador_0|en_min~combout\);

-- Location: FF_X45_Y39_N31
\jugador_0|contador2|q_reg[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador2|q_reg[0]~3_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_min~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador2|q_reg[0]~_emulated_q\);

-- Location: LCCOMB_X45_Y39_N8
\jugador_0|contador2|q_reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|q_reg[0]~2_combout\ = (\jugador_0|g_reset_n~3_combout\ & (((\jugador_0|start_min[0]~0_combout\)))) # (!\jugador_0|g_reset_n~3_combout\ & (\jugador_0|contador2|q_reg[0]~_emulated_q\ $ (((\jugador_0|contador2|q_reg[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[0]~_emulated_q\,
	datab => \jugador_0|g_reset_n~3_combout\,
	datac => \jugador_0|start_min[0]~0_combout\,
	datad => \jugador_0|contador2|q_reg[0]~1_combout\,
	combout => \jugador_0|contador2|q_reg[0]~2_combout\);

-- Location: LCCOMB_X45_Y39_N18
\jugador_0|contador2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|Add0~2_combout\ = (\jugador_0|contador2|q_reg\(1) & (\jugador_0|contador2|Add0~1\ & VCC)) # (!\jugador_0|contador2|q_reg\(1) & (!\jugador_0|contador2|Add0~1\))
-- \jugador_0|contador2|Add0~3\ = CARRY((!\jugador_0|contador2|q_reg\(1) & !\jugador_0|contador2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|contador2|q_reg\(1),
	datad => VCC,
	cin => \jugador_0|contador2|Add0~1\,
	combout => \jugador_0|contador2|Add0~2_combout\,
	cout => \jugador_0|contador2|Add0~3\);

-- Location: FF_X45_Y39_N19
\jugador_0|contador2|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador2|Add0~2_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_min~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador2|q_reg\(1));

-- Location: LCCOMB_X45_Y39_N20
\jugador_0|contador2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|Add0~4_combout\ = (\jugador_0|contador2|q_reg[2]~6_combout\ & ((GND) # (!\jugador_0|contador2|Add0~3\))) # (!\jugador_0|contador2|q_reg[2]~6_combout\ & (\jugador_0|contador2|Add0~3\ $ (GND)))
-- \jugador_0|contador2|Add0~5\ = CARRY((\jugador_0|contador2|q_reg[2]~6_combout\) # (!\jugador_0|contador2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[2]~6_combout\,
	datad => VCC,
	cin => \jugador_0|contador2|Add0~3\,
	combout => \jugador_0|contador2|Add0~4_combout\,
	cout => \jugador_0|contador2|Add0~5\);

-- Location: LCCOMB_X45_Y39_N22
\jugador_0|contador2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|Add0~6_combout\ = (\jugador_0|contador2|q_reg[3]~10_combout\ & (\jugador_0|contador2|Add0~5\ & VCC)) # (!\jugador_0|contador2|q_reg[3]~10_combout\ & (!\jugador_0|contador2|Add0~5\))
-- \jugador_0|contador2|Add0~7\ = CARRY((!\jugador_0|contador2|q_reg[3]~10_combout\ & !\jugador_0|contador2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|contador2|q_reg[3]~10_combout\,
	datad => VCC,
	cin => \jugador_0|contador2|Add0~5\,
	combout => \jugador_0|contador2|Add0~6_combout\,
	cout => \jugador_0|contador2|Add0~7\);

-- Location: LCCOMB_X45_Y39_N14
\jugador_0|contador2|q_reg[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|q_reg[3]~11_combout\ = \jugador_0|contador2|Add0~6_combout\ $ (\jugador_0|contador2|q_reg[3]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|Add0~6_combout\,
	datac => \jugador_0|contador2|q_reg[3]~9_combout\,
	combout => \jugador_0|contador2|q_reg[3]~11_combout\);

-- Location: FF_X45_Y39_N15
\jugador_0|contador2|q_reg[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador2|q_reg[3]~11_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_min~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador2|q_reg[3]~_emulated_q\);

-- Location: LCCOMB_X45_Y39_N4
\jugador_0|contador2|q_reg[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|q_reg[3]~10_combout\ = (\jugador_0|g_reset_n~3_combout\ & (((\jugador_1|Equal1~1_combout\)))) # (!\jugador_0|g_reset_n~3_combout\ & (\jugador_0|contador2|q_reg[3]~_emulated_q\ $ (((\jugador_0|contador2|q_reg[3]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[3]~_emulated_q\,
	datab => \jugador_1|Equal1~1_combout\,
	datac => \jugador_0|g_reset_n~3_combout\,
	datad => \jugador_0|contador2|q_reg[3]~9_combout\,
	combout => \jugador_0|contador2|q_reg[3]~10_combout\);

-- Location: LCCOMB_X45_Y39_N24
\jugador_0|contador2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|Add0~8_combout\ = (\jugador_0|contador2|q_reg[4]~12_combout\ & ((GND) # (!\jugador_0|contador2|Add0~7\))) # (!\jugador_0|contador2|q_reg[4]~12_combout\ & (\jugador_0|contador2|Add0~7\ $ (GND)))
-- \jugador_0|contador2|Add0~9\ = CARRY((\jugador_0|contador2|q_reg[4]~12_combout\) # (!\jugador_0|contador2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[4]~12_combout\,
	datad => VCC,
	cin => \jugador_0|contador2|Add0~7\,
	combout => \jugador_0|contador2|Add0~8_combout\,
	cout => \jugador_0|contador2|Add0~9\);

-- Location: LCCOMB_X45_Y39_N2
\jugador_0|contador2|q_reg[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|q_reg[4]~13_combout\ = \jugador_0|contador2|q_reg[3]~9_combout\ $ (\jugador_0|contador2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jugador_0|contador2|q_reg[3]~9_combout\,
	datad => \jugador_0|contador2|Add0~8_combout\,
	combout => \jugador_0|contador2|q_reg[4]~13_combout\);

-- Location: FF_X45_Y39_N3
\jugador_0|contador2|q_reg[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador2|q_reg[4]~13_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_min~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador2|q_reg[4]~_emulated_q\);

-- Location: LCCOMB_X45_Y39_N28
\jugador_0|contador2|q_reg[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|q_reg[4]~12_combout\ = (\jugador_0|g_reset_n~3_combout\ & (\jugador_1|Equal1~1_combout\)) # (!\jugador_0|g_reset_n~3_combout\ & ((\jugador_0|contador2|q_reg[4]~_emulated_q\ $ (\jugador_0|contador2|q_reg[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|Equal1~1_combout\,
	datab => \jugador_0|contador2|q_reg[4]~_emulated_q\,
	datac => \jugador_0|g_reset_n~3_combout\,
	datad => \jugador_0|contador2|q_reg[3]~9_combout\,
	combout => \jugador_0|contador2|q_reg[4]~12_combout\);

-- Location: LCCOMB_X45_Y39_N26
\jugador_0|contador2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|Add0~10_combout\ = \jugador_0|contador2|q_reg\(5) $ (!\jugador_0|contador2|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg\(5),
	cin => \jugador_0|contador2|Add0~9\,
	combout => \jugador_0|contador2|Add0~10_combout\);

-- Location: FF_X45_Y39_N27
\jugador_0|contador2|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador2|Add0~10_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_min~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador2|q_reg\(5));

-- Location: LCCOMB_X45_Y39_N12
\jugador_0|comporador2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|comporador2|Equal0~0_combout\ = (!\jugador_0|contador2|q_reg[4]~12_combout\ & (!\jugador_0|contador2|q_reg\(1) & (!\jugador_0|contador2|q_reg\(5) & !\jugador_0|contador2|q_reg[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[4]~12_combout\,
	datab => \jugador_0|contador2|q_reg\(1),
	datac => \jugador_0|contador2|q_reg\(5),
	datad => \jugador_0|contador2|q_reg[3]~10_combout\,
	combout => \jugador_0|comporador2|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y42_N0
\jugador_0|en_hor\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|en_hor~combout\ = (\jugador_0|comporador2|Equal0~0_combout\ & (!\jugador_0|contador2|q_reg[2]~6_combout\ & (\jugador_0|en_min~combout\ & !\jugador_0|contador2|q_reg[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|comporador2|Equal0~0_combout\,
	datab => \jugador_0|contador2|q_reg[2]~6_combout\,
	datac => \jugador_0|en_min~combout\,
	datad => \jugador_0|contador2|q_reg[0]~2_combout\,
	combout => \jugador_0|en_hor~combout\);

-- Location: FF_X46_Y42_N9
\jugador_0|contador3|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador3|Add0~0_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_hor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador3|q_reg\(0));

-- Location: LCCOMB_X46_Y42_N26
\jugador_0|contador3|q_reg[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador3|q_reg[1]~3_combout\ = \jugador_0|contador3|q_reg[1]~1_combout\ $ (\jugador_0|contador3|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg[1]~1_combout\,
	datab => \jugador_0|contador3|Add0~2_combout\,
	combout => \jugador_0|contador3|q_reg[1]~3_combout\);

-- Location: FF_X46_Y42_N27
\jugador_0|contador3|q_reg[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador3|q_reg[1]~3_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_hor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador3|q_reg[1]~_emulated_q\);

-- Location: LCCOMB_X46_Y42_N2
\jugador_0|contador3|q_reg[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador3|q_reg[1]~2_combout\ = (\jugador_0|g_reset_n~3_combout\ & (((\jugador_1|Equal1~2_combout\)))) # (!\jugador_0|g_reset_n~3_combout\ & (\jugador_0|contador3|q_reg[1]~_emulated_q\ $ (((\jugador_0|contador3|q_reg[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg[1]~_emulated_q\,
	datab => \jugador_0|g_reset_n~3_combout\,
	datac => \jugador_1|Equal1~2_combout\,
	datad => \jugador_0|contador3|q_reg[1]~1_combout\,
	combout => \jugador_0|contador3|q_reg[1]~2_combout\);

-- Location: LCCOMB_X47_Y39_N10
\jugador_0|g_reset_n~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|g_reset_n~0_combout\ = (\jugador_0|contador3|q_reg[1]~2_combout\ & (\jugador_0|contador2|q_reg[4]~12_combout\ & (\jugador_0|contador1|q_reg\(4) & !\jugador_0|contador3|q_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg[1]~2_combout\,
	datab => \jugador_0|contador2|q_reg[4]~12_combout\,
	datac => \jugador_0|contador1|q_reg\(4),
	datad => \jugador_0|contador3|q_reg\(5),
	combout => \jugador_0|g_reset_n~0_combout\);

-- Location: LCCOMB_X46_Y39_N10
\jugador_0|max_value~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|max_value~2_combout\ = (\jugador_0|contador2|q_reg[0]~2_combout\ & (!\jugador_0|contador2|q_reg[2]~6_combout\ & (\jugador_0|contador2|q_reg[3]~10_combout\ & !\jugador_0|contador1|q_reg[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[0]~2_combout\,
	datab => \jugador_0|contador2|q_reg[2]~6_combout\,
	datac => \jugador_0|contador2|q_reg[3]~10_combout\,
	datad => \jugador_0|contador1|q_reg[2]~4_combout\,
	combout => \jugador_0|max_value~2_combout\);

-- Location: LCCOMB_X46_Y42_N24
\jugador_0|max_value~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|max_value~1_combout\ = (\jugador_0|contador1|q_reg[0]~2_combout\ & (\jugador_0|contador3|q_reg\(4) & (\jugador_0|contador3|q_reg\(0) & \jugador_0|contador3|q_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg[0]~2_combout\,
	datab => \jugador_0|contador3|q_reg\(4),
	datac => \jugador_0|contador3|q_reg\(0),
	datad => \jugador_0|contador3|q_reg\(2),
	combout => \jugador_0|max_value~1_combout\);

-- Location: LCCOMB_X46_Y42_N28
\jugador_0|g_reset_n~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|g_reset_n~1_combout\ = (\jugador_0|max_value~2_combout\ & (\jugador_0|max_value~1_combout\ & (\jugador_0|contador1|q_reg\(5) & !\jugador_0|contador3|q_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|max_value~2_combout\,
	datab => \jugador_0|max_value~1_combout\,
	datac => \jugador_0|contador1|q_reg\(5),
	datad => \jugador_0|contador3|q_reg\(3),
	combout => \jugador_0|g_reset_n~1_combout\);

-- Location: LCCOMB_X46_Y39_N6
\jugador_0|max_value~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|max_value~0_combout\ = (\jugador_0|contador2|q_reg\(5) & (\jugador_0|contador2|q_reg\(1) & (\jugador_0|contador1|q_reg\(3) & \jugador_0|contador1|q_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg\(5),
	datab => \jugador_0|contador2|q_reg\(1),
	datac => \jugador_0|contador1|q_reg\(3),
	datad => \jugador_0|contador1|q_reg\(1),
	combout => \jugador_0|max_value~0_combout\);

-- Location: LCCOMB_X45_Y50_N10
\jugador_0|g_reset_n~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|g_reset_n~2_combout\ = (\fsm1|state_reg.ST_PLAYER_1_M~q\) # ((\fsm1|state_reg.ST_PLAYER_0~q\) # ((!\fsm1|state_reg.ST_WAIT_CONFIG~q\ & \fsm1|state_reg.ST_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state_reg.ST_PLAYER_1_M~q\,
	datab => \fsm1|state_reg.ST_PLAYER_0~q\,
	datac => \fsm1|state_reg.ST_WAIT_CONFIG~q\,
	datad => \fsm1|state_reg.ST_IDLE~q\,
	combout => \jugador_0|g_reset_n~2_combout\);

-- Location: LCCOMB_X45_Y50_N26
\jugador_0|g_reset_n~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|g_reset_n~3_combout\ = ((\jugador_0|g_reset_n~0_combout\ & (\jugador_0|g_reset_n~1_combout\ & \jugador_0|max_value~0_combout\))) # (!\jugador_0|g_reset_n~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|g_reset_n~0_combout\,
	datab => \jugador_0|g_reset_n~1_combout\,
	datac => \jugador_0|max_value~0_combout\,
	datad => \jugador_0|g_reset_n~2_combout\,
	combout => \jugador_0|g_reset_n~3_combout\);

-- Location: LCCOMB_X46_Y39_N28
\jugador_0|contador2|q_reg[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|q_reg[2]~21_combout\ = ((\jugador_0|contador2|q_reg[0]~2_combout\) # (\jugador_0|contador2|q_reg[2]~6_combout\)) # (!\jugador_0|comporador2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|comporador2|Equal0~0_combout\,
	datac => \jugador_0|contador2|q_reg[0]~2_combout\,
	datad => \jugador_0|contador2|q_reg[2]~6_combout\,
	combout => \jugador_0|contador2|q_reg[2]~21_combout\);

-- Location: LCCOMB_X46_Y43_N16
\jugador_0|start_min[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|start_min[2]~1_combout\ = (\reg0|q_reg_1\(0) & (\reg0|q_reg_1\(1) & !\jugador_1|Equal1~0_combout\)) # (!\reg0|q_reg_1\(0) & (!\reg0|q_reg_1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg0|q_reg_1\(0),
	datac => \reg0|q_reg_1\(1),
	datad => \jugador_1|Equal1~0_combout\,
	combout => \jugador_0|start_min[2]~1_combout\);

-- Location: LCCOMB_X46_Y39_N26
\jugador_0|contador2|q_reg[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|q_reg[2]~5_combout\ = (GLOBAL(\jugador_0|g_reset_n~3clkctrl_outclk\) & ((\jugador_0|start_min[2]~1_combout\))) # (!GLOBAL(\jugador_0|g_reset_n~3clkctrl_outclk\) & (\jugador_0|contador2|q_reg[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[2]~5_combout\,
	datac => \jugador_0|g_reset_n~3clkctrl_outclk\,
	datad => \jugador_0|start_min[2]~1_combout\,
	combout => \jugador_0|contador2|q_reg[2]~5_combout\);

-- Location: LCCOMB_X45_Y39_N6
\jugador_0|contador2|q_reg[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|q_reg[2]~7_combout\ = \jugador_0|contador2|q_reg[2]~5_combout\ $ (((\jugador_0|contador2|q_reg[2]~21_combout\ & \jugador_0|contador2|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[2]~21_combout\,
	datac => \jugador_0|contador2|Add0~4_combout\,
	datad => \jugador_0|contador2|q_reg[2]~5_combout\,
	combout => \jugador_0|contador2|q_reg[2]~7_combout\);

-- Location: FF_X45_Y39_N7
\jugador_0|contador2|q_reg[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_0|contador2|q_reg[2]~7_combout\,
	clrn => \jugador_0|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_0|en_min~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_0|contador2|q_reg[2]~_emulated_q\);

-- Location: LCCOMB_X46_Y39_N0
\jugador_0|contador2|q_reg[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|contador2|q_reg[2]~6_combout\ = (\jugador_0|g_reset_n~3_combout\ & (((\jugador_0|start_min[2]~1_combout\)))) # (!\jugador_0|g_reset_n~3_combout\ & (\jugador_0|contador2|q_reg[2]~_emulated_q\ $ ((\jugador_0|contador2|q_reg[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|g_reset_n~3_combout\,
	datab => \jugador_0|contador2|q_reg[2]~_emulated_q\,
	datac => \jugador_0|contador2|q_reg[2]~5_combout\,
	datad => \jugador_0|start_min[2]~1_combout\,
	combout => \jugador_0|contador2|q_reg[2]~6_combout\);

-- Location: LCCOMB_X47_Y39_N6
\jugador_0|comporador1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|comporador1|Equal0~1_combout\ = (\jugador_0|comporador1|Equal0~0_combout\ & (!\jugador_0|contador1|q_reg[0]~2_combout\ & !\jugador_0|contador1|q_reg[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|comporador1|Equal0~0_combout\,
	datac => \jugador_0|contador1|q_reg[0]~2_combout\,
	datad => \jugador_0|contador1|q_reg[2]~4_combout\,
	combout => \jugador_0|comporador1|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y39_N18
\jugador_0|min_value~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|min_value~0_combout\ = (!\jugador_0|contador2|q_reg[2]~6_combout\ & (\jugador_0|comporador1|Equal0~1_combout\ & (\jugador_0|comporador2|Equal0~0_combout\ & !\jugador_0|contador2|q_reg[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[2]~6_combout\,
	datab => \jugador_0|comporador1|Equal0~1_combout\,
	datac => \jugador_0|comporador2|Equal0~0_combout\,
	datad => \jugador_0|contador2|q_reg[0]~2_combout\,
	combout => \jugador_0|min_value~0_combout\);

-- Location: LCCOMB_X45_Y52_N16
\fsm1|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|Selector4~0_combout\ = (\ini_pausa~input_o\ & \jugador_act~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ini_pausa~input_o\,
	datad => \jugador_act~input_o\,
	combout => \fsm1|Selector4~0_combout\);

-- Location: LCCOMB_X45_Y42_N4
\fsm1|state_next.ST_PLAYER_0_M~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|state_next.ST_PLAYER_0_M~0_combout\ = (\fsm1|Selector4~0_combout\ & (\fsm1|state_reg.ST_PLAYER_0~q\ & ((!\jugador_0|contador3|Equal0~1_combout\) # (!\jugador_0|min_value~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|min_value~0_combout\,
	datab => \fsm1|Selector4~0_combout\,
	datac => \fsm1|state_reg.ST_PLAYER_0~q\,
	datad => \jugador_0|contador3|Equal0~1_combout\,
	combout => \fsm1|state_next.ST_PLAYER_0_M~0_combout\);

-- Location: FF_X45_Y42_N5
\fsm1|state_reg.ST_PLAYER_0_M\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \fsm1|state_next.ST_PLAYER_0_M~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \div|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|state_reg.ST_PLAYER_0_M~q\);

-- Location: LCCOMB_X44_Y47_N20
\jugador_1|en_seg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|en_seg~0_combout\ = (\jugador_1|divisor1|clk_o_reg~q\ & ((\fsm1|state_reg.ST_PLAYER_1~q\) # (\fsm1|state_reg.ST_PLAYER_0_M~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|divisor1|clk_o_reg~q\,
	datac => \fsm1|state_reg.ST_PLAYER_1~q\,
	datad => \fsm1|state_reg.ST_PLAYER_0_M~q\,
	combout => \jugador_1|en_seg~0_combout\);

-- Location: FF_X45_Y43_N5
\jugador_1|contador1|q_reg[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador1|q_reg[0]~3_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador1|q_reg[0]~_emulated_q\);

-- Location: LCCOMB_X45_Y43_N0
\jugador_1|contador1|q_reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador1|q_reg[0]~2_combout\ = (\jugador_1|g_reset_n~3_combout\ & (\jugador_1|Equal1~0_combout\)) # (!\jugador_1|g_reset_n~3_combout\ & ((\jugador_1|contador1|q_reg[0]~_emulated_q\ $ (\jugador_1|contador1|q_reg[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|g_reset_n~3_combout\,
	datab => \jugador_1|Equal1~0_combout\,
	datac => \jugador_1|contador1|q_reg[0]~_emulated_q\,
	datad => \jugador_1|contador1|q_reg[0]~1_combout\,
	combout => \jugador_1|contador1|q_reg[0]~2_combout\);

-- Location: LCCOMB_X46_Y43_N22
\jugador_1|contador1|q_reg[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador1|q_reg[2]~9_combout\ = (\jugador_1|contador1|q_reg[2]~4_combout\) # ((\jugador_1|contador1|q_reg[0]~2_combout\) # (!\jugador_1|comporador1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[2]~4_combout\,
	datab => \jugador_1|comporador1|Equal0~0_combout\,
	datad => \jugador_1|contador1|q_reg[0]~2_combout\,
	combout => \jugador_1|contador1|q_reg[2]~9_combout\);

-- Location: LCCOMB_X45_Y43_N10
\jugador_1|contador1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador1|Add0~2_combout\ = (\jugador_1|contador1|q_reg\(1) & (\jugador_1|contador1|Add0~1\ & VCC)) # (!\jugador_1|contador1|q_reg\(1) & (!\jugador_1|contador1|Add0~1\))
-- \jugador_1|contador1|Add0~3\ = CARRY((!\jugador_1|contador1|q_reg\(1) & !\jugador_1|contador1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador1|q_reg\(1),
	datad => VCC,
	cin => \jugador_1|contador1|Add0~1\,
	combout => \jugador_1|contador1|Add0~2_combout\,
	cout => \jugador_1|contador1|Add0~3\);

-- Location: FF_X45_Y43_N11
\jugador_1|contador1|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador1|Add0~2_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador1|q_reg\(1));

-- Location: LCCOMB_X45_Y43_N12
\jugador_1|contador1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador1|Add0~4_combout\ = (\jugador_1|contador1|q_reg[2]~4_combout\ & ((GND) # (!\jugador_1|contador1|Add0~3\))) # (!\jugador_1|contador1|q_reg[2]~4_combout\ & (\jugador_1|contador1|Add0~3\ $ (GND)))
-- \jugador_1|contador1|Add0~5\ = CARRY((\jugador_1|contador1|q_reg[2]~4_combout\) # (!\jugador_1|contador1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador1|q_reg[2]~4_combout\,
	datad => VCC,
	cin => \jugador_1|contador1|Add0~3\,
	combout => \jugador_1|contador1|Add0~4_combout\,
	cout => \jugador_1|contador1|Add0~5\);

-- Location: LCCOMB_X45_Y43_N30
\jugador_1|contador1|q_reg[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador1|q_reg[2]~5_combout\ = \jugador_1|contador1|q_reg[0]~1_combout\ $ (((\jugador_1|contador1|q_reg[2]~9_combout\ & \jugador_1|contador1|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador1|q_reg[2]~9_combout\,
	datac => \jugador_1|contador1|q_reg[0]~1_combout\,
	datad => \jugador_1|contador1|Add0~4_combout\,
	combout => \jugador_1|contador1|q_reg[2]~5_combout\);

-- Location: FF_X45_Y43_N31
\jugador_1|contador1|q_reg[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador1|q_reg[2]~5_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador1|q_reg[2]~_emulated_q\);

-- Location: LCCOMB_X45_Y43_N24
\jugador_1|contador1|q_reg[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador1|q_reg[2]~4_combout\ = (\jugador_1|g_reset_n~3_combout\ & (\jugador_1|Equal1~0_combout\)) # (!\jugador_1|g_reset_n~3_combout\ & ((\jugador_1|contador1|q_reg[2]~_emulated_q\ $ (\jugador_1|contador1|q_reg[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|g_reset_n~3_combout\,
	datab => \jugador_1|Equal1~0_combout\,
	datac => \jugador_1|contador1|q_reg[2]~_emulated_q\,
	datad => \jugador_1|contador1|q_reg[0]~1_combout\,
	combout => \jugador_1|contador1|q_reg[2]~4_combout\);

-- Location: LCCOMB_X45_Y43_N14
\jugador_1|contador1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador1|Add0~6_combout\ = (\jugador_1|contador1|q_reg\(3) & (\jugador_1|contador1|Add0~5\ & VCC)) # (!\jugador_1|contador1|q_reg\(3) & (!\jugador_1|contador1|Add0~5\))
-- \jugador_1|contador1|Add0~7\ = CARRY((!\jugador_1|contador1|q_reg\(3) & !\jugador_1|contador1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador1|q_reg\(3),
	datad => VCC,
	cin => \jugador_1|contador1|Add0~5\,
	combout => \jugador_1|contador1|Add0~6_combout\,
	cout => \jugador_1|contador1|Add0~7\);

-- Location: FF_X45_Y43_N15
\jugador_1|contador1|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador1|Add0~6_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador1|q_reg\(3));

-- Location: LCCOMB_X45_Y43_N16
\jugador_1|contador1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador1|Add0~8_combout\ = (\jugador_1|contador1|q_reg\(4) & ((GND) # (!\jugador_1|contador1|Add0~7\))) # (!\jugador_1|contador1|q_reg\(4) & (\jugador_1|contador1|Add0~7\ $ (GND)))
-- \jugador_1|contador1|Add0~9\ = CARRY((\jugador_1|contador1|q_reg\(4)) # (!\jugador_1|contador1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador1|q_reg\(4),
	datad => VCC,
	cin => \jugador_1|contador1|Add0~7\,
	combout => \jugador_1|contador1|Add0~8_combout\,
	cout => \jugador_1|contador1|Add0~9\);

-- Location: FF_X45_Y43_N17
\jugador_1|contador1|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador1|Add0~8_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador1|q_reg\(4));

-- Location: LCCOMB_X45_Y43_N18
\jugador_1|contador1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador1|Add0~10_combout\ = \jugador_1|contador1|q_reg\(5) $ (!\jugador_1|contador1|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador1|q_reg\(5),
	cin => \jugador_1|contador1|Add0~9\,
	combout => \jugador_1|contador1|Add0~10_combout\);

-- Location: FF_X45_Y43_N19
\jugador_1|contador1|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador1|Add0~10_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador1|q_reg\(5));

-- Location: LCCOMB_X44_Y50_N24
\jugador_1|comporador1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|comporador1|Equal0~0_combout\ = (!\jugador_1|contador1|q_reg\(5) & (!\jugador_1|contador1|q_reg\(1) & (!\jugador_1|contador1|q_reg\(3) & !\jugador_1|contador1|q_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg\(5),
	datab => \jugador_1|contador1|q_reg\(1),
	datac => \jugador_1|contador1|q_reg\(3),
	datad => \jugador_1|contador1|q_reg\(4),
	combout => \jugador_1|comporador1|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y43_N20
\jugador_1|en_min\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|en_min~combout\ = (\jugador_1|comporador1|Equal0~0_combout\ & (!\jugador_1|contador1|q_reg[2]~4_combout\ & (\jugador_1|en_seg~0_combout\ & !\jugador_1|contador1|q_reg[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|comporador1|Equal0~0_combout\,
	datab => \jugador_1|contador1|q_reg[2]~4_combout\,
	datac => \jugador_1|en_seg~0_combout\,
	datad => \jugador_1|contador1|q_reg[0]~2_combout\,
	combout => \jugador_1|en_min~combout\);

-- Location: FF_X45_Y43_N29
\jugador_1|contador2|q_reg[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador2|q_reg[0]~3_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_min~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador2|q_reg[0]~_emulated_q\);

-- Location: LCCOMB_X45_Y43_N26
\jugador_1|contador2|q_reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|q_reg[0]~2_combout\ = (\jugador_1|g_reset_n~3_combout\ & (((\jugador_0|start_min[0]~0_combout\)))) # (!\jugador_1|g_reset_n~3_combout\ & (\jugador_1|contador2|q_reg[0]~_emulated_q\ $ (((\jugador_1|contador2|q_reg[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|g_reset_n~3_combout\,
	datab => \jugador_1|contador2|q_reg[0]~_emulated_q\,
	datac => \jugador_0|start_min[0]~0_combout\,
	datad => \jugador_1|contador2|q_reg[0]~1_combout\,
	combout => \jugador_1|contador2|q_reg[0]~2_combout\);

-- Location: LCCOMB_X44_Y43_N14
\jugador_1|contador2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|Add0~2_combout\ = (\jugador_1|contador2|q_reg\(1) & (\jugador_1|contador2|Add0~1\ & VCC)) # (!\jugador_1|contador2|q_reg\(1) & (!\jugador_1|contador2|Add0~1\))
-- \jugador_1|contador2|Add0~3\ = CARRY((!\jugador_1|contador2|q_reg\(1) & !\jugador_1|contador2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador2|q_reg\(1),
	datad => VCC,
	cin => \jugador_1|contador2|Add0~1\,
	combout => \jugador_1|contador2|Add0~2_combout\,
	cout => \jugador_1|contador2|Add0~3\);

-- Location: FF_X44_Y43_N15
\jugador_1|contador2|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador2|Add0~2_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_min~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador2|q_reg\(1));

-- Location: LCCOMB_X44_Y43_N16
\jugador_1|contador2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|Add0~4_combout\ = (\jugador_1|contador2|q_reg[2]~6_combout\ & ((GND) # (!\jugador_1|contador2|Add0~3\))) # (!\jugador_1|contador2|q_reg[2]~6_combout\ & (\jugador_1|contador2|Add0~3\ $ (GND)))
-- \jugador_1|contador2|Add0~5\ = CARRY((\jugador_1|contador2|q_reg[2]~6_combout\) # (!\jugador_1|contador2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[2]~6_combout\,
	datad => VCC,
	cin => \jugador_1|contador2|Add0~3\,
	combout => \jugador_1|contador2|Add0~4_combout\,
	cout => \jugador_1|contador2|Add0~5\);

-- Location: LCCOMB_X44_Y43_N18
\jugador_1|contador2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|Add0~6_combout\ = (\jugador_1|contador2|q_reg[3]~10_combout\ & (\jugador_1|contador2|Add0~5\ & VCC)) # (!\jugador_1|contador2|q_reg[3]~10_combout\ & (!\jugador_1|contador2|Add0~5\))
-- \jugador_1|contador2|Add0~7\ = CARRY((!\jugador_1|contador2|q_reg[3]~10_combout\ & !\jugador_1|contador2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador2|q_reg[3]~10_combout\,
	datad => VCC,
	cin => \jugador_1|contador2|Add0~5\,
	combout => \jugador_1|contador2|Add0~6_combout\,
	cout => \jugador_1|contador2|Add0~7\);

-- Location: LCCOMB_X44_Y43_N6
\jugador_1|contador2|q_reg[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|q_reg[3]~9_combout\ = (GLOBAL(\jugador_1|g_reset_n~3clkctrl_outclk\) & ((\jugador_1|Equal1~1_combout\))) # (!GLOBAL(\jugador_1|g_reset_n~3clkctrl_outclk\) & (\jugador_1|contador2|q_reg[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[3]~9_combout\,
	datab => \jugador_1|Equal1~1_combout\,
	datad => \jugador_1|g_reset_n~3clkctrl_outclk\,
	combout => \jugador_1|contador2|q_reg[3]~9_combout\);

-- Location: LCCOMB_X44_Y43_N8
\jugador_1|contador2|q_reg[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|q_reg[3]~11_combout\ = \jugador_1|contador2|Add0~6_combout\ $ (\jugador_1|contador2|q_reg[3]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|Add0~6_combout\,
	datac => \jugador_1|contador2|q_reg[3]~9_combout\,
	combout => \jugador_1|contador2|q_reg[3]~11_combout\);

-- Location: FF_X44_Y43_N9
\jugador_1|contador2|q_reg[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador2|q_reg[3]~11_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_min~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador2|q_reg[3]~_emulated_q\);

-- Location: LCCOMB_X44_Y43_N2
\jugador_1|contador2|q_reg[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|q_reg[3]~10_combout\ = (\jugador_1|g_reset_n~3_combout\ & (((\jugador_1|Equal1~1_combout\)))) # (!\jugador_1|g_reset_n~3_combout\ & (\jugador_1|contador2|q_reg[3]~_emulated_q\ $ (((\jugador_1|contador2|q_reg[3]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|g_reset_n~3_combout\,
	datab => \jugador_1|contador2|q_reg[3]~_emulated_q\,
	datac => \jugador_1|Equal1~1_combout\,
	datad => \jugador_1|contador2|q_reg[3]~9_combout\,
	combout => \jugador_1|contador2|q_reg[3]~10_combout\);

-- Location: LCCOMB_X47_Y43_N14
\jugador_1|max_value~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|max_value~2_combout\ = (\jugador_1|contador2|q_reg[3]~10_combout\ & (!\jugador_1|contador2|q_reg[2]~6_combout\ & (!\jugador_1|contador1|q_reg[2]~4_combout\ & \jugador_1|contador2|q_reg[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[3]~10_combout\,
	datab => \jugador_1|contador2|q_reg[2]~6_combout\,
	datac => \jugador_1|contador1|q_reg[2]~4_combout\,
	datad => \jugador_1|contador2|q_reg[0]~2_combout\,
	combout => \jugador_1|max_value~2_combout\);

-- Location: LCCOMB_X44_Y42_N14
\jugador_1|contador3|q_reg[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador3|q_reg[1]~1_combout\ = (GLOBAL(\jugador_1|g_reset_n~3clkctrl_outclk\) & (\jugador_1|Equal1~2_combout\)) # (!GLOBAL(\jugador_1|g_reset_n~3clkctrl_outclk\) & ((\jugador_1|contador3|q_reg[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|Equal1~2_combout\,
	datac => \jugador_1|contador3|q_reg[1]~1_combout\,
	datad => \jugador_1|g_reset_n~3clkctrl_outclk\,
	combout => \jugador_1|contador3|q_reg[1]~1_combout\);

-- Location: LCCOMB_X44_Y42_N2
\jugador_1|contador3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador3|Add0~0_combout\ = \jugador_1|contador3|q_reg\(0) $ (VCC)
-- \jugador_1|contador3|Add0~1\ = CARRY(\jugador_1|contador3|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador3|q_reg\(0),
	datad => VCC,
	combout => \jugador_1|contador3|Add0~0_combout\,
	cout => \jugador_1|contador3|Add0~1\);

-- Location: LCCOMB_X44_Y43_N20
\jugador_1|contador2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|Add0~8_combout\ = (\jugador_1|contador2|q_reg[4]~12_combout\ & ((GND) # (!\jugador_1|contador2|Add0~7\))) # (!\jugador_1|contador2|q_reg[4]~12_combout\ & (\jugador_1|contador2|Add0~7\ $ (GND)))
-- \jugador_1|contador2|Add0~9\ = CARRY((\jugador_1|contador2|q_reg[4]~12_combout\) # (!\jugador_1|contador2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[4]~12_combout\,
	datad => VCC,
	cin => \jugador_1|contador2|Add0~7\,
	combout => \jugador_1|contador2|Add0~8_combout\,
	cout => \jugador_1|contador2|Add0~9\);

-- Location: LCCOMB_X44_Y43_N28
\jugador_1|contador2|q_reg[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|q_reg[4]~13_combout\ = \jugador_1|contador2|Add0~8_combout\ $ (\jugador_1|contador2|q_reg[3]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|Add0~8_combout\,
	datac => \jugador_1|contador2|q_reg[3]~9_combout\,
	combout => \jugador_1|contador2|q_reg[4]~13_combout\);

-- Location: FF_X44_Y43_N29
\jugador_1|contador2|q_reg[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador2|q_reg[4]~13_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_min~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador2|q_reg[4]~_emulated_q\);

-- Location: LCCOMB_X44_Y43_N10
\jugador_1|contador2|q_reg[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|q_reg[4]~12_combout\ = (\jugador_1|g_reset_n~3_combout\ & (((\jugador_1|Equal1~1_combout\)))) # (!\jugador_1|g_reset_n~3_combout\ & (\jugador_1|contador2|q_reg[3]~9_combout\ $ (((\jugador_1|contador2|q_reg[4]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[3]~9_combout\,
	datab => \jugador_1|g_reset_n~3_combout\,
	datac => \jugador_1|Equal1~1_combout\,
	datad => \jugador_1|contador2|q_reg[4]~_emulated_q\,
	combout => \jugador_1|contador2|q_reg[4]~12_combout\);

-- Location: LCCOMB_X44_Y43_N22
\jugador_1|contador2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|Add0~10_combout\ = \jugador_1|contador2|q_reg\(5) $ (!\jugador_1|contador2|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg\(5),
	cin => \jugador_1|contador2|Add0~9\,
	combout => \jugador_1|contador2|Add0~10_combout\);

-- Location: FF_X44_Y43_N23
\jugador_1|contador2|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador2|Add0~10_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_min~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador2|q_reg\(5));

-- Location: LCCOMB_X44_Y43_N24
\jugador_1|comporador2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|comporador2|Equal0~0_combout\ = (!\jugador_1|contador2|q_reg[3]~10_combout\ & (!\jugador_1|contador2|q_reg\(5) & (!\jugador_1|contador2|q_reg\(1) & !\jugador_1|contador2|q_reg[4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[3]~10_combout\,
	datab => \jugador_1|contador2|q_reg\(5),
	datac => \jugador_1|contador2|q_reg\(1),
	datad => \jugador_1|contador2|q_reg[4]~12_combout\,
	combout => \jugador_1|comporador2|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y42_N24
\jugador_1|en_hor\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|en_hor~combout\ = (!\jugador_1|contador2|q_reg[2]~6_combout\ & (\jugador_1|comporador2|Equal0~0_combout\ & (\jugador_1|en_min~combout\ & !\jugador_1|contador2|q_reg[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[2]~6_combout\,
	datab => \jugador_1|comporador2|Equal0~0_combout\,
	datac => \jugador_1|en_min~combout\,
	datad => \jugador_1|contador2|q_reg[0]~2_combout\,
	combout => \jugador_1|en_hor~combout\);

-- Location: FF_X44_Y42_N3
\jugador_1|contador3|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador3|Add0~0_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_hor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador3|q_reg\(0));

-- Location: LCCOMB_X44_Y42_N4
\jugador_1|contador3|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador3|Add0~2_combout\ = (\jugador_1|contador3|q_reg[1]~2_combout\ & (\jugador_1|contador3|Add0~1\ & VCC)) # (!\jugador_1|contador3|q_reg[1]~2_combout\ & (!\jugador_1|contador3|Add0~1\))
-- \jugador_1|contador3|Add0~3\ = CARRY((!\jugador_1|contador3|q_reg[1]~2_combout\ & !\jugador_1|contador3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador3|q_reg[1]~2_combout\,
	datad => VCC,
	cin => \jugador_1|contador3|Add0~1\,
	combout => \jugador_1|contador3|Add0~2_combout\,
	cout => \jugador_1|contador3|Add0~3\);

-- Location: LCCOMB_X44_Y42_N26
\jugador_1|contador3|q_reg[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador3|q_reg[1]~3_combout\ = \jugador_1|contador3|Add0~2_combout\ $ (\jugador_1|contador3|q_reg[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador3|Add0~2_combout\,
	datac => \jugador_1|contador3|q_reg[1]~1_combout\,
	combout => \jugador_1|contador3|q_reg[1]~3_combout\);

-- Location: FF_X44_Y42_N27
\jugador_1|contador3|q_reg[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador3|q_reg[1]~3_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_hor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador3|q_reg[1]~_emulated_q\);

-- Location: LCCOMB_X44_Y42_N0
\jugador_1|contador3|q_reg[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador3|q_reg[1]~2_combout\ = (\jugador_1|g_reset_n~3_combout\ & (((\jugador_1|Equal1~2_combout\)))) # (!\jugador_1|g_reset_n~3_combout\ & (\jugador_1|contador3|q_reg[1]~1_combout\ $ ((\jugador_1|contador3|q_reg[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|g_reset_n~3_combout\,
	datab => \jugador_1|contador3|q_reg[1]~1_combout\,
	datac => \jugador_1|contador3|q_reg[1]~_emulated_q\,
	datad => \jugador_1|Equal1~2_combout\,
	combout => \jugador_1|contador3|q_reg[1]~2_combout\);

-- Location: LCCOMB_X44_Y42_N6
\jugador_1|contador3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador3|Add0~4_combout\ = (\jugador_1|contador3|q_reg\(2) & ((GND) # (!\jugador_1|contador3|Add0~3\))) # (!\jugador_1|contador3|q_reg\(2) & (\jugador_1|contador3|Add0~3\ $ (GND)))
-- \jugador_1|contador3|Add0~5\ = CARRY((\jugador_1|contador3|q_reg\(2)) # (!\jugador_1|contador3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(2),
	datad => VCC,
	cin => \jugador_1|contador3|Add0~3\,
	combout => \jugador_1|contador3|Add0~4_combout\,
	cout => \jugador_1|contador3|Add0~5\);

-- Location: FF_X44_Y42_N7
\jugador_1|contador3|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador3|Add0~4_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_hor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador3|q_reg\(2));

-- Location: LCCOMB_X44_Y42_N10
\jugador_1|contador3|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador3|Add0~8_combout\ = (\jugador_1|contador3|q_reg\(4) & ((GND) # (!\jugador_1|contador3|Add0~7\))) # (!\jugador_1|contador3|q_reg\(4) & (\jugador_1|contador3|Add0~7\ $ (GND)))
-- \jugador_1|contador3|Add0~9\ = CARRY((\jugador_1|contador3|q_reg\(4)) # (!\jugador_1|contador3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(4),
	datad => VCC,
	cin => \jugador_1|contador3|Add0~7\,
	combout => \jugador_1|contador3|Add0~8_combout\,
	cout => \jugador_1|contador3|Add0~9\);

-- Location: LCCOMB_X44_Y42_N12
\jugador_1|contador3|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador3|Add0~10_combout\ = \jugador_1|contador3|q_reg\(5) $ (!\jugador_1|contador3|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(5),
	cin => \jugador_1|contador3|Add0~9\,
	combout => \jugador_1|contador3|Add0~10_combout\);

-- Location: LCCOMB_X44_Y42_N22
\jugador_1|contador3|q_next~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador3|q_next~1_combout\ = (\jugador_1|contador3|Add0~10_combout\ & ((\jugador_1|contador3|q_reg\(2)) # ((\jugador_1|contador3|q_reg[1]~2_combout\) # (!\jugador_1|contador3|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|Add0~10_combout\,
	datab => \jugador_1|contador3|q_reg\(2),
	datac => \jugador_1|contador3|Equal0~0_combout\,
	datad => \jugador_1|contador3|q_reg[1]~2_combout\,
	combout => \jugador_1|contador3|q_next~1_combout\);

-- Location: FF_X44_Y42_N23
\jugador_1|contador3|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador3|q_next~1_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_hor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador3|q_reg\(5));

-- Location: LCCOMB_X44_Y42_N20
\jugador_1|contador3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador3|Equal0~0_combout\ = (!\jugador_1|contador3|q_reg\(4) & (!\jugador_1|contador3|q_reg\(0) & (!\jugador_1|contador3|q_reg\(5) & !\jugador_1|contador3|q_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(4),
	datab => \jugador_1|contador3|q_reg\(0),
	datac => \jugador_1|contador3|q_reg\(5),
	datad => \jugador_1|contador3|q_reg\(3),
	combout => \jugador_1|contador3|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y42_N8
\jugador_1|contador3|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador3|Add0~6_combout\ = (\jugador_1|contador3|q_reg\(3) & (\jugador_1|contador3|Add0~5\ & VCC)) # (!\jugador_1|contador3|q_reg\(3) & (!\jugador_1|contador3|Add0~5\))
-- \jugador_1|contador3|Add0~7\ = CARRY((!\jugador_1|contador3|q_reg\(3) & !\jugador_1|contador3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador3|q_reg\(3),
	datad => VCC,
	cin => \jugador_1|contador3|Add0~5\,
	combout => \jugador_1|contador3|Add0~6_combout\,
	cout => \jugador_1|contador3|Add0~7\);

-- Location: LCCOMB_X44_Y42_N28
\jugador_1|contador3|q_next~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador3|q_next~0_combout\ = (\jugador_1|contador3|Add0~6_combout\ & (((\jugador_1|contador3|q_reg\(2)) # (\jugador_1|contador3|q_reg[1]~2_combout\)) # (!\jugador_1|contador3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|Equal0~0_combout\,
	datab => \jugador_1|contador3|q_reg\(2),
	datac => \jugador_1|contador3|Add0~6_combout\,
	datad => \jugador_1|contador3|q_reg[1]~2_combout\,
	combout => \jugador_1|contador3|q_next~0_combout\);

-- Location: FF_X44_Y42_N29
\jugador_1|contador3|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador3|q_next~0_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_hor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador3|q_reg\(3));

-- Location: FF_X44_Y42_N11
\jugador_1|contador3|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador3|Add0~8_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_hor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador3|q_reg\(4));

-- Location: LCCOMB_X44_Y42_N18
\jugador_1|max_value~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|max_value~1_combout\ = (\jugador_1|contador3|q_reg\(2) & (\jugador_1|contador1|q_reg[0]~2_combout\ & (\jugador_1|contador3|q_reg\(4) & \jugador_1|contador3|q_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(2),
	datab => \jugador_1|contador1|q_reg[0]~2_combout\,
	datac => \jugador_1|contador3|q_reg\(4),
	datad => \jugador_1|contador3|q_reg\(0),
	combout => \jugador_1|max_value~1_combout\);

-- Location: LCCOMB_X45_Y43_N2
\jugador_1|g_reset_n~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|g_reset_n~1_combout\ = (\jugador_1|max_value~2_combout\ & (\jugador_1|contador1|q_reg\(5) & (\jugador_1|max_value~1_combout\ & \jugador_1|contador1|q_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|max_value~2_combout\,
	datab => \jugador_1|contador1|q_reg\(5),
	datac => \jugador_1|max_value~1_combout\,
	datad => \jugador_1|contador1|q_reg\(4),
	combout => \jugador_1|g_reset_n~1_combout\);

-- Location: LCCOMB_X44_Y46_N8
\jugador_1|max_value~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|max_value~0_combout\ = (\jugador_1|contador1|q_reg\(1) & (\jugador_1|contador2|q_reg\(5) & (\jugador_1|contador1|q_reg\(3) & \jugador_1|contador2|q_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg\(1),
	datab => \jugador_1|contador2|q_reg\(5),
	datac => \jugador_1|contador1|q_reg\(3),
	datad => \jugador_1|contador2|q_reg\(1),
	combout => \jugador_1|max_value~0_combout\);

-- Location: LCCOMB_X44_Y42_N16
\jugador_1|g_reset_n~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|g_reset_n~0_combout\ = (\jugador_1|contador2|q_reg[4]~12_combout\ & (\jugador_1|contador3|q_reg[1]~2_combout\ & (!\jugador_1|contador3|q_reg\(5) & !\jugador_1|contador3|q_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[4]~12_combout\,
	datab => \jugador_1|contador3|q_reg[1]~2_combout\,
	datac => \jugador_1|contador3|q_reg\(5),
	datad => \jugador_1|contador3|q_reg\(3),
	combout => \jugador_1|g_reset_n~0_combout\);

-- Location: LCCOMB_X44_Y50_N14
\jugador_1|g_reset_n~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|g_reset_n~2_combout\ = (\fsm1|state_reg.ST_PLAYER_1~q\) # ((\fsm1|state_reg.ST_PLAYER_0_M~q\) # ((!\fsm1|state_reg.ST_WAIT_CONFIG~q\ & \fsm1|state_reg.ST_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state_reg.ST_PLAYER_1~q\,
	datab => \fsm1|state_reg.ST_PLAYER_0_M~q\,
	datac => \fsm1|state_reg.ST_WAIT_CONFIG~q\,
	datad => \fsm1|state_reg.ST_IDLE~q\,
	combout => \jugador_1|g_reset_n~2_combout\);

-- Location: LCCOMB_X45_Y50_N22
\jugador_1|g_reset_n~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|g_reset_n~3_combout\ = ((\jugador_1|g_reset_n~1_combout\ & (\jugador_1|max_value~0_combout\ & \jugador_1|g_reset_n~0_combout\))) # (!\jugador_1|g_reset_n~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|g_reset_n~1_combout\,
	datab => \jugador_1|max_value~0_combout\,
	datac => \jugador_1|g_reset_n~0_combout\,
	datad => \jugador_1|g_reset_n~2_combout\,
	combout => \jugador_1|g_reset_n~3_combout\);

-- Location: LCCOMB_X44_Y43_N30
\jugador_1|contador2|q_reg[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|q_reg[2]~18_combout\ = (\jugador_1|contador2|q_reg[2]~6_combout\) # ((\jugador_1|contador2|q_reg[0]~2_combout\) # (!\jugador_1|comporador2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[2]~6_combout\,
	datac => \jugador_1|contador2|q_reg[0]~2_combout\,
	datad => \jugador_1|comporador2|Equal0~0_combout\,
	combout => \jugador_1|contador2|q_reg[2]~18_combout\);

-- Location: LCCOMB_X44_Y43_N26
\jugador_1|contador2|q_reg[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|q_reg[2]~5_combout\ = (GLOBAL(\jugador_1|g_reset_n~3clkctrl_outclk\) & (\jugador_0|start_min[2]~1_combout\)) # (!GLOBAL(\jugador_1|g_reset_n~3clkctrl_outclk\) & ((\jugador_1|contador2|q_reg[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|start_min[2]~1_combout\,
	datac => \jugador_1|contador2|q_reg[2]~5_combout\,
	datad => \jugador_1|g_reset_n~3clkctrl_outclk\,
	combout => \jugador_1|contador2|q_reg[2]~5_combout\);

-- Location: LCCOMB_X44_Y43_N4
\jugador_1|contador2|q_reg[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|q_reg[2]~7_combout\ = \jugador_1|contador2|q_reg[2]~5_combout\ $ (((\jugador_1|contador2|q_reg[2]~18_combout\ & \jugador_1|contador2|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[2]~18_combout\,
	datab => \jugador_1|contador2|q_reg[2]~5_combout\,
	datad => \jugador_1|contador2|Add0~4_combout\,
	combout => \jugador_1|contador2|q_reg[2]~7_combout\);

-- Location: FF_X44_Y43_N5
\jugador_1|contador2|q_reg[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \jugador_1|contador2|q_reg[2]~7_combout\,
	clrn => \jugador_1|ALT_INV_g_reset_n~3clkctrl_outclk\,
	ena => \jugador_1|en_min~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \jugador_1|contador2|q_reg[2]~_emulated_q\);

-- Location: LCCOMB_X44_Y43_N0
\jugador_1|contador2|q_reg[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador2|q_reg[2]~6_combout\ = (\jugador_1|g_reset_n~3_combout\ & (((\jugador_0|start_min[2]~1_combout\)))) # (!\jugador_1|g_reset_n~3_combout\ & (\jugador_1|contador2|q_reg[2]~_emulated_q\ $ ((\jugador_1|contador2|q_reg[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|g_reset_n~3_combout\,
	datab => \jugador_1|contador2|q_reg[2]~_emulated_q\,
	datac => \jugador_1|contador2|q_reg[2]~5_combout\,
	datad => \jugador_0|start_min[2]~1_combout\,
	combout => \jugador_1|contador2|q_reg[2]~6_combout\);

-- Location: LCCOMB_X44_Y50_N0
\jugador_1|comporador1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|comporador1|Equal0~1_combout\ = (\jugador_1|comporador1|Equal0~0_combout\ & (!\jugador_1|contador1|q_reg[0]~2_combout\ & !\jugador_1|contador1|q_reg[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|comporador1|Equal0~0_combout\,
	datac => \jugador_1|contador1|q_reg[0]~2_combout\,
	datad => \jugador_1|contador1|q_reg[2]~4_combout\,
	combout => \jugador_1|comporador1|Equal0~1_combout\);

-- Location: LCCOMB_X44_Y50_N20
\jugador_1|min_value~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|min_value~0_combout\ = (!\jugador_1|contador2|q_reg[2]~6_combout\ & (!\jugador_1|contador2|q_reg[0]~2_combout\ & (\jugador_1|comporador1|Equal0~1_combout\ & \jugador_1|comporador2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[2]~6_combout\,
	datab => \jugador_1|contador2|q_reg[0]~2_combout\,
	datac => \jugador_1|comporador1|Equal0~1_combout\,
	datad => \jugador_1|comporador2|Equal0~0_combout\,
	combout => \jugador_1|min_value~0_combout\);

-- Location: LCCOMB_X44_Y42_N30
\jugador_1|contador3|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|contador3|Equal0~1_combout\ = (!\jugador_1|contador3|q_reg[1]~2_combout\ & (\jugador_1|contador3|Equal0~0_combout\ & !\jugador_1|contador3|q_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador3|q_reg[1]~2_combout\,
	datac => \jugador_1|contador3|Equal0~0_combout\,
	datad => \jugador_1|contador3|q_reg\(2),
	combout => \jugador_1|contador3|Equal0~1_combout\);

-- Location: LCCOMB_X44_Y50_N28
\fsm1|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|Selector3~0_combout\ = (\fsm1|state_reg.ST_PLAYER_1~q\ & (\jugador_act~input_o\ & ((!\jugador_1|contador3|Equal0~1_combout\) # (!\jugador_1|min_value~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|min_value~0_combout\,
	datab => \fsm1|state_reg.ST_PLAYER_1~q\,
	datac => \jugador_act~input_o\,
	datad => \jugador_1|contador3|Equal0~1_combout\,
	combout => \fsm1|Selector3~0_combout\);

-- Location: LCCOMB_X44_Y50_N26
\fsm1|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|Selector4~1_combout\ = (\fsm1|state_reg.ST_PLAYERS_CONFIG~q\ & (\ini_pausa~input_o\ & \jugador_act~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state_reg.ST_PLAYERS_CONFIG~q\,
	datac => \ini_pausa~input_o\,
	datad => \jugador_act~input_o\,
	combout => \fsm1|Selector4~1_combout\);

-- Location: LCCOMB_X45_Y50_N24
\fsm1|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|Selector4~2_combout\ = (\fsm1|Selector4~1_combout\) # ((!\ini_pausa~input_o\ & ((\fsm1|state_reg.ST_PLAYER_1_P~q\) # (\fsm1|state_reg.ST_PLAYER_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ini_pausa~input_o\,
	datab => \fsm1|Selector4~1_combout\,
	datac => \fsm1|state_reg.ST_PLAYER_1_P~q\,
	datad => \fsm1|state_reg.ST_PLAYER_1~q\,
	combout => \fsm1|Selector4~2_combout\);

-- Location: FF_X45_Y50_N25
\fsm1|state_reg.ST_PLAYER_1_P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fsm1|Selector4~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \div|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|state_reg.ST_PLAYER_1_P~q\);

-- Location: LCCOMB_X44_Y50_N22
\fsm1|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|Selector3~1_combout\ = (\fsm1|state_reg.ST_PLAYER_0_M~q\) # ((\ini_pausa~input_o\ & ((\fsm1|Selector3~0_combout\) # (\fsm1|state_reg.ST_PLAYER_1_P~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|Selector3~0_combout\,
	datab => \fsm1|state_reg.ST_PLAYER_1_P~q\,
	datac => \fsm1|state_reg.ST_PLAYER_0_M~q\,
	datad => \ini_pausa~input_o\,
	combout => \fsm1|Selector3~1_combout\);

-- Location: FF_X44_Y50_N23
\fsm1|state_reg.ST_PLAYER_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \fsm1|Selector3~1_combout\,
	clrn => \reset_n~input_o\,
	ena => \div|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|state_reg.ST_PLAYER_1~q\);

-- Location: LCCOMB_X45_Y50_N12
\fsm1|state_next.ST_PLAYER_1_M~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm1|state_next.ST_PLAYER_1_M~0_combout\ = (\fsm1|Selector1~0_combout\ & (\fsm1|state_reg.ST_PLAYER_1~q\ & ((!\jugador_1|contador3|Equal0~1_combout\) # (!\jugador_1|min_value~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|Selector1~0_combout\,
	datab => \fsm1|state_reg.ST_PLAYER_1~q\,
	datac => \jugador_1|min_value~0_combout\,
	datad => \jugador_1|contador3|Equal0~1_combout\,
	combout => \fsm1|state_next.ST_PLAYER_1_M~0_combout\);

-- Location: FF_X45_Y50_N13
\fsm1|state_reg.ST_PLAYER_1_M\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \fsm1|state_next.ST_PLAYER_1_M~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \div|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|state_reg.ST_PLAYER_1_M~q\);

-- Location: LCCOMB_X45_Y50_N20
aux_con_1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aux_con_1~combout\ = (\div|clk_o_reg~q\ & \fsm1|state_reg.ST_PLAYER_1_M~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|clk_o_reg~q\,
	datad => \fsm1|state_reg.ST_PLAYER_1_M~q\,
	combout => \aux_con_1~combout\);

-- Location: FF_X46_Y47_N15
\con1|q_reg_u[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con1|q_next_u~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \aux_con_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con1|q_reg_u\(1));

-- Location: LCCOMB_X47_Y47_N20
\con1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|Add0~0_combout\ = (\con1|q_reg_u\(1) & \con1|q_reg_u\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \con1|q_reg_u\(1),
	datad => \con1|q_reg_u\(0),
	combout => \con1|Add0~0_combout\);

-- Location: LCCOMB_X47_Y47_N14
\con1|q_next_u~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_u~5_combout\ = (\con1|q_next_u~3_combout\ & (\con1|q_reg_u\(3) $ (((\con1|Add0~0_combout\ & \con1|q_reg_u\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_next_u~3_combout\,
	datab => \con1|Add0~0_combout\,
	datac => \con1|q_reg_u\(2),
	datad => \con1|q_reg_u\(3),
	combout => \con1|q_next_u~5_combout\);

-- Location: FF_X46_Y47_N21
\con1|q_reg_u[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \con1|q_next_u~5_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \aux_con_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con1|q_reg_u\(3));

-- Location: LCCOMB_X46_Y47_N18
\con1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|Equal0~0_combout\ = (!\con1|q_reg_u\(2) & (\con1|q_reg_u\(0) & (!\con1|q_reg_u\(1) & \con1|q_reg_u\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_u\(2),
	datab => \con1|q_reg_u\(0),
	datac => \con1|q_reg_u\(1),
	datad => \con1|q_reg_u\(3),
	combout => \con1|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y50_N30
\con1|q_next_d[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_d[0]~0_combout\ = \con1|q_reg_d\(0) $ (((\fsm1|state_reg.ST_PLAYER_1_M~q\ & \div|clk_o_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state_reg.ST_PLAYER_1_M~q\,
	datac => \div|clk_o_reg~q\,
	datad => \con1|q_reg_d\(0),
	combout => \con1|q_next_d[0]~0_combout\);

-- Location: LCCOMB_X46_Y47_N2
\con1|q_next_c[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_c[2]~0_combout\ = (\aux_con_1~combout\ & (((!\con1|process_1~2_combout\) # (!\con1|process_1~1_combout\)) # (!\con1|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|process_1~0_combout\,
	datab => \con1|process_1~1_combout\,
	datac => \con1|process_1~2_combout\,
	datad => \aux_con_1~combout\,
	combout => \con1|q_next_c[2]~0_combout\);

-- Location: LCCOMB_X46_Y47_N22
\con1|q_next_d[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_d[0]~1_combout\ = ((\con1|Equal1~0_combout\) # (\con1|Equal0~0_combout\)) # (!\con1|q_next_c[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \con1|q_next_c[2]~0_combout\,
	datac => \con1|Equal1~0_combout\,
	datad => \con1|Equal0~0_combout\,
	combout => \con1|q_next_d[0]~1_combout\);

-- Location: CLKCTRL_G11
\con1|q_next_d[0]~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \con1|q_next_d[0]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \con1|q_next_d[0]~1clkctrl_outclk\);

-- Location: LCCOMB_X46_Y47_N26
\con1|q_next_d[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_d\(0) = (GLOBAL(\con1|q_next_d[0]~1clkctrl_outclk\) & ((\con1|q_next_d[0]~0_combout\))) # (!GLOBAL(\con1|q_next_d[0]~1clkctrl_outclk\) & (\con1|q_next_d\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_next_d\(0),
	datac => \con1|q_next_d[0]~0_combout\,
	datad => \con1|q_next_d[0]~1clkctrl_outclk\,
	combout => \con1|q_next_d\(0));

-- Location: FF_X46_Y47_N5
\con1|q_reg_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \con1|q_next_d\(0),
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con1|q_reg_d\(0));

-- Location: LCCOMB_X47_Y47_N30
\con1|q_next_d[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_d[1]~2_combout\ = (!\con1|Equal1~0_combout\ & (\con1|q_next_c[2]~0_combout\ & (\con1|q_reg_d\(0) $ (\con1|q_reg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_d\(0),
	datab => \con1|Equal1~0_combout\,
	datac => \con1|q_next_c[2]~0_combout\,
	datad => \con1|q_reg_d\(1),
	combout => \con1|q_next_d[1]~2_combout\);

-- Location: LCCOMB_X47_Y47_N2
\con1|q_next_d[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_d[1]~3_combout\ = (\con1|q_next_d[1]~2_combout\) # ((\con1|q_reg_d\(1) & ((!\div|clk_o_reg~q\) # (!\fsm1|state_reg.ST_PLAYER_1_M~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state_reg.ST_PLAYER_1_M~q\,
	datab => \con1|q_next_d[1]~2_combout\,
	datac => \con1|q_reg_d\(1),
	datad => \div|clk_o_reg~q\,
	combout => \con1|q_next_d[1]~3_combout\);

-- Location: LCCOMB_X47_Y47_N8
\con1|q_next_d[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_d\(1) = (GLOBAL(\con1|q_next_d[0]~1clkctrl_outclk\) & ((\con1|q_next_d[1]~3_combout\))) # (!GLOBAL(\con1|q_next_d[0]~1clkctrl_outclk\) & (\con1|q_next_d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \con1|q_next_d\(1),
	datac => \con1|q_next_d[1]~3_combout\,
	datad => \con1|q_next_d[0]~1clkctrl_outclk\,
	combout => \con1|q_next_d\(1));

-- Location: FF_X46_Y47_N17
\con1|q_reg_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \con1|q_next_d\(1),
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con1|q_reg_d\(1));

-- Location: LCCOMB_X47_Y47_N26
\con1|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|Add1~0_combout\ = \con1|q_reg_d\(2) $ (((\con1|q_reg_d\(0) & \con1|q_reg_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_d\(2),
	datac => \con1|q_reg_d\(0),
	datad => \con1|q_reg_d\(1),
	combout => \con1|Add1~0_combout\);

-- Location: LCCOMB_X46_Y47_N20
\con1|q_next_d[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_d[2]~4_combout\ = (\con1|q_reg_d\(2) & ((!\div|clk_o_reg~q\) # (!\fsm1|state_reg.ST_PLAYER_1_M~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state_reg.ST_PLAYER_1_M~q\,
	datab => \con1|q_reg_d\(2),
	datad => \div|clk_o_reg~q\,
	combout => \con1|q_next_d[2]~4_combout\);

-- Location: LCCOMB_X46_Y47_N30
\con1|q_next_d[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_d[2]~5_combout\ = (\con1|q_next_d[2]~4_combout\) # ((\con1|Add1~0_combout\ & (\con1|q_next_c[2]~0_combout\ & !\con1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|Add1~0_combout\,
	datab => \con1|q_next_c[2]~0_combout\,
	datac => \con1|Equal1~0_combout\,
	datad => \con1|q_next_d[2]~4_combout\,
	combout => \con1|q_next_d[2]~5_combout\);

-- Location: LCCOMB_X46_Y47_N0
\con1|q_next_d[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_d\(2) = (GLOBAL(\con1|q_next_d[0]~1clkctrl_outclk\) & ((\con1|q_next_d[2]~5_combout\))) # (!GLOBAL(\con1|q_next_d[0]~1clkctrl_outclk\) & (\con1|q_next_d\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_next_d\(2),
	datac => \con1|q_next_d[2]~5_combout\,
	datad => \con1|q_next_d[0]~1clkctrl_outclk\,
	combout => \con1|q_next_d\(2));

-- Location: FF_X46_Y47_N1
\con1|q_reg_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con1|q_next_d\(2),
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con1|q_reg_d\(2));

-- Location: LCCOMB_X46_Y47_N4
\con1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|Equal1~0_combout\ = (\con1|q_reg_d\(3) & (!\con1|q_reg_d\(1) & (\con1|q_reg_d\(0) & !\con1|q_reg_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_d\(3),
	datab => \con1|q_reg_d\(1),
	datac => \con1|q_reg_d\(0),
	datad => \con1|q_reg_d\(2),
	combout => \con1|Equal1~0_combout\);

-- Location: LCCOMB_X47_Y47_N6
\con1|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|Add1~1_combout\ = \con1|q_reg_d\(3) $ (((\con1|q_reg_d\(0) & (\con1|q_reg_d\(2) & \con1|q_reg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_d\(3),
	datab => \con1|q_reg_d\(0),
	datac => \con1|q_reg_d\(2),
	datad => \con1|q_reg_d\(1),
	combout => \con1|Add1~1_combout\);

-- Location: LCCOMB_X46_Y47_N6
\con1|q_next_d[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_d[3]~6_combout\ = (\con1|q_reg_d\(3) & ((!\div|clk_o_reg~q\) # (!\fsm1|state_reg.ST_PLAYER_1_M~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state_reg.ST_PLAYER_1_M~q\,
	datab => \con1|q_reg_d\(3),
	datad => \div|clk_o_reg~q\,
	combout => \con1|q_next_d[3]~6_combout\);

-- Location: LCCOMB_X46_Y47_N24
\con1|q_next_d[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_d[3]~7_combout\ = (\con1|q_next_d[3]~6_combout\) # ((!\con1|Equal1~0_combout\ & (\con1|q_next_c[2]~0_combout\ & \con1|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|Equal1~0_combout\,
	datab => \con1|q_next_c[2]~0_combout\,
	datac => \con1|Add1~1_combout\,
	datad => \con1|q_next_d[3]~6_combout\,
	combout => \con1|q_next_d[3]~7_combout\);

-- Location: LCCOMB_X46_Y47_N8
\con1|q_next_d[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_d\(3) = (GLOBAL(\con1|q_next_d[0]~1clkctrl_outclk\) & ((\con1|q_next_d[3]~7_combout\))) # (!GLOBAL(\con1|q_next_d[0]~1clkctrl_outclk\) & (\con1|q_next_d\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_next_d\(3),
	datac => \con1|q_next_d[3]~7_combout\,
	datad => \con1|q_next_d[0]~1clkctrl_outclk\,
	combout => \con1|q_next_d\(3));

-- Location: FF_X46_Y47_N9
\con1|q_reg_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con1|q_next_d\(3),
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con1|q_reg_d\(3));

-- Location: LCCOMB_X46_Y47_N28
\con1|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|process_1~1_combout\ = (!\con1|q_reg_u\(0) & (!\con1|q_reg_d\(3) & (\con1|q_reg_u\(1) & \con1|q_reg_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_u\(0),
	datab => \con1|q_reg_d\(3),
	datac => \con1|q_reg_u\(1),
	datad => \con1|q_reg_d\(2),
	combout => \con1|process_1~1_combout\);

-- Location: LCCOMB_X46_Y48_N30
\con1|q_next_u~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_u~3_combout\ = (!\con1|Equal0~0_combout\ & (((!\con1|process_1~1_combout\) # (!\con1|process_1~2_combout\)) # (!\con1|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|Equal0~0_combout\,
	datab => \con1|process_1~0_combout\,
	datac => \con1|process_1~2_combout\,
	datad => \con1|process_1~1_combout\,
	combout => \con1|q_next_u~3_combout\);

-- Location: LCCOMB_X47_Y47_N12
\con1|q_next_u~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_u~6_combout\ = (\con1|q_next_u~3_combout\ & (\con1|q_reg_u\(2) $ (((\con1|q_reg_u\(1) & \con1|q_reg_u\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_next_u~3_combout\,
	datab => \con1|q_reg_u\(1),
	datac => \con1|q_reg_u\(2),
	datad => \con1|q_reg_u\(0),
	combout => \con1|q_next_u~6_combout\);

-- Location: FF_X46_Y47_N7
\con1|q_reg_u[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \con1|q_next_u~6_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \aux_con_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con1|q_reg_u\(2));

-- Location: LCCOMB_X46_Y47_N10
\con1|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|process_1~0_combout\ = (!\con1|q_reg_u\(2) & (!\con1|q_reg_d\(1) & (\con1|q_reg_d\(0) & !\con1|q_reg_u\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_u\(2),
	datab => \con1|q_reg_d\(1),
	datac => \con1|q_reg_d\(0),
	datad => \con1|q_reg_u\(3),
	combout => \con1|process_1~0_combout\);

-- Location: LCCOMB_X46_Y47_N16
\con1|q_next_c[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_c[0]~1_combout\ = (!\con1|process_1~1_combout\) # (!\con1|process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|process_1~0_combout\,
	datad => \con1|process_1~1_combout\,
	combout => \con1|q_next_c[0]~1_combout\);

-- Location: LCCOMB_X45_Y47_N0
\con1|q_next_c[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_c[0]~2_combout\ = (\con1|q_reg_c\(0) & (((!\aux_con_1~combout\)))) # (!\con1|q_reg_c\(0) & (\aux_con_1~combout\ & ((\con1|q_next_c[0]~1_combout\) # (!\con1|process_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_c\(0),
	datab => \con1|q_next_c[0]~1_combout\,
	datac => \con1|process_1~2_combout\,
	datad => \aux_con_1~combout\,
	combout => \con1|q_next_c[0]~2_combout\);

-- Location: LCCOMB_X47_Y47_N10
\con1|q_next_d[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_d[3]~8_combout\ = (\con1|q_next_c[2]~0_combout\ & !\con1|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_next_c[2]~0_combout\,
	datac => \con1|Equal1~0_combout\,
	combout => \con1|q_next_d[3]~8_combout\);

-- Location: CLKCTRL_G5
\con1|q_next_d[3]~8clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \con1|q_next_d[3]~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \con1|q_next_d[3]~8clkctrl_outclk\);

-- Location: LCCOMB_X45_Y47_N28
\con1|q_next_c[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_c\(0) = (GLOBAL(\con1|q_next_d[3]~8clkctrl_outclk\) & (\con1|q_next_c\(0))) # (!GLOBAL(\con1|q_next_d[3]~8clkctrl_outclk\) & ((\con1|q_next_c[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \con1|q_next_c\(0),
	datac => \con1|q_next_c[0]~2_combout\,
	datad => \con1|q_next_d[3]~8clkctrl_outclk\,
	combout => \con1|q_next_c\(0));

-- Location: FF_X45_Y47_N29
\con1|q_reg_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con1|q_next_c\(0),
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con1|q_reg_c\(0));

-- Location: LCCOMB_X45_Y47_N30
\con1|q_next_c[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_c[1]~3_combout\ = (\con1|q_reg_c\(1) & (((\con1|q_next_c[2]~0_combout\ & !\con1|q_reg_c\(0))) # (!\aux_con_1~combout\))) # (!\con1|q_reg_c\(1) & (\con1|q_next_c[2]~0_combout\ & (\con1|q_reg_c\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_c\(1),
	datab => \con1|q_next_c[2]~0_combout\,
	datac => \con1|q_reg_c\(0),
	datad => \aux_con_1~combout\,
	combout => \con1|q_next_c[1]~3_combout\);

-- Location: LCCOMB_X45_Y47_N2
\con1|q_next_c[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_c\(1) = (GLOBAL(\con1|q_next_d[3]~8clkctrl_outclk\) & (\con1|q_next_c\(1))) # (!GLOBAL(\con1|q_next_d[3]~8clkctrl_outclk\) & ((\con1|q_next_c[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \con1|q_next_c\(1),
	datac => \con1|q_next_d[3]~8clkctrl_outclk\,
	datad => \con1|q_next_c[1]~3_combout\,
	combout => \con1|q_next_c\(1));

-- Location: FF_X45_Y47_N3
\con1|q_reg_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con1|q_next_c\(1),
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con1|q_reg_c\(1));

-- Location: LCCOMB_X45_Y47_N12
\con1|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|Add2~0_combout\ = (\con1|q_reg_c\(0) & \con1|q_reg_c\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_c\(0),
	datac => \con1|q_reg_c\(1),
	combout => \con1|Add2~0_combout\);

-- Location: LCCOMB_X45_Y47_N4
\con1|q_next_c[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_c[2]~4_combout\ = (\con1|q_reg_c\(2) & (((!\con1|Add2~0_combout\ & \con1|q_next_c[2]~0_combout\)) # (!\aux_con_1~combout\))) # (!\con1|q_reg_c\(2) & (\con1|Add2~0_combout\ & (\con1|q_next_c[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|Add2~0_combout\,
	datab => \con1|q_next_c[2]~0_combout\,
	datac => \aux_con_1~combout\,
	datad => \con1|q_reg_c\(2),
	combout => \con1|q_next_c[2]~4_combout\);

-- Location: LCCOMB_X45_Y47_N26
\con1|q_next_c[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_c\(2) = (GLOBAL(\con1|q_next_d[3]~8clkctrl_outclk\) & (\con1|q_next_c\(2))) # (!GLOBAL(\con1|q_next_d[3]~8clkctrl_outclk\) & ((\con1|q_next_c[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \con1|q_next_c\(2),
	datac => \con1|q_next_d[3]~8clkctrl_outclk\,
	datad => \con1|q_next_c[2]~4_combout\,
	combout => \con1|q_next_c\(2));

-- Location: FF_X45_Y47_N27
\con1|q_reg_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con1|q_next_c\(2),
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con1|q_reg_c\(2));

-- Location: LCCOMB_X45_Y47_N18
\con1|q_next_c[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_c[3]~5_combout\ = \con1|q_reg_c\(3) $ (((\con1|Add2~0_combout\ & (\con1|q_reg_c\(2) & \aux_con_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|Add2~0_combout\,
	datab => \con1|q_reg_c\(2),
	datac => \con1|q_reg_c\(3),
	datad => \aux_con_1~combout\,
	combout => \con1|q_next_c[3]~5_combout\);

-- Location: LCCOMB_X45_Y47_N10
\con1|q_next_c[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_c\(3) = (GLOBAL(\con1|q_next_d[3]~8clkctrl_outclk\) & ((\con1|q_next_c\(3)))) # (!GLOBAL(\con1|q_next_d[3]~8clkctrl_outclk\) & (\con1|q_next_c[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_next_c[3]~5_combout\,
	datac => \con1|q_next_c\(3),
	datad => \con1|q_next_d[3]~8clkctrl_outclk\,
	combout => \con1|q_next_c\(3));

-- Location: FF_X45_Y47_N11
\con1|q_reg_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con1|q_next_c\(3),
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con1|q_reg_c\(3));

-- Location: LCCOMB_X45_Y47_N16
\con1|process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|process_1~2_combout\ = (!\con1|q_reg_c\(3) & (!\con1|q_reg_c\(0) & (\con1|q_reg_c\(2) & \con1|q_reg_c\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_c\(3),
	datab => \con1|q_reg_c\(0),
	datac => \con1|q_reg_c\(2),
	datad => \con1|q_reg_c\(1),
	combout => \con1|process_1~2_combout\);

-- Location: LCCOMB_X46_Y47_N12
\con1|q_next_u~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|q_next_u~2_combout\ = (!\con1|q_reg_u\(0) & (((!\con1|process_1~1_combout\) # (!\con1|process_1~0_combout\)) # (!\con1|process_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|process_1~2_combout\,
	datab => \con1|process_1~0_combout\,
	datac => \con1|q_reg_u\(0),
	datad => \con1|process_1~1_combout\,
	combout => \con1|q_next_u~2_combout\);

-- Location: FF_X46_Y47_N13
\con1|q_reg_u[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con1|q_next_u~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \aux_con_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con1|q_reg_u\(0));

-- Location: LCCOMB_X47_Y47_N16
\con1|hexa_u|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_u|Mux6~0_combout\ = (\con1|q_reg_u\(2) & (!\con1|q_reg_u\(1) & (\con1|q_reg_u\(0) $ (!\con1|q_reg_u\(3))))) # (!\con1|q_reg_u\(2) & (\con1|q_reg_u\(0) & (\con1|q_reg_u\(1) $ (!\con1|q_reg_u\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_u\(0),
	datab => \con1|q_reg_u\(1),
	datac => \con1|q_reg_u\(2),
	datad => \con1|q_reg_u\(3),
	combout => \con1|hexa_u|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y39_N28
\jugador_0|bin1|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin1|Mux4~1_combout\ = (\jugador_0|contador1|q_reg\(5) & ((\jugador_0|contador1|q_reg\(3) & ((\jugador_0|contador1|q_reg[2]~4_combout\) # (\jugador_0|contador1|q_reg\(1)))) # (!\jugador_0|contador1|q_reg\(3) & ((!\jugador_0|contador1|q_reg\(1)) 
-- # (!\jugador_0|contador1|q_reg[2]~4_combout\))))) # (!\jugador_0|contador1|q_reg\(5) & ((\jugador_0|contador1|q_reg[2]~4_combout\) # ((!\jugador_0|contador1|q_reg\(3) & \jugador_0|contador1|q_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg\(5),
	datab => \jugador_0|contador1|q_reg\(3),
	datac => \jugador_0|contador1|q_reg[2]~4_combout\,
	datad => \jugador_0|contador1|q_reg\(1),
	combout => \jugador_0|bin1|Mux4~1_combout\);

-- Location: LCCOMB_X49_Y39_N18
\jugador_0|bin1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin1|Mux4~0_combout\ = (\jugador_0|contador1|q_reg\(5) & (\jugador_0|contador1|q_reg[2]~4_combout\ $ (((!\jugador_0|contador1|q_reg\(3) & \jugador_0|contador1|q_reg\(1)))))) # (!\jugador_0|contador1|q_reg\(5) & 
-- (\jugador_0|contador1|q_reg[2]~4_combout\ & ((\jugador_0|contador1|q_reg\(1)) # (!\jugador_0|contador1|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg\(5),
	datab => \jugador_0|contador1|q_reg\(3),
	datac => \jugador_0|contador1|q_reg[2]~4_combout\,
	datad => \jugador_0|contador1|q_reg\(1),
	combout => \jugador_0|bin1|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y39_N14
\jugador_0|bin1|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin1|Mux4~2_combout\ = (\jugador_0|contador1|q_reg\(4) & (!\jugador_0|bin1|Mux4~1_combout\)) # (!\jugador_0|contador1|q_reg\(4) & ((\jugador_0|bin1|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|bin1|Mux4~1_combout\,
	datac => \jugador_0|contador1|q_reg\(4),
	datad => \jugador_0|bin1|Mux4~0_combout\,
	combout => \jugador_0|bin1|Mux4~2_combout\);

-- Location: LCCOMB_X49_Y39_N12
\jugador_0|bin1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin1|Mux3~0_combout\ = (\jugador_0|contador1|q_reg\(5) & (!\jugador_0|contador1|q_reg[2]~4_combout\ & (\jugador_0|contador1|q_reg\(3) $ (!\jugador_0|contador1|q_reg\(1))))) # (!\jugador_0|contador1|q_reg\(5) & ((\jugador_0|contador1|q_reg\(3) & 
-- (\jugador_0|contador1|q_reg[2]~4_combout\ & !\jugador_0|contador1|q_reg\(1))) # (!\jugador_0|contador1|q_reg\(3) & (!\jugador_0|contador1|q_reg[2]~4_combout\ & \jugador_0|contador1|q_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg\(5),
	datab => \jugador_0|contador1|q_reg\(3),
	datac => \jugador_0|contador1|q_reg[2]~4_combout\,
	datad => \jugador_0|contador1|q_reg\(1),
	combout => \jugador_0|bin1|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y39_N2
\jugador_0|bin1|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin1|Mux3~1_combout\ = (\jugador_0|contador1|q_reg\(5) & (!\jugador_0|contador1|q_reg\(3) & (\jugador_0|contador1|q_reg[2]~4_combout\ & \jugador_0|contador1|q_reg\(1)))) # (!\jugador_0|contador1|q_reg\(5) & (\jugador_0|contador1|q_reg\(3) & 
-- (!\jugador_0|contador1|q_reg[2]~4_combout\ & !\jugador_0|contador1|q_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg\(5),
	datab => \jugador_0|contador1|q_reg\(3),
	datac => \jugador_0|contador1|q_reg[2]~4_combout\,
	datad => \jugador_0|contador1|q_reg\(1),
	combout => \jugador_0|bin1|Mux3~1_combout\);

-- Location: LCCOMB_X49_Y39_N0
\jugador_0|bin1|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin1|Mux3~2_combout\ = (\jugador_0|contador1|q_reg\(4) & (\jugador_0|bin1|Mux3~0_combout\)) # (!\jugador_0|contador1|q_reg\(4) & ((\jugador_0|bin1|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin1|Mux3~0_combout\,
	datac => \jugador_0|contador1|q_reg\(4),
	datad => \jugador_0|bin1|Mux3~1_combout\,
	combout => \jugador_0|bin1|Mux3~2_combout\);

-- Location: LCCOMB_X49_Y39_N6
\jugador_0|bin1|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin1|Mux5~1_combout\ = (\jugador_0|contador1|q_reg\(3) & (\jugador_0|contador1|q_reg\(1) $ (((\jugador_0|contador1|q_reg[2]~4_combout\) # (!\jugador_0|contador1|q_reg\(4)))))) # (!\jugador_0|contador1|q_reg\(3) & 
-- ((\jugador_0|contador1|q_reg\(1)) # ((\jugador_0|contador1|q_reg\(4) & !\jugador_0|contador1|q_reg[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg\(4),
	datab => \jugador_0|contador1|q_reg\(3),
	datac => \jugador_0|contador1|q_reg[2]~4_combout\,
	datad => \jugador_0|contador1|q_reg\(1),
	combout => \jugador_0|bin1|Mux5~1_combout\);

-- Location: LCCOMB_X49_Y39_N8
\jugador_0|bin1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin1|Mux5~0_combout\ = (\jugador_0|contador1|q_reg\(3) & ((\jugador_0|contador1|q_reg\(4) & (!\jugador_0|contador1|q_reg[2]~4_combout\ & \jugador_0|contador1|q_reg\(1))) # (!\jugador_0|contador1|q_reg\(4) & 
-- (\jugador_0|contador1|q_reg[2]~4_combout\ & !\jugador_0|contador1|q_reg\(1))))) # (!\jugador_0|contador1|q_reg\(3) & (\jugador_0|contador1|q_reg\(1) $ (((\jugador_0|contador1|q_reg\(4) & !\jugador_0|contador1|q_reg[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg\(4),
	datab => \jugador_0|contador1|q_reg\(3),
	datac => \jugador_0|contador1|q_reg[2]~4_combout\,
	datad => \jugador_0|contador1|q_reg\(1),
	combout => \jugador_0|bin1|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y39_N24
\jugador_0|bin1|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin1|Mux5~2_combout\ = (\jugador_0|contador1|q_reg\(5) & (!\jugador_0|bin1|Mux5~1_combout\)) # (!\jugador_0|contador1|q_reg\(5) & ((\jugador_0|bin1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin1|Mux5~1_combout\,
	datab => \jugador_0|bin1|Mux5~0_combout\,
	datac => \jugador_0|contador1|q_reg\(5),
	combout => \jugador_0|bin1|Mux5~2_combout\);

-- Location: LCCOMB_X47_Y42_N20
\jugador_0|hexa1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa1|Mux6~0_combout\ = (\jugador_0|bin1|Mux4~2_combout\ & (!\jugador_0|bin1|Mux5~2_combout\ & (\jugador_0|contador1|q_reg[0]~2_combout\ $ (!\jugador_0|bin1|Mux3~2_combout\)))) # (!\jugador_0|bin1|Mux4~2_combout\ & 
-- (\jugador_0|contador1|q_reg[0]~2_combout\ & (\jugador_0|bin1|Mux3~2_combout\ $ (!\jugador_0|bin1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg[0]~2_combout\,
	datab => \jugador_0|bin1|Mux4~2_combout\,
	datac => \jugador_0|bin1|Mux3~2_combout\,
	datad => \jugador_0|bin1|Mux5~2_combout\,
	combout => \jugador_0|hexa1|Mux6~0_combout\);

-- Location: LCCOMB_X44_Y50_N30
\jugador_1|bin1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin1|Mux4~0_combout\ = (\jugador_1|contador1|q_reg\(5) & (\jugador_1|contador1|q_reg[2]~4_combout\ $ (((\jugador_1|contador1|q_reg\(1) & !\jugador_1|contador1|q_reg\(3)))))) # (!\jugador_1|contador1|q_reg\(5) & 
-- (\jugador_1|contador1|q_reg[2]~4_combout\ & ((\jugador_1|contador1|q_reg\(1)) # (!\jugador_1|contador1|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg\(5),
	datab => \jugador_1|contador1|q_reg\(1),
	datac => \jugador_1|contador1|q_reg\(3),
	datad => \jugador_1|contador1|q_reg[2]~4_combout\,
	combout => \jugador_1|bin1|Mux4~0_combout\);

-- Location: LCCOMB_X44_Y50_N16
\jugador_1|bin1|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin1|Mux4~1_combout\ = (\jugador_1|contador1|q_reg\(5) & ((\jugador_1|contador1|q_reg\(1) & ((\jugador_1|contador1|q_reg\(3)) # (!\jugador_1|contador1|q_reg[2]~4_combout\))) # (!\jugador_1|contador1|q_reg\(1) & 
-- ((\jugador_1|contador1|q_reg[2]~4_combout\) # (!\jugador_1|contador1|q_reg\(3)))))) # (!\jugador_1|contador1|q_reg\(5) & ((\jugador_1|contador1|q_reg[2]~4_combout\) # ((\jugador_1|contador1|q_reg\(1) & !\jugador_1|contador1|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg\(5),
	datab => \jugador_1|contador1|q_reg\(1),
	datac => \jugador_1|contador1|q_reg\(3),
	datad => \jugador_1|contador1|q_reg[2]~4_combout\,
	combout => \jugador_1|bin1|Mux4~1_combout\);

-- Location: LCCOMB_X44_Y50_N18
\jugador_1|bin1|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin1|Mux4~2_combout\ = (\jugador_1|contador1|q_reg\(4) & ((!\jugador_1|bin1|Mux4~1_combout\))) # (!\jugador_1|contador1|q_reg\(4) & (\jugador_1|bin1|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin1|Mux4~0_combout\,
	datab => \jugador_1|contador1|q_reg\(4),
	datad => \jugador_1|bin1|Mux4~1_combout\,
	combout => \jugador_1|bin1|Mux4~2_combout\);

-- Location: LCCOMB_X50_Y47_N30
\jugador_1|bin1|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin1|Mux5~1_combout\ = (\jugador_1|contador1|q_reg\(3) & (\jugador_1|contador1|q_reg\(1) $ (((\jugador_1|contador1|q_reg[2]~4_combout\) # (!\jugador_1|contador1|q_reg\(4)))))) # (!\jugador_1|contador1|q_reg\(3) & 
-- ((\jugador_1|contador1|q_reg\(1)) # ((!\jugador_1|contador1|q_reg[2]~4_combout\ & \jugador_1|contador1|q_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[2]~4_combout\,
	datab => \jugador_1|contador1|q_reg\(3),
	datac => \jugador_1|contador1|q_reg\(1),
	datad => \jugador_1|contador1|q_reg\(4),
	combout => \jugador_1|bin1|Mux5~1_combout\);

-- Location: LCCOMB_X50_Y47_N28
\jugador_1|bin1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin1|Mux5~0_combout\ = (\jugador_1|contador1|q_reg\(3) & ((\jugador_1|contador1|q_reg[2]~4_combout\ & (!\jugador_1|contador1|q_reg\(1) & !\jugador_1|contador1|q_reg\(4))) # (!\jugador_1|contador1|q_reg[2]~4_combout\ & 
-- (\jugador_1|contador1|q_reg\(1) & \jugador_1|contador1|q_reg\(4))))) # (!\jugador_1|contador1|q_reg\(3) & (\jugador_1|contador1|q_reg\(1) $ (((!\jugador_1|contador1|q_reg[2]~4_combout\ & \jugador_1|contador1|q_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[2]~4_combout\,
	datab => \jugador_1|contador1|q_reg\(3),
	datac => \jugador_1|contador1|q_reg\(1),
	datad => \jugador_1|contador1|q_reg\(4),
	combout => \jugador_1|bin1|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y47_N0
\jugador_1|bin1|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin1|Mux5~2_combout\ = (\jugador_1|contador1|q_reg\(5) & (!\jugador_1|bin1|Mux5~1_combout\)) # (!\jugador_1|contador1|q_reg\(5) & ((\jugador_1|bin1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin1|Mux5~1_combout\,
	datab => \jugador_1|bin1|Mux5~0_combout\,
	datad => \jugador_1|contador1|q_reg\(5),
	combout => \jugador_1|bin1|Mux5~2_combout\);

-- Location: LCCOMB_X50_Y47_N4
\jugador_1|bin1|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin1|Mux3~1_combout\ = (\jugador_1|contador1|q_reg[2]~4_combout\ & (!\jugador_1|contador1|q_reg\(3) & (\jugador_1|contador1|q_reg\(1) & \jugador_1|contador1|q_reg\(5)))) # (!\jugador_1|contador1|q_reg[2]~4_combout\ & 
-- (\jugador_1|contador1|q_reg\(3) & (!\jugador_1|contador1|q_reg\(1) & !\jugador_1|contador1|q_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[2]~4_combout\,
	datab => \jugador_1|contador1|q_reg\(3),
	datac => \jugador_1|contador1|q_reg\(1),
	datad => \jugador_1|contador1|q_reg\(5),
	combout => \jugador_1|bin1|Mux3~1_combout\);

-- Location: LCCOMB_X50_Y47_N18
\jugador_1|bin1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin1|Mux3~0_combout\ = (\jugador_1|contador1|q_reg[2]~4_combout\ & (\jugador_1|contador1|q_reg\(3) & (!\jugador_1|contador1|q_reg\(1) & !\jugador_1|contador1|q_reg\(5)))) # (!\jugador_1|contador1|q_reg[2]~4_combout\ & 
-- ((\jugador_1|contador1|q_reg\(3) & (\jugador_1|contador1|q_reg\(1) & \jugador_1|contador1|q_reg\(5))) # (!\jugador_1|contador1|q_reg\(3) & (\jugador_1|contador1|q_reg\(1) $ (\jugador_1|contador1|q_reg\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[2]~4_combout\,
	datab => \jugador_1|contador1|q_reg\(3),
	datac => \jugador_1|contador1|q_reg\(1),
	datad => \jugador_1|contador1|q_reg\(5),
	combout => \jugador_1|bin1|Mux3~0_combout\);

-- Location: LCCOMB_X50_Y47_N6
\jugador_1|bin1|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin1|Mux3~2_combout\ = (\jugador_1|contador1|q_reg\(4) & ((\jugador_1|bin1|Mux3~0_combout\))) # (!\jugador_1|contador1|q_reg\(4) & (\jugador_1|bin1|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg\(4),
	datac => \jugador_1|bin1|Mux3~1_combout\,
	datad => \jugador_1|bin1|Mux3~0_combout\,
	combout => \jugador_1|bin1|Mux3~2_combout\);

-- Location: LCCOMB_X46_Y48_N28
\jugador_1|hexa1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa1|Mux6~0_combout\ = (\jugador_1|bin1|Mux4~2_combout\ & (!\jugador_1|bin1|Mux5~2_combout\ & (\jugador_1|contador1|q_reg[0]~2_combout\ $ (!\jugador_1|bin1|Mux3~2_combout\)))) # (!\jugador_1|bin1|Mux4~2_combout\ & 
-- (\jugador_1|contador1|q_reg[0]~2_combout\ & (\jugador_1|bin1|Mux5~2_combout\ $ (!\jugador_1|bin1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[0]~2_combout\,
	datab => \jugador_1|bin1|Mux4~2_combout\,
	datac => \jugador_1|bin1|Mux5~2_combout\,
	datad => \jugador_1|bin1|Mux3~2_combout\,
	combout => \jugador_1|hexa1|Mux6~0_combout\);

-- Location: LCCOMB_X46_Y50_N10
\con0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|Add0~0_combout\ = (\con0|q_reg_u\(0) & \con0|q_reg_u\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_u\(0),
	datad => \con0|q_reg_u\(1),
	combout => \con0|Add0~0_combout\);

-- Location: LCCOMB_X45_Y46_N16
\con0|q_next_u~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_u~5_combout\ = (\con0|q_next_u~3_combout\ & (\con0|q_reg_u\(3) $ (((\con0|q_reg_u\(2) & \con0|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_u\(2),
	datab => \con0|Add0~0_combout\,
	datac => \con0|q_reg_u\(3),
	datad => \con0|q_next_u~3_combout\,
	combout => \con0|q_next_u~5_combout\);

-- Location: LCCOMB_X45_Y46_N20
aux_con_0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aux_con_0~combout\ = (\div|clk_o_reg~q\ & \fsm1|state_reg.ST_PLAYER_0_M~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div|clk_o_reg~q\,
	datad => \fsm1|state_reg.ST_PLAYER_0_M~q\,
	combout => \aux_con_0~combout\);

-- Location: FF_X45_Y46_N17
\con0|q_reg_u[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con0|q_next_u~5_combout\,
	clrn => \reset_n~input_o\,
	ena => \aux_con_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con0|q_reg_u\(3));

-- Location: LCCOMB_X46_Y46_N18
\con0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|Equal0~0_combout\ = (\con0|q_reg_u\(0) & (!\con0|q_reg_u\(2) & (\con0|q_reg_u\(3) & !\con0|q_reg_u\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_u\(0),
	datab => \con0|q_reg_u\(2),
	datac => \con0|q_reg_u\(3),
	datad => \con0|q_reg_u\(1),
	combout => \con0|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y46_N24
\con0|q_next_d[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_d[2]~4_combout\ = (\con0|q_reg_d\(2) & ((!\fsm1|state_reg.ST_PLAYER_0_M~q\) # (!\div|clk_o_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div|clk_o_reg~q\,
	datac => \con0|q_reg_d\(2),
	datad => \fsm1|state_reg.ST_PLAYER_0_M~q\,
	combout => \con0|q_next_d[2]~4_combout\);

-- Location: LCCOMB_X47_Y46_N30
\con0|q_next_d[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_d[0]~0_combout\ = \con0|q_reg_d\(0) $ (((\fsm1|state_reg.ST_PLAYER_0_M~q\ & \div|clk_o_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_d\(0),
	datac => \fsm1|state_reg.ST_PLAYER_0_M~q\,
	datad => \div|clk_o_reg~q\,
	combout => \con0|q_next_d[0]~0_combout\);

-- Location: LCCOMB_X47_Y46_N2
\con0|q_next_d[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_d[0]~1_combout\ = ((\con0|Equal1~0_combout\) # (\con0|Equal0~0_combout\)) # (!\con0|q_next_c[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \con0|q_next_c[2]~2_combout\,
	datac => \con0|Equal1~0_combout\,
	datad => \con0|Equal0~0_combout\,
	combout => \con0|q_next_d[0]~1_combout\);

-- Location: CLKCTRL_G10
\con0|q_next_d[0]~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \con0|q_next_d[0]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \con0|q_next_d[0]~1clkctrl_outclk\);

-- Location: LCCOMB_X46_Y46_N22
\con0|q_next_d[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_d\(0) = (GLOBAL(\con0|q_next_d[0]~1clkctrl_outclk\) & ((\con0|q_next_d[0]~0_combout\))) # (!GLOBAL(\con0|q_next_d[0]~1clkctrl_outclk\) & (\con0|q_next_d\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_next_d\(0),
	datac => \con0|q_next_d[0]~0_combout\,
	datad => \con0|q_next_d[0]~1clkctrl_outclk\,
	combout => \con0|q_next_d\(0));

-- Location: FF_X46_Y46_N21
\con0|q_reg_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \con0|q_next_d\(0),
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con0|q_reg_d\(0));

-- Location: LCCOMB_X45_Y46_N12
\con0|q_next_d[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_d[1]~2_combout\ = (\con0|q_next_c[2]~2_combout\ & (!\con0|Equal1~0_combout\ & (\con0|q_reg_d\(0) $ (\con0|q_reg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_d\(0),
	datab => \con0|q_reg_d\(1),
	datac => \con0|q_next_c[2]~2_combout\,
	datad => \con0|Equal1~0_combout\,
	combout => \con0|q_next_d[1]~2_combout\);

-- Location: LCCOMB_X45_Y46_N0
\con0|q_next_d[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_d[1]~3_combout\ = (\con0|q_next_d[1]~2_combout\) # ((\con0|q_reg_d\(1) & ((!\fsm1|state_reg.ST_PLAYER_0_M~q\) # (!\div|clk_o_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_d\(1),
	datab => \div|clk_o_reg~q\,
	datac => \fsm1|state_reg.ST_PLAYER_0_M~q\,
	datad => \con0|q_next_d[1]~2_combout\,
	combout => \con0|q_next_d[1]~3_combout\);

-- Location: LCCOMB_X45_Y46_N22
\con0|q_next_d[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_d\(1) = (GLOBAL(\con0|q_next_d[0]~1clkctrl_outclk\) & (\con0|q_next_d[1]~3_combout\)) # (!GLOBAL(\con0|q_next_d[0]~1clkctrl_outclk\) & ((\con0|q_next_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \con0|q_next_d[1]~3_combout\,
	datac => \con0|q_next_d\(1),
	datad => \con0|q_next_d[0]~1clkctrl_outclk\,
	combout => \con0|q_next_d\(1));

-- Location: FF_X45_Y46_N25
\con0|q_reg_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \con0|q_next_d\(1),
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con0|q_reg_d\(1));

-- Location: LCCOMB_X46_Y46_N8
\con0|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|Add1~0_combout\ = \con0|q_reg_d\(2) $ (((\con0|q_reg_d\(0) & \con0|q_reg_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \con0|q_reg_d\(0),
	datac => \con0|q_reg_d\(2),
	datad => \con0|q_reg_d\(1),
	combout => \con0|Add1~0_combout\);

-- Location: LCCOMB_X46_Y46_N30
\con0|q_next_d[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_d[2]~5_combout\ = (\con0|q_next_d[2]~4_combout\) # ((!\con0|Equal1~0_combout\ & (\con0|q_next_c[2]~2_combout\ & \con0|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|Equal1~0_combout\,
	datab => \con0|q_next_c[2]~2_combout\,
	datac => \con0|q_next_d[2]~4_combout\,
	datad => \con0|Add1~0_combout\,
	combout => \con0|q_next_d[2]~5_combout\);

-- Location: LCCOMB_X46_Y46_N14
\con0|q_next_d[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_d\(2) = (GLOBAL(\con0|q_next_d[0]~1clkctrl_outclk\) & ((\con0|q_next_d[2]~5_combout\))) # (!GLOBAL(\con0|q_next_d[0]~1clkctrl_outclk\) & (\con0|q_next_d\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_next_d\(2),
	datac => \con0|q_next_d[2]~5_combout\,
	datad => \con0|q_next_d[0]~1clkctrl_outclk\,
	combout => \con0|q_next_d\(2));

-- Location: FF_X46_Y46_N15
\con0|q_reg_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con0|q_next_d\(2),
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con0|q_reg_d\(2));

-- Location: LCCOMB_X45_Y46_N14
\con0|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|process_1~1_combout\ = (\con0|q_reg_u\(1) & (!\con0|q_reg_u\(0) & (\con0|q_reg_d\(2) & !\con0|q_reg_d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_u\(1),
	datab => \con0|q_reg_u\(0),
	datac => \con0|q_reg_d\(2),
	datad => \con0|q_reg_d\(3),
	combout => \con0|process_1~1_combout\);

-- Location: LCCOMB_X45_Y46_N18
\con0|q_next_u~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_u~3_combout\ = (!\con0|Equal0~0_combout\ & (((!\con0|process_1~2_combout\) # (!\con0|process_1~1_combout\)) # (!\con0|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|Equal0~0_combout\,
	datab => \con0|process_1~0_combout\,
	datac => \con0|process_1~1_combout\,
	datad => \con0|process_1~2_combout\,
	combout => \con0|q_next_u~3_combout\);

-- Location: LCCOMB_X45_Y46_N30
\con0|q_next_u~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_u~4_combout\ = (\con0|q_next_u~3_combout\ & (\con0|q_reg_u\(0) $ (\con0|q_reg_u\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \con0|q_reg_u\(0),
	datac => \con0|q_reg_u\(1),
	datad => \con0|q_next_u~3_combout\,
	combout => \con0|q_next_u~4_combout\);

-- Location: FF_X45_Y46_N31
\con0|q_reg_u[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con0|q_next_u~4_combout\,
	clrn => \reset_n~input_o\,
	ena => \aux_con_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con0|q_reg_u\(1));

-- Location: LCCOMB_X45_Y46_N6
\con0|q_next_u~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_u~6_combout\ = (\con0|q_next_u~3_combout\ & (\con0|q_reg_u\(2) $ (((\con0|q_reg_u\(1) & \con0|q_reg_u\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_u\(1),
	datab => \con0|q_reg_u\(0),
	datac => \con0|q_reg_u\(2),
	datad => \con0|q_next_u~3_combout\,
	combout => \con0|q_next_u~6_combout\);

-- Location: FF_X45_Y46_N7
\con0|q_reg_u[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con0|q_next_u~6_combout\,
	clrn => \reset_n~input_o\,
	ena => \aux_con_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con0|q_reg_u\(2));

-- Location: LCCOMB_X45_Y46_N10
\con0|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|process_1~0_combout\ = (!\con0|q_reg_u\(2) & (!\con0|q_reg_u\(3) & (\con0|q_reg_d\(0) & !\con0|q_reg_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_u\(2),
	datab => \con0|q_reg_u\(3),
	datac => \con0|q_reg_d\(0),
	datad => \con0|q_reg_d\(1),
	combout => \con0|process_1~0_combout\);

-- Location: LCCOMB_X45_Y46_N2
\con0|q_next_c[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_c[2]~2_combout\ = (\aux_con_0~combout\ & (((!\con0|process_1~1_combout\) # (!\con0|process_1~2_combout\)) # (!\con0|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|process_1~0_combout\,
	datab => \con0|process_1~2_combout\,
	datac => \con0|process_1~1_combout\,
	datad => \aux_con_0~combout\,
	combout => \con0|q_next_c[2]~2_combout\);

-- Location: LCCOMB_X46_Y46_N2
\con0|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|Add1~1_combout\ = \con0|q_reg_d\(3) $ (((\con0|q_reg_d\(0) & (\con0|q_reg_d\(2) & \con0|q_reg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_d\(3),
	datab => \con0|q_reg_d\(0),
	datac => \con0|q_reg_d\(2),
	datad => \con0|q_reg_d\(1),
	combout => \con0|Add1~1_combout\);

-- Location: LCCOMB_X46_Y46_N12
\con0|q_next_d[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_d[3]~6_combout\ = (\con0|q_reg_d\(3) & ((!\fsm1|state_reg.ST_PLAYER_0_M~q\) # (!\div|clk_o_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_d\(3),
	datac => \div|clk_o_reg~q\,
	datad => \fsm1|state_reg.ST_PLAYER_0_M~q\,
	combout => \con0|q_next_d[3]~6_combout\);

-- Location: LCCOMB_X46_Y46_N4
\con0|q_next_d[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_d[3]~7_combout\ = (\con0|q_next_d[3]~6_combout\) # ((!\con0|Equal1~0_combout\ & (\con0|q_next_c[2]~2_combout\ & \con0|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|Equal1~0_combout\,
	datab => \con0|q_next_c[2]~2_combout\,
	datac => \con0|Add1~1_combout\,
	datad => \con0|q_next_d[3]~6_combout\,
	combout => \con0|q_next_d[3]~7_combout\);

-- Location: LCCOMB_X46_Y46_N26
\con0|q_next_d[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_d\(3) = (GLOBAL(\con0|q_next_d[0]~1clkctrl_outclk\) & (\con0|q_next_d[3]~7_combout\)) # (!GLOBAL(\con0|q_next_d[0]~1clkctrl_outclk\) & ((\con0|q_next_d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \con0|q_next_d[3]~7_combout\,
	datac => \con0|q_next_d\(3),
	datad => \con0|q_next_d[0]~1clkctrl_outclk\,
	combout => \con0|q_next_d\(3));

-- Location: FF_X46_Y46_N27
\con0|q_reg_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con0|q_next_d\(3),
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con0|q_reg_d\(3));

-- Location: LCCOMB_X46_Y46_N6
\con0|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|Equal1~0_combout\ = (\con0|q_reg_d\(3) & (\con0|q_reg_d\(0) & (!\con0|q_reg_d\(2) & !\con0|q_reg_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_d\(3),
	datab => \con0|q_reg_d\(0),
	datac => \con0|q_reg_d\(2),
	datad => \con0|q_reg_d\(1),
	combout => \con0|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y46_N10
\con0|q_next_d[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_d[3]~8_combout\ = (!\con0|Equal1~0_combout\ & \con0|q_next_c[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|Equal1~0_combout\,
	datad => \con0|q_next_c[2]~2_combout\,
	combout => \con0|q_next_d[3]~8_combout\);

-- Location: CLKCTRL_G13
\con0|q_next_d[3]~8clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \con0|q_next_d[3]~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \con0|q_next_d[3]~8clkctrl_outclk\);

-- Location: LCCOMB_X45_Y46_N28
\con0|q_next_c[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_c[0]~6_combout\ = (\con0|q_reg_c\(0) & (((!\div|clk_o_reg~q\)) # (!\fsm1|state_reg.ST_PLAYER_0_M~q\))) # (!\con0|q_reg_c\(0) & (((\con0|q_next_c[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|state_reg.ST_PLAYER_0_M~q\,
	datab => \con0|q_reg_c\(0),
	datac => \div|clk_o_reg~q\,
	datad => \con0|q_next_c[2]~2_combout\,
	combout => \con0|q_next_c[0]~6_combout\);

-- Location: LCCOMB_X45_Y46_N26
\con0|q_next_c[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_c\(0) = (GLOBAL(\con0|q_next_d[3]~8clkctrl_outclk\) & (\con0|q_next_c\(0))) # (!GLOBAL(\con0|q_next_d[3]~8clkctrl_outclk\) & ((\con0|q_next_c[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_next_c\(0),
	datac => \con0|q_next_c[0]~6_combout\,
	datad => \con0|q_next_d[3]~8clkctrl_outclk\,
	combout => \con0|q_next_c\(0));

-- Location: FF_X45_Y46_N5
\con0|q_reg_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \con0|q_next_c\(0),
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con0|q_reg_c\(0));

-- Location: LCCOMB_X44_Y46_N2
\con0|q_next_c[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_c[1]~3_combout\ = (\con0|q_reg_c\(1) & (((!\con0|q_reg_c\(0) & \con0|q_next_c[2]~2_combout\)) # (!\aux_con_0~combout\))) # (!\con0|q_reg_c\(1) & (((\con0|q_reg_c\(0) & \con0|q_next_c[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_con_0~combout\,
	datab => \con0|q_reg_c\(1),
	datac => \con0|q_reg_c\(0),
	datad => \con0|q_next_c[2]~2_combout\,
	combout => \con0|q_next_c[1]~3_combout\);

-- Location: LCCOMB_X44_Y46_N30
\con0|q_next_c[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_c\(1) = (GLOBAL(\con0|q_next_d[3]~8clkctrl_outclk\) & (\con0|q_next_c\(1))) # (!GLOBAL(\con0|q_next_d[3]~8clkctrl_outclk\) & ((\con0|q_next_c[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_next_c\(1),
	datac => \con0|q_next_d[3]~8clkctrl_outclk\,
	datad => \con0|q_next_c[1]~3_combout\,
	combout => \con0|q_next_c\(1));

-- Location: FF_X44_Y46_N31
\con0|q_reg_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con0|q_next_c\(1),
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con0|q_reg_c\(1));

-- Location: LCCOMB_X44_Y46_N12
\con0|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|Add2~0_combout\ = (\con0|q_reg_c\(1) & \con0|q_reg_c\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \con0|q_reg_c\(1),
	datac => \con0|q_reg_c\(0),
	combout => \con0|Add2~0_combout\);

-- Location: LCCOMB_X44_Y46_N18
\con0|q_next_c[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_c[2]~4_combout\ = (\con0|q_reg_c\(2) & (((!\con0|Add2~0_combout\ & \con0|q_next_c[2]~2_combout\)) # (!\aux_con_0~combout\))) # (!\con0|q_reg_c\(2) & (\con0|Add2~0_combout\ & (\con0|q_next_c[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|Add2~0_combout\,
	datab => \con0|q_reg_c\(2),
	datac => \con0|q_next_c[2]~2_combout\,
	datad => \aux_con_0~combout\,
	combout => \con0|q_next_c[2]~4_combout\);

-- Location: LCCOMB_X44_Y46_N16
\con0|q_next_c[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_c\(2) = (GLOBAL(\con0|q_next_d[3]~8clkctrl_outclk\) & (\con0|q_next_c\(2))) # (!GLOBAL(\con0|q_next_d[3]~8clkctrl_outclk\) & ((\con0|q_next_c[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \con0|q_next_c\(2),
	datac => \con0|q_next_c[2]~4_combout\,
	datad => \con0|q_next_d[3]~8clkctrl_outclk\,
	combout => \con0|q_next_c\(2));

-- Location: FF_X44_Y46_N17
\con0|q_reg_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con0|q_next_c\(2),
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con0|q_reg_c\(2));

-- Location: LCCOMB_X44_Y46_N0
\con0|q_next_c[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_c[3]~5_combout\ = \con0|q_reg_c\(3) $ (((\aux_con_0~combout\ & (\con0|q_reg_c\(2) & \con0|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux_con_0~combout\,
	datab => \con0|q_reg_c\(2),
	datac => \con0|q_reg_c\(3),
	datad => \con0|Add2~0_combout\,
	combout => \con0|q_next_c[3]~5_combout\);

-- Location: LCCOMB_X44_Y46_N6
\con0|q_next_c[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_c\(3) = (GLOBAL(\con0|q_next_d[3]~8clkctrl_outclk\) & (\con0|q_next_c\(3))) # (!GLOBAL(\con0|q_next_d[3]~8clkctrl_outclk\) & ((\con0|q_next_c[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_next_c\(3),
	datac => \con0|q_next_c[3]~5_combout\,
	datad => \con0|q_next_d[3]~8clkctrl_outclk\,
	combout => \con0|q_next_c\(3));

-- Location: FF_X44_Y46_N7
\con0|q_reg_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con0|q_next_c\(3),
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con0|q_reg_c\(3));

-- Location: LCCOMB_X45_Y46_N4
\con0|process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|process_1~2_combout\ = (\con0|q_reg_c\(2) & (!\con0|q_reg_c\(3) & (!\con0|q_reg_c\(0) & \con0|q_reg_c\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_c\(2),
	datab => \con0|q_reg_c\(3),
	datac => \con0|q_reg_c\(0),
	datad => \con0|q_reg_c\(1),
	combout => \con0|process_1~2_combout\);

-- Location: LCCOMB_X45_Y46_N8
\con0|q_next_u~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|q_next_u~2_combout\ = (!\con0|q_reg_u\(0) & (((!\con0|process_1~1_combout\) # (!\con0|process_1~0_combout\)) # (!\con0|process_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|process_1~2_combout\,
	datab => \con0|process_1~0_combout\,
	datac => \con0|q_reg_u\(0),
	datad => \con0|process_1~1_combout\,
	combout => \con0|q_next_u~2_combout\);

-- Location: FF_X45_Y46_N9
\con0|q_reg_u[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \con0|q_next_u~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \aux_con_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \con0|q_reg_u\(0));

-- Location: LCCOMB_X46_Y50_N16
\con0|hexa_u|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_u|Mux6~0_combout\ = (\con0|q_reg_u\(2) & (!\con0|q_reg_u\(1) & (\con0|q_reg_u\(0) $ (!\con0|q_reg_u\(3))))) # (!\con0|q_reg_u\(2) & (\con0|q_reg_u\(0) & (\con0|q_reg_u\(3) $ (!\con0|q_reg_u\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_u\(0),
	datab => \con0|q_reg_u\(2),
	datac => \con0|q_reg_u\(3),
	datad => \con0|q_reg_u\(1),
	combout => \con0|hexa_u|Mux6~0_combout\);

-- Location: LCCOMB_X46_Y48_N10
\mu0|y[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[0]~0_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|hexa1|Mux6~0_combout\) # ((\ver_disp[0]~input_o\)))) # (!\ver_disp[1]~input_o\ & (((\ver_disp[0]~input_o\ & \con0|hexa_u|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_1|hexa1|Mux6~0_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \con0|hexa_u|Mux6~0_combout\,
	combout => \mu0|y[0]~0_combout\);

-- Location: LCCOMB_X46_Y48_N4
\mu0|y[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[0]~1_combout\ = (\mu2|y[5]~0_combout\ & ((\mu0|y[0]~0_combout\ & (\con1|hexa_u|Mux6~0_combout\)) # (!\mu0|y[0]~0_combout\ & ((\jugador_0|hexa1|Mux6~0_combout\))))) # (!\mu2|y[5]~0_combout\ & (((\mu0|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu2|y[5]~0_combout\,
	datab => \con1|hexa_u|Mux6~0_combout\,
	datac => \jugador_0|hexa1|Mux6~0_combout\,
	datad => \mu0|y[0]~0_combout\,
	combout => \mu0|y[0]~1_combout\);

-- Location: LCCOMB_X47_Y42_N6
\jugador_0|hexa1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa1|Mux5~0_combout\ = (\jugador_0|bin1|Mux3~2_combout\ & ((\jugador_0|contador1|q_reg[0]~2_combout\ & ((\jugador_0|bin1|Mux5~2_combout\))) # (!\jugador_0|contador1|q_reg[0]~2_combout\ & (\jugador_0|bin1|Mux4~2_combout\)))) # 
-- (!\jugador_0|bin1|Mux3~2_combout\ & (\jugador_0|bin1|Mux4~2_combout\ & (\jugador_0|contador1|q_reg[0]~2_combout\ $ (\jugador_0|bin1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg[0]~2_combout\,
	datab => \jugador_0|bin1|Mux4~2_combout\,
	datac => \jugador_0|bin1|Mux3~2_combout\,
	datad => \jugador_0|bin1|Mux5~2_combout\,
	combout => \jugador_0|hexa1|Mux5~0_combout\);

-- Location: LCCOMB_X46_Y48_N18
\jugador_1|hexa1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa1|Mux5~0_combout\ = (\jugador_1|bin1|Mux5~2_combout\ & ((\jugador_1|contador1|q_reg[0]~2_combout\ & ((\jugador_1|bin1|Mux3~2_combout\))) # (!\jugador_1|contador1|q_reg[0]~2_combout\ & (\jugador_1|bin1|Mux4~2_combout\)))) # 
-- (!\jugador_1|bin1|Mux5~2_combout\ & (\jugador_1|bin1|Mux4~2_combout\ & (\jugador_1|contador1|q_reg[0]~2_combout\ $ (\jugador_1|bin1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[0]~2_combout\,
	datab => \jugador_1|bin1|Mux4~2_combout\,
	datac => \jugador_1|bin1|Mux5~2_combout\,
	datad => \jugador_1|bin1|Mux3~2_combout\,
	combout => \jugador_1|hexa1|Mux5~0_combout\);

-- Location: LCCOMB_X46_Y50_N26
\con0|hexa_u|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_u|Mux5~0_combout\ = (\con0|q_reg_u\(3) & ((\con0|q_reg_u\(0) & ((\con0|q_reg_u\(1)))) # (!\con0|q_reg_u\(0) & (\con0|q_reg_u\(2))))) # (!\con0|q_reg_u\(3) & (\con0|q_reg_u\(2) & (\con0|q_reg_u\(0) $ (\con0|q_reg_u\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_u\(0),
	datab => \con0|q_reg_u\(2),
	datac => \con0|q_reg_u\(3),
	datad => \con0|q_reg_u\(1),
	combout => \con0|hexa_u|Mux5~0_combout\);

-- Location: LCCOMB_X46_Y48_N0
\mu0|y[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[1]~2_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|hexa1|Mux5~0_combout\) # ((\ver_disp[0]~input_o\)))) # (!\ver_disp[1]~input_o\ & (((\ver_disp[0]~input_o\ & \con0|hexa_u|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_1|hexa1|Mux5~0_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \con0|hexa_u|Mux5~0_combout\,
	combout => \mu0|y[1]~2_combout\);

-- Location: LCCOMB_X47_Y47_N24
\con1|hexa_u|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_u|Mux5~0_combout\ = (\con1|q_reg_u\(1) & ((\con1|q_reg_u\(0) & ((\con1|q_reg_u\(3)))) # (!\con1|q_reg_u\(0) & (\con1|q_reg_u\(2))))) # (!\con1|q_reg_u\(1) & (\con1|q_reg_u\(2) & (\con1|q_reg_u\(0) $ (\con1|q_reg_u\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_u\(0),
	datab => \con1|q_reg_u\(1),
	datac => \con1|q_reg_u\(2),
	datad => \con1|q_reg_u\(3),
	combout => \con1|hexa_u|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y47_N4
\mu0|y[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[1]~3_combout\ = (\mu2|y[5]~0_combout\ & ((\mu0|y[1]~2_combout\ & ((\con1|hexa_u|Mux5~0_combout\))) # (!\mu0|y[1]~2_combout\ & (\jugador_0|hexa1|Mux5~0_combout\)))) # (!\mu2|y[5]~0_combout\ & (((\mu0|y[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|hexa1|Mux5~0_combout\,
	datab => \mu2|y[5]~0_combout\,
	datac => \mu0|y[1]~2_combout\,
	datad => \con1|hexa_u|Mux5~0_combout\,
	combout => \mu0|y[1]~3_combout\);

-- Location: LCCOMB_X46_Y48_N22
\jugador_1|hexa1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa1|Mux4~0_combout\ = (\jugador_1|bin1|Mux4~2_combout\ & (\jugador_1|bin1|Mux3~2_combout\ & ((\jugador_1|bin1|Mux5~2_combout\) # (!\jugador_1|contador1|q_reg[0]~2_combout\)))) # (!\jugador_1|bin1|Mux4~2_combout\ & 
-- (!\jugador_1|contador1|q_reg[0]~2_combout\ & (\jugador_1|bin1|Mux5~2_combout\ & !\jugador_1|bin1|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[0]~2_combout\,
	datab => \jugador_1|bin1|Mux4~2_combout\,
	datac => \jugador_1|bin1|Mux5~2_combout\,
	datad => \jugador_1|bin1|Mux3~2_combout\,
	combout => \jugador_1|hexa1|Mux4~0_combout\);

-- Location: LCCOMB_X46_Y50_N28
\con0|hexa_u|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_u|Mux4~0_combout\ = (\con0|q_reg_u\(2) & (\con0|q_reg_u\(3) & ((\con0|q_reg_u\(1)) # (!\con0|q_reg_u\(0))))) # (!\con0|q_reg_u\(2) & (!\con0|q_reg_u\(0) & (!\con0|q_reg_u\(3) & \con0|q_reg_u\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_u\(0),
	datab => \con0|q_reg_u\(2),
	datac => \con0|q_reg_u\(3),
	datad => \con0|q_reg_u\(1),
	combout => \con0|hexa_u|Mux4~0_combout\);

-- Location: LCCOMB_X46_Y48_N24
\mu0|y[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[2]~4_combout\ = (\ver_disp[1]~input_o\ & ((\ver_disp[0]~input_o\) # ((\jugador_1|hexa1|Mux4~0_combout\)))) # (!\ver_disp[1]~input_o\ & (\ver_disp[0]~input_o\ & ((\con0|hexa_u|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \ver_disp[0]~input_o\,
	datac => \jugador_1|hexa1|Mux4~0_combout\,
	datad => \con0|hexa_u|Mux4~0_combout\,
	combout => \mu0|y[2]~4_combout\);

-- Location: LCCOMB_X47_Y42_N28
\jugador_0|hexa1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa1|Mux4~0_combout\ = (\jugador_0|bin1|Mux4~2_combout\ & (\jugador_0|bin1|Mux3~2_combout\ & ((\jugador_0|bin1|Mux5~2_combout\) # (!\jugador_0|contador1|q_reg[0]~2_combout\)))) # (!\jugador_0|bin1|Mux4~2_combout\ & 
-- (!\jugador_0|contador1|q_reg[0]~2_combout\ & (!\jugador_0|bin1|Mux3~2_combout\ & \jugador_0|bin1|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg[0]~2_combout\,
	datab => \jugador_0|bin1|Mux4~2_combout\,
	datac => \jugador_0|bin1|Mux3~2_combout\,
	datad => \jugador_0|bin1|Mux5~2_combout\,
	combout => \jugador_0|hexa1|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y47_N0
\con1|hexa_u|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_u|Mux4~0_combout\ = (\con1|q_reg_u\(2) & (\con1|q_reg_u\(3) & ((\con1|q_reg_u\(1)) # (!\con1|q_reg_u\(0))))) # (!\con1|q_reg_u\(2) & (!\con1|q_reg_u\(0) & (\con1|q_reg_u\(1) & !\con1|q_reg_u\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_u\(0),
	datab => \con1|q_reg_u\(1),
	datac => \con1|q_reg_u\(2),
	datad => \con1|q_reg_u\(3),
	combout => \con1|hexa_u|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y48_N16
\mu0|y[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[2]~5_combout\ = (\mu2|y[5]~0_combout\ & ((\mu0|y[2]~4_combout\ & ((\con1|hexa_u|Mux4~0_combout\))) # (!\mu0|y[2]~4_combout\ & (\jugador_0|hexa1|Mux4~0_combout\)))) # (!\mu2|y[5]~0_combout\ & (\mu0|y[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu2|y[5]~0_combout\,
	datab => \mu0|y[2]~4_combout\,
	datac => \jugador_0|hexa1|Mux4~0_combout\,
	datad => \con1|hexa_u|Mux4~0_combout\,
	combout => \mu0|y[2]~5_combout\);

-- Location: LCCOMB_X46_Y48_N26
\jugador_1|hexa1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa1|Mux3~0_combout\ = (\jugador_1|bin1|Mux5~2_combout\ & ((\jugador_1|contador1|q_reg[0]~2_combout\ & (\jugador_1|bin1|Mux4~2_combout\)) # (!\jugador_1|contador1|q_reg[0]~2_combout\ & (!\jugador_1|bin1|Mux4~2_combout\ & 
-- \jugador_1|bin1|Mux3~2_combout\)))) # (!\jugador_1|bin1|Mux5~2_combout\ & (!\jugador_1|bin1|Mux3~2_combout\ & (\jugador_1|contador1|q_reg[0]~2_combout\ $ (\jugador_1|bin1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[0]~2_combout\,
	datab => \jugador_1|bin1|Mux4~2_combout\,
	datac => \jugador_1|bin1|Mux5~2_combout\,
	datad => \jugador_1|bin1|Mux3~2_combout\,
	combout => \jugador_1|hexa1|Mux3~0_combout\);

-- Location: LCCOMB_X46_Y50_N22
\con0|hexa_u|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_u|Mux3~0_combout\ = (\con0|q_reg_u\(1) & ((\con0|q_reg_u\(0) & (\con0|q_reg_u\(2))) # (!\con0|q_reg_u\(0) & (!\con0|q_reg_u\(2) & \con0|q_reg_u\(3))))) # (!\con0|q_reg_u\(1) & (!\con0|q_reg_u\(3) & (\con0|q_reg_u\(0) $ (\con0|q_reg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_u\(0),
	datab => \con0|q_reg_u\(2),
	datac => \con0|q_reg_u\(3),
	datad => \con0|q_reg_u\(1),
	combout => \con0|hexa_u|Mux3~0_combout\);

-- Location: LCCOMB_X46_Y48_N20
\mu0|y[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[3]~6_combout\ = (\ver_disp[1]~input_o\ & ((\ver_disp[0]~input_o\) # ((\jugador_1|hexa1|Mux3~0_combout\)))) # (!\ver_disp[1]~input_o\ & (\ver_disp[0]~input_o\ & ((\con0|hexa_u|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \ver_disp[0]~input_o\,
	datac => \jugador_1|hexa1|Mux3~0_combout\,
	datad => \con0|hexa_u|Mux3~0_combout\,
	combout => \mu0|y[3]~6_combout\);

-- Location: LCCOMB_X47_Y42_N18
\jugador_0|hexa1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa1|Mux3~0_combout\ = (\jugador_0|bin1|Mux5~2_combout\ & ((\jugador_0|contador1|q_reg[0]~2_combout\ & (\jugador_0|bin1|Mux4~2_combout\)) # (!\jugador_0|contador1|q_reg[0]~2_combout\ & (!\jugador_0|bin1|Mux4~2_combout\ & 
-- \jugador_0|bin1|Mux3~2_combout\)))) # (!\jugador_0|bin1|Mux5~2_combout\ & (!\jugador_0|bin1|Mux3~2_combout\ & (\jugador_0|contador1|q_reg[0]~2_combout\ $ (\jugador_0|bin1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg[0]~2_combout\,
	datab => \jugador_0|bin1|Mux4~2_combout\,
	datac => \jugador_0|bin1|Mux3~2_combout\,
	datad => \jugador_0|bin1|Mux5~2_combout\,
	combout => \jugador_0|hexa1|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y47_N28
\con1|hexa_u|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_u|Mux3~0_combout\ = (\con1|q_reg_u\(1) & ((\con1|q_reg_u\(0) & (\con1|q_reg_u\(2))) # (!\con1|q_reg_u\(0) & (!\con1|q_reg_u\(2) & \con1|q_reg_u\(3))))) # (!\con1|q_reg_u\(1) & (!\con1|q_reg_u\(3) & (\con1|q_reg_u\(0) $ (\con1|q_reg_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_u\(0),
	datab => \con1|q_reg_u\(1),
	datac => \con1|q_reg_u\(2),
	datad => \con1|q_reg_u\(3),
	combout => \con1|hexa_u|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y48_N2
\mu0|y[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[3]~7_combout\ = (\mu2|y[5]~0_combout\ & ((\mu0|y[3]~6_combout\ & ((\con1|hexa_u|Mux3~0_combout\))) # (!\mu0|y[3]~6_combout\ & (\jugador_0|hexa1|Mux3~0_combout\)))) # (!\mu2|y[5]~0_combout\ & (\mu0|y[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu2|y[5]~0_combout\,
	datab => \mu0|y[3]~6_combout\,
	datac => \jugador_0|hexa1|Mux3~0_combout\,
	datad => \con1|hexa_u|Mux3~0_combout\,
	combout => \mu0|y[3]~7_combout\);

-- Location: LCCOMB_X46_Y48_N2
\jugador_1|hexa1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa1|Mux2~0_combout\ = (\jugador_1|bin1|Mux5~2_combout\ & (\jugador_1|contador1|q_reg[0]~2_combout\ & ((!\jugador_1|bin1|Mux3~2_combout\)))) # (!\jugador_1|bin1|Mux5~2_combout\ & ((\jugador_1|bin1|Mux4~2_combout\ & 
-- ((!\jugador_1|bin1|Mux3~2_combout\))) # (!\jugador_1|bin1|Mux4~2_combout\ & (\jugador_1|contador1|q_reg[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[0]~2_combout\,
	datab => \jugador_1|bin1|Mux4~2_combout\,
	datac => \jugador_1|bin1|Mux5~2_combout\,
	datad => \jugador_1|bin1|Mux3~2_combout\,
	combout => \jugador_1|hexa1|Mux2~0_combout\);

-- Location: LCCOMB_X46_Y50_N0
\con0|hexa_u|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_u|Mux2~0_combout\ = (\con0|q_reg_u\(1) & (\con0|q_reg_u\(0) & ((!\con0|q_reg_u\(3))))) # (!\con0|q_reg_u\(1) & ((\con0|q_reg_u\(2) & ((!\con0|q_reg_u\(3)))) # (!\con0|q_reg_u\(2) & (\con0|q_reg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_u\(0),
	datab => \con0|q_reg_u\(2),
	datac => \con0|q_reg_u\(3),
	datad => \con0|q_reg_u\(1),
	combout => \con0|hexa_u|Mux2~0_combout\);

-- Location: LCCOMB_X46_Y51_N12
\mu0|y[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[4]~8_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|hexa1|Mux2~0_combout\) # ((\ver_disp[0]~input_o\)))) # (!\ver_disp[1]~input_o\ & (((\ver_disp[0]~input_o\ & \con0|hexa_u|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|hexa1|Mux2~0_combout\,
	datab => \ver_disp[1]~input_o\,
	datac => \ver_disp[0]~input_o\,
	datad => \con0|hexa_u|Mux2~0_combout\,
	combout => \mu0|y[4]~8_combout\);

-- Location: LCCOMB_X49_Y47_N0
\con1|hexa_u|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_u|Mux2~0_combout\ = (\con1|q_reg_u\(1) & (((\con1|q_reg_u\(0) & !\con1|q_reg_u\(3))))) # (!\con1|q_reg_u\(1) & ((\con1|q_reg_u\(2) & ((!\con1|q_reg_u\(3)))) # (!\con1|q_reg_u\(2) & (\con1|q_reg_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_u\(2),
	datab => \con1|q_reg_u\(0),
	datac => \con1|q_reg_u\(1),
	datad => \con1|q_reg_u\(3),
	combout => \con1|hexa_u|Mux2~0_combout\);

-- Location: LCCOMB_X47_Y42_N4
\jugador_0|hexa1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa1|Mux2~0_combout\ = (\jugador_0|bin1|Mux5~2_combout\ & (\jugador_0|contador1|q_reg[0]~2_combout\ & ((!\jugador_0|bin1|Mux3~2_combout\)))) # (!\jugador_0|bin1|Mux5~2_combout\ & ((\jugador_0|bin1|Mux4~2_combout\ & 
-- ((!\jugador_0|bin1|Mux3~2_combout\))) # (!\jugador_0|bin1|Mux4~2_combout\ & (\jugador_0|contador1|q_reg[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg[0]~2_combout\,
	datab => \jugador_0|bin1|Mux4~2_combout\,
	datac => \jugador_0|bin1|Mux3~2_combout\,
	datad => \jugador_0|bin1|Mux5~2_combout\,
	combout => \jugador_0|hexa1|Mux2~0_combout\);

-- Location: LCCOMB_X47_Y48_N12
\mu0|y[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[4]~9_combout\ = (\mu0|y[4]~8_combout\ & ((\con1|hexa_u|Mux2~0_combout\) # ((!\mu2|y[5]~0_combout\)))) # (!\mu0|y[4]~8_combout\ & (((\mu2|y[5]~0_combout\ & \jugador_0|hexa1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu0|y[4]~8_combout\,
	datab => \con1|hexa_u|Mux2~0_combout\,
	datac => \mu2|y[5]~0_combout\,
	datad => \jugador_0|hexa1|Mux2~0_combout\,
	combout => \mu0|y[4]~9_combout\);

-- Location: LCCOMB_X47_Y47_N22
\con1|hexa_u|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_u|Mux1~0_combout\ = (\con1|q_reg_u\(0) & (\con1|q_reg_u\(3) $ (((\con1|q_reg_u\(1)) # (!\con1|q_reg_u\(2)))))) # (!\con1|q_reg_u\(0) & (\con1|q_reg_u\(1) & (!\con1|q_reg_u\(2) & !\con1|q_reg_u\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_u\(0),
	datab => \con1|q_reg_u\(1),
	datac => \con1|q_reg_u\(2),
	datad => \con1|q_reg_u\(3),
	combout => \con1|hexa_u|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y42_N10
\jugador_0|hexa1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa1|Mux1~0_combout\ = (\jugador_0|contador1|q_reg[0]~2_combout\ & (\jugador_0|bin1|Mux3~2_combout\ $ (((\jugador_0|bin1|Mux5~2_combout\) # (!\jugador_0|bin1|Mux4~2_combout\))))) # (!\jugador_0|contador1|q_reg[0]~2_combout\ & 
-- (!\jugador_0|bin1|Mux4~2_combout\ & (!\jugador_0|bin1|Mux3~2_combout\ & \jugador_0|bin1|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg[0]~2_combout\,
	datab => \jugador_0|bin1|Mux4~2_combout\,
	datac => \jugador_0|bin1|Mux3~2_combout\,
	datad => \jugador_0|bin1|Mux5~2_combout\,
	combout => \jugador_0|hexa1|Mux1~0_combout\);

-- Location: LCCOMB_X46_Y48_N16
\jugador_1|hexa1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa1|Mux1~0_combout\ = (\jugador_1|contador1|q_reg[0]~2_combout\ & (\jugador_1|bin1|Mux3~2_combout\ $ (((\jugador_1|bin1|Mux5~2_combout\) # (!\jugador_1|bin1|Mux4~2_combout\))))) # (!\jugador_1|contador1|q_reg[0]~2_combout\ & 
-- (!\jugador_1|bin1|Mux4~2_combout\ & (\jugador_1|bin1|Mux5~2_combout\ & !\jugador_1|bin1|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[0]~2_combout\,
	datab => \jugador_1|bin1|Mux4~2_combout\,
	datac => \jugador_1|bin1|Mux5~2_combout\,
	datad => \jugador_1|bin1|Mux3~2_combout\,
	combout => \jugador_1|hexa1|Mux1~0_combout\);

-- Location: LCCOMB_X46_Y50_N6
\con0|hexa_u|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_u|Mux1~0_combout\ = (\con0|q_reg_u\(0) & (\con0|q_reg_u\(3) $ (((\con0|q_reg_u\(1)) # (!\con0|q_reg_u\(2)))))) # (!\con0|q_reg_u\(0) & (!\con0|q_reg_u\(2) & (!\con0|q_reg_u\(3) & \con0|q_reg_u\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_u\(0),
	datab => \con0|q_reg_u\(2),
	datac => \con0|q_reg_u\(3),
	datad => \con0|q_reg_u\(1),
	combout => \con0|hexa_u|Mux1~0_combout\);

-- Location: LCCOMB_X46_Y48_N14
\mu0|y[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[5]~10_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|hexa1|Mux1~0_combout\) # ((\ver_disp[0]~input_o\)))) # (!\ver_disp[1]~input_o\ & (((\ver_disp[0]~input_o\ & \con0|hexa_u|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_1|hexa1|Mux1~0_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \con0|hexa_u|Mux1~0_combout\,
	combout => \mu0|y[5]~10_combout\);

-- Location: LCCOMB_X47_Y48_N6
\mu0|y[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[5]~11_combout\ = (\mu2|y[5]~0_combout\ & ((\mu0|y[5]~10_combout\ & (\con1|hexa_u|Mux1~0_combout\)) # (!\mu0|y[5]~10_combout\ & ((\jugador_0|hexa1|Mux1~0_combout\))))) # (!\mu2|y[5]~0_combout\ & (((\mu0|y[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu2|y[5]~0_combout\,
	datab => \con1|hexa_u|Mux1~0_combout\,
	datac => \jugador_0|hexa1|Mux1~0_combout\,
	datad => \mu0|y[5]~10_combout\,
	combout => \mu0|y[5]~11_combout\);

-- Location: LCCOMB_X46_Y48_N8
\jugador_1|hexa1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa1|Mux0~0_combout\ = (\jugador_1|contador1|q_reg[0]~2_combout\ & ((\jugador_1|bin1|Mux3~2_combout\) # (\jugador_1|bin1|Mux4~2_combout\ $ (\jugador_1|bin1|Mux5~2_combout\)))) # (!\jugador_1|contador1|q_reg[0]~2_combout\ & 
-- ((\jugador_1|bin1|Mux5~2_combout\) # (\jugador_1|bin1|Mux4~2_combout\ $ (\jugador_1|bin1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[0]~2_combout\,
	datab => \jugador_1|bin1|Mux4~2_combout\,
	datac => \jugador_1|bin1|Mux5~2_combout\,
	datad => \jugador_1|bin1|Mux3~2_combout\,
	combout => \jugador_1|hexa1|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y50_N8
\con0|hexa_u|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_u|Mux0~0_combout\ = (\con0|q_reg_u\(0) & ((\con0|q_reg_u\(3)) # (\con0|q_reg_u\(2) $ (\con0|q_reg_u\(1))))) # (!\con0|q_reg_u\(0) & ((\con0|q_reg_u\(1)) # (\con0|q_reg_u\(2) $ (\con0|q_reg_u\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_u\(0),
	datab => \con0|q_reg_u\(2),
	datac => \con0|q_reg_u\(3),
	datad => \con0|q_reg_u\(1),
	combout => \con0|hexa_u|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y48_N6
\mu0|y[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[6]~12_combout\ = (\ver_disp[0]~input_o\ & (((\ver_disp[1]~input_o\) # (!\con0|hexa_u|Mux0~0_combout\)))) # (!\ver_disp[0]~input_o\ & (!\jugador_1|hexa1|Mux0~0_combout\ & (\ver_disp[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|hexa1|Mux0~0_combout\,
	datab => \ver_disp[0]~input_o\,
	datac => \ver_disp[1]~input_o\,
	datad => \con0|hexa_u|Mux0~0_combout\,
	combout => \mu0|y[6]~12_combout\);

-- Location: LCCOMB_X47_Y47_N18
\con1|hexa_u|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_u|Mux0~0_combout\ = (\con1|q_reg_u\(0) & ((\con1|q_reg_u\(3)) # (\con1|q_reg_u\(1) $ (\con1|q_reg_u\(2))))) # (!\con1|q_reg_u\(0) & ((\con1|q_reg_u\(1)) # (\con1|q_reg_u\(2) $ (\con1|q_reg_u\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_u\(0),
	datab => \con1|q_reg_u\(1),
	datac => \con1|q_reg_u\(2),
	datad => \con1|q_reg_u\(3),
	combout => \con1|hexa_u|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y42_N16
\jugador_0|hexa1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa1|Mux0~0_combout\ = (\jugador_0|contador1|q_reg[0]~2_combout\ & ((\jugador_0|bin1|Mux3~2_combout\) # (\jugador_0|bin1|Mux4~2_combout\ $ (\jugador_0|bin1|Mux5~2_combout\)))) # (!\jugador_0|contador1|q_reg[0]~2_combout\ & 
-- ((\jugador_0|bin1|Mux5~2_combout\) # (\jugador_0|bin1|Mux4~2_combout\ $ (\jugador_0|bin1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg[0]~2_combout\,
	datab => \jugador_0|bin1|Mux4~2_combout\,
	datac => \jugador_0|bin1|Mux3~2_combout\,
	datad => \jugador_0|bin1|Mux5~2_combout\,
	combout => \jugador_0|hexa1|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y48_N12
\mu0|y[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu0|y[6]~13_combout\ = (\mu0|y[6]~12_combout\ & (((!\mu2|y[5]~0_combout\)) # (!\con1|hexa_u|Mux0~0_combout\))) # (!\mu0|y[6]~12_combout\ & (((\mu2|y[5]~0_combout\ & !\jugador_0|hexa1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu0|y[6]~12_combout\,
	datab => \con1|hexa_u|Mux0~0_combout\,
	datac => \mu2|y[5]~0_combout\,
	datad => \jugador_0|hexa1|Mux0~0_combout\,
	combout => \mu0|y[6]~13_combout\);

-- Location: LCCOMB_X46_Y46_N20
\con0|hexa_d|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_d|Mux6~0_combout\ = (\con0|q_reg_d\(2) & (!\con0|q_reg_d\(1) & (\con0|q_reg_d\(3) $ (!\con0|q_reg_d\(0))))) # (!\con0|q_reg_d\(2) & (\con0|q_reg_d\(0) & (\con0|q_reg_d\(3) $ (!\con0|q_reg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_d\(2),
	datab => \con0|q_reg_d\(3),
	datac => \con0|q_reg_d\(0),
	datad => \con0|q_reg_d\(1),
	combout => \con0|hexa_d|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y47_N10
\con1|hexa_d|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_d|Mux6~0_combout\ = (\con1|q_reg_d\(3) & (\con1|q_reg_d\(0) & (\con1|q_reg_d\(1) $ (\con1|q_reg_d\(2))))) # (!\con1|q_reg_d\(3) & (!\con1|q_reg_d\(1) & (\con1|q_reg_d\(0) $ (\con1|q_reg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_d\(1),
	datab => \con1|q_reg_d\(0),
	datac => \con1|q_reg_d\(3),
	datad => \con1|q_reg_d\(2),
	combout => \con1|hexa_d|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y47_N8
\mu1|y[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[0]~0_combout\ = (\ver_disp[0]~input_o\ & ((\ver_disp[1]~input_o\ & ((\con1|hexa_d|Mux6~0_combout\))) # (!\ver_disp[1]~input_o\ & (\con0|hexa_d|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \con0|hexa_d|Mux6~0_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \con1|hexa_d|Mux6~0_combout\,
	combout => \mu1|y[0]~0_combout\);

-- Location: LCCOMB_X50_Y47_N20
\jugador_1|bin1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin1|Mux1~0_combout\ = (\jugador_1|contador1|q_reg\(4) & ((\jugador_1|contador1|q_reg\(3) & ((\jugador_1|contador1|q_reg[2]~4_combout\) # (!\jugador_1|contador1|q_reg\(5)))) # (!\jugador_1|contador1|q_reg\(3) & 
-- (\jugador_1|contador1|q_reg[2]~4_combout\ & !\jugador_1|contador1|q_reg\(5))))) # (!\jugador_1|contador1|q_reg\(4) & (!\jugador_1|contador1|q_reg\(3) & ((\jugador_1|contador1|q_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg\(4),
	datab => \jugador_1|contador1|q_reg\(3),
	datac => \jugador_1|contador1|q_reg[2]~4_combout\,
	datad => \jugador_1|contador1|q_reg\(5),
	combout => \jugador_1|bin1|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y39_N10
\jugador_0|bin1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin1|Mux1~0_combout\ = (\jugador_0|contador1|q_reg\(5) & ((\jugador_0|contador1|q_reg\(4) & (\jugador_0|contador1|q_reg[2]~4_combout\ & \jugador_0|contador1|q_reg\(3))) # (!\jugador_0|contador1|q_reg\(4) & ((!\jugador_0|contador1|q_reg\(3)))))) 
-- # (!\jugador_0|contador1|q_reg\(5) & (\jugador_0|contador1|q_reg\(4) & ((\jugador_0|contador1|q_reg[2]~4_combout\) # (\jugador_0|contador1|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg\(5),
	datab => \jugador_0|contador1|q_reg[2]~4_combout\,
	datac => \jugador_0|contador1|q_reg\(4),
	datad => \jugador_0|contador1|q_reg\(3),
	combout => \jugador_0|bin1|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y46_N20
\mu1|y[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[0]~1_combout\ = (!\ver_disp[0]~input_o\ & ((\ver_disp[1]~input_o\ & (!\jugador_1|bin1|Mux1~0_combout\)) # (!\ver_disp[1]~input_o\ & ((!\jugador_0|bin1|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[0]~input_o\,
	datab => \ver_disp[1]~input_o\,
	datac => \jugador_1|bin1|Mux1~0_combout\,
	datad => \jugador_0|bin1|Mux1~0_combout\,
	combout => \mu1|y[0]~1_combout\);

-- Location: LCCOMB_X50_Y47_N26
\mu1|y[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[5]~3_combout\ = ((!\jugador_1|contador1|q_reg\(4) & !\jugador_1|contador1|q_reg\(3))) # (!\jugador_1|contador1|q_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg\(4),
	datac => \jugador_1|contador1|q_reg\(3),
	datad => \jugador_1|contador1|q_reg\(5),
	combout => \mu1|y[5]~3_combout\);

-- Location: LCCOMB_X49_Y39_N26
\jugador_0|hexa2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa2|Mux4~0_combout\ = ((!\jugador_0|contador1|q_reg\(4) & !\jugador_0|contador1|q_reg\(3))) # (!\jugador_0|contador1|q_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg\(4),
	datac => \jugador_0|contador1|q_reg\(5),
	datad => \jugador_0|contador1|q_reg\(3),
	combout => \jugador_0|hexa2|Mux4~0_combout\);

-- Location: LCCOMB_X50_Y47_N16
\mu1|y[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[5]~4_combout\ = (\ver_disp[1]~input_o\ & (\mu1|y[5]~3_combout\)) # (!\ver_disp[1]~input_o\ & ((\jugador_0|hexa2|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datac => \mu1|y[5]~3_combout\,
	datad => \jugador_0|hexa2|Mux4~0_combout\,
	combout => \mu1|y[5]~4_combout\);

-- Location: LCCOMB_X49_Y39_N30
\jugador_0|bin1|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin1|Mux2~1_combout\ = (\jugador_0|contador1|q_reg\(4) & ((\jugador_0|contador1|q_reg\(3) & (\jugador_0|contador1|q_reg[2]~4_combout\)) # (!\jugador_0|contador1|q_reg\(3) & (!\jugador_0|contador1|q_reg[2]~4_combout\ & 
-- !\jugador_0|contador1|q_reg\(1))))) # (!\jugador_0|contador1|q_reg\(4) & (\jugador_0|contador1|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg\(4),
	datab => \jugador_0|contador1|q_reg\(3),
	datac => \jugador_0|contador1|q_reg[2]~4_combout\,
	datad => \jugador_0|contador1|q_reg\(1),
	combout => \jugador_0|bin1|Mux2~1_combout\);

-- Location: LCCOMB_X49_Y39_N20
\jugador_0|bin1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin1|Mux2~0_combout\ = (\jugador_0|contador1|q_reg\(4) & ((\jugador_0|contador1|q_reg\(3) & (\jugador_0|contador1|q_reg[2]~4_combout\ & \jugador_0|contador1|q_reg\(1))) # (!\jugador_0|contador1|q_reg\(3) & 
-- (!\jugador_0|contador1|q_reg[2]~4_combout\)))) # (!\jugador_0|contador1|q_reg\(4) & (\jugador_0|contador1|q_reg\(3) & ((\jugador_0|contador1|q_reg[2]~4_combout\) # (\jugador_0|contador1|q_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador1|q_reg\(4),
	datab => \jugador_0|contador1|q_reg\(3),
	datac => \jugador_0|contador1|q_reg[2]~4_combout\,
	datad => \jugador_0|contador1|q_reg\(1),
	combout => \jugador_0|bin1|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y39_N4
\jugador_0|bin1|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin1|Mux2~2_combout\ = (\jugador_0|contador1|q_reg\(5) & (!\jugador_0|bin1|Mux2~1_combout\)) # (!\jugador_0|contador1|q_reg\(5) & ((\jugador_0|bin1|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin1|Mux2~1_combout\,
	datab => \jugador_0|bin1|Mux2~0_combout\,
	datac => \jugador_0|contador1|q_reg\(5),
	combout => \jugador_0|bin1|Mux2~2_combout\);

-- Location: LCCOMB_X50_Y47_N14
\jugador_1|bin1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin1|Mux2~0_combout\ = (\jugador_1|contador1|q_reg[2]~4_combout\ & (\jugador_1|contador1|q_reg\(3) & ((\jugador_1|contador1|q_reg\(1)) # (!\jugador_1|contador1|q_reg\(4))))) # (!\jugador_1|contador1|q_reg[2]~4_combout\ & 
-- ((\jugador_1|contador1|q_reg\(3) & (\jugador_1|contador1|q_reg\(1) & !\jugador_1|contador1|q_reg\(4))) # (!\jugador_1|contador1|q_reg\(3) & ((\jugador_1|contador1|q_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[2]~4_combout\,
	datab => \jugador_1|contador1|q_reg\(3),
	datac => \jugador_1|contador1|q_reg\(1),
	datad => \jugador_1|contador1|q_reg\(4),
	combout => \jugador_1|bin1|Mux2~0_combout\);

-- Location: LCCOMB_X50_Y47_N8
\jugador_1|bin1|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin1|Mux2~1_combout\ = (\jugador_1|contador1|q_reg[2]~4_combout\ & (\jugador_1|contador1|q_reg\(3))) # (!\jugador_1|contador1|q_reg[2]~4_combout\ & ((\jugador_1|contador1|q_reg\(3) & ((!\jugador_1|contador1|q_reg\(4)))) # 
-- (!\jugador_1|contador1|q_reg\(3) & (!\jugador_1|contador1|q_reg\(1) & \jugador_1|contador1|q_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador1|q_reg[2]~4_combout\,
	datab => \jugador_1|contador1|q_reg\(3),
	datac => \jugador_1|contador1|q_reg\(1),
	datad => \jugador_1|contador1|q_reg\(4),
	combout => \jugador_1|bin1|Mux2~1_combout\);

-- Location: LCCOMB_X50_Y47_N2
\jugador_1|bin1|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin1|Mux2~2_combout\ = (\jugador_1|contador1|q_reg\(5) & ((!\jugador_1|bin1|Mux2~1_combout\))) # (!\jugador_1|contador1|q_reg\(5) & (\jugador_1|bin1|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|bin1|Mux2~0_combout\,
	datac => \jugador_1|bin1|Mux2~1_combout\,
	datad => \jugador_1|contador1|q_reg\(5),
	combout => \jugador_1|bin1|Mux2~2_combout\);

-- Location: LCCOMB_X50_Y47_N12
\mu1|y[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[5]~2_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|bin1|Mux2~2_combout\))) # (!\ver_disp[1]~input_o\ & (\jugador_0|bin1|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin1|Mux2~2_combout\,
	datab => \jugador_1|bin1|Mux2~2_combout\,
	datad => \ver_disp[1]~input_o\,
	combout => \mu1|y[5]~2_combout\);

-- Location: LCCOMB_X50_Y46_N6
\mu1|y[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[0]~5_combout\ = (\mu1|y[0]~0_combout\) # ((\mu1|y[0]~1_combout\ & (\mu1|y[5]~4_combout\ $ (!\mu1|y[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu1|y[0]~0_combout\,
	datab => \mu1|y[0]~1_combout\,
	datac => \mu1|y[5]~4_combout\,
	datad => \mu1|y[5]~2_combout\,
	combout => \mu1|y[0]~5_combout\);

-- Location: LCCOMB_X46_Y46_N28
\con0|hexa_d|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_d|Mux5~0_combout\ = (\con0|q_reg_d\(3) & ((\con0|q_reg_d\(0) & ((\con0|q_reg_d\(1)))) # (!\con0|q_reg_d\(0) & (\con0|q_reg_d\(2))))) # (!\con0|q_reg_d\(3) & (\con0|q_reg_d\(2) & (\con0|q_reg_d\(0) $ (\con0|q_reg_d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_d\(0),
	datab => \con0|q_reg_d\(3),
	datac => \con0|q_reg_d\(2),
	datad => \con0|q_reg_d\(1),
	combout => \con0|hexa_d|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y47_N30
\con1|hexa_d|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_d|Mux5~0_combout\ = (\con1|q_reg_d\(1) & ((\con1|q_reg_d\(0) & (\con1|q_reg_d\(3))) # (!\con1|q_reg_d\(0) & ((\con1|q_reg_d\(2)))))) # (!\con1|q_reg_d\(1) & (\con1|q_reg_d\(2) & (\con1|q_reg_d\(0) $ (\con1|q_reg_d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_d\(1),
	datab => \con1|q_reg_d\(0),
	datac => \con1|q_reg_d\(3),
	datad => \con1|q_reg_d\(2),
	combout => \con1|hexa_d|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y46_N12
\mu1|y[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[1]~6_combout\ = (\ver_disp[0]~input_o\ & ((\ver_disp[1]~input_o\ & ((\con1|hexa_d|Mux5~0_combout\))) # (!\ver_disp[1]~input_o\ & (\con0|hexa_d|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[0]~input_o\,
	datab => \con0|hexa_d|Mux5~0_combout\,
	datac => \ver_disp[1]~input_o\,
	datad => \con1|hexa_d|Mux5~0_combout\,
	combout => \mu1|y[1]~6_combout\);

-- Location: LCCOMB_X50_Y46_N2
\mu1|y[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[5]~7_combout\ = (\ver_disp[1]~input_o\ & (\jugador_1|bin1|Mux1~0_combout\)) # (!\ver_disp[1]~input_o\ & ((\jugador_0|bin1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin1|Mux1~0_combout\,
	datab => \ver_disp[1]~input_o\,
	datac => \jugador_0|bin1|Mux1~0_combout\,
	combout => \mu1|y[5]~7_combout\);

-- Location: LCCOMB_X50_Y46_N16
\mu1|y[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[1]~8_combout\ = (!\ver_disp[0]~input_o\ & (!\mu1|y[5]~4_combout\ & (\mu1|y[5]~7_combout\ $ (\mu1|y[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[0]~input_o\,
	datab => \mu1|y[5]~7_combout\,
	datac => \mu1|y[5]~4_combout\,
	datad => \mu1|y[5]~2_combout\,
	combout => \mu1|y[1]~8_combout\);

-- Location: LCCOMB_X50_Y46_N26
\mu1|y[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[1]~9_combout\ = (\mu1|y[1]~6_combout\) # (\mu1|y[1]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu1|y[1]~6_combout\,
	datad => \mu1|y[1]~8_combout\,
	combout => \mu1|y[1]~9_combout\);

-- Location: LCCOMB_X49_Y47_N20
\con1|hexa_d|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_d|Mux4~0_combout\ = (\con1|q_reg_d\(3) & (\con1|q_reg_d\(2) & ((\con1|q_reg_d\(1)) # (!\con1|q_reg_d\(0))))) # (!\con1|q_reg_d\(3) & (\con1|q_reg_d\(1) & (!\con1|q_reg_d\(0) & !\con1|q_reg_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_d\(1),
	datab => \con1|q_reg_d\(0),
	datac => \con1|q_reg_d\(3),
	datad => \con1|q_reg_d\(2),
	combout => \con1|hexa_d|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y39_N16
\jugador_0|hexa2|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa2|Mux4~1_combout\ = (!\jugador_0|bin1|Mux2~2_combout\ & (\jugador_0|hexa2|Mux4~0_combout\ & \jugador_0|bin1|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|bin1|Mux2~2_combout\,
	datac => \jugador_0|hexa2|Mux4~0_combout\,
	datad => \jugador_0|bin1|Mux1~0_combout\,
	combout => \jugador_0|hexa2|Mux4~1_combout\);

-- Location: LCCOMB_X47_Y46_N0
\con0|hexa_d|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_d|Mux4~0_combout\ = (\con0|q_reg_d\(3) & (\con0|q_reg_d\(2) & ((\con0|q_reg_d\(1)) # (!\con0|q_reg_d\(0))))) # (!\con0|q_reg_d\(3) & (!\con0|q_reg_d\(0) & (\con0|q_reg_d\(1) & !\con0|q_reg_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_d\(0),
	datab => \con0|q_reg_d\(1),
	datac => \con0|q_reg_d\(3),
	datad => \con0|q_reg_d\(2),
	combout => \con0|hexa_d|Mux4~0_combout\);

-- Location: LCCOMB_X50_Y47_N10
\jugador_1|hexa2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa2|Mux4~0_combout\ = (\jugador_1|bin1|Mux1~0_combout\ & (\mu1|y[5]~3_combout\ & !\jugador_1|bin1|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|bin1|Mux1~0_combout\,
	datac => \mu1|y[5]~3_combout\,
	datad => \jugador_1|bin1|Mux2~2_combout\,
	combout => \jugador_1|hexa2|Mux4~0_combout\);

-- Location: LCCOMB_X50_Y47_N24
\mu1|y[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[2]~10_combout\ = (\ver_disp[1]~input_o\ & (((\ver_disp[0]~input_o\) # (\jugador_1|hexa2|Mux4~0_combout\)))) # (!\ver_disp[1]~input_o\ & (\con0|hexa_d|Mux4~0_combout\ & (\ver_disp[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \con0|hexa_d|Mux4~0_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \jugador_1|hexa2|Mux4~0_combout\,
	combout => \mu1|y[2]~10_combout\);

-- Location: LCCOMB_X50_Y47_N22
\mu1|y[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[2]~11_combout\ = (\mu2|y[5]~0_combout\ & ((\mu1|y[2]~10_combout\ & (\con1|hexa_d|Mux4~0_combout\)) # (!\mu1|y[2]~10_combout\ & ((\jugador_0|hexa2|Mux4~1_combout\))))) # (!\mu2|y[5]~0_combout\ & (((\mu1|y[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu2|y[5]~0_combout\,
	datab => \con1|hexa_d|Mux4~0_combout\,
	datac => \jugador_0|hexa2|Mux4~1_combout\,
	datad => \mu1|y[2]~10_combout\,
	combout => \mu1|y[2]~11_combout\);

-- Location: LCCOMB_X50_Y46_N14
\mu1|y[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[3]~13_combout\ = (!\ver_disp[0]~input_o\ & ((\mu1|y[5]~7_combout\ & (!\mu1|y[5]~4_combout\ & \mu1|y[5]~2_combout\)) # (!\mu1|y[5]~7_combout\ & (\mu1|y[5]~4_combout\ $ (!\mu1|y[5]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[0]~input_o\,
	datab => \mu1|y[5]~7_combout\,
	datac => \mu1|y[5]~4_combout\,
	datad => \mu1|y[5]~2_combout\,
	combout => \mu1|y[3]~13_combout\);

-- Location: LCCOMB_X46_Y46_N16
\con0|hexa_d|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_d|Mux3~0_combout\ = (\con0|q_reg_d\(1) & ((\con0|q_reg_d\(0) & ((\con0|q_reg_d\(2)))) # (!\con0|q_reg_d\(0) & (\con0|q_reg_d\(3) & !\con0|q_reg_d\(2))))) # (!\con0|q_reg_d\(1) & (!\con0|q_reg_d\(3) & (\con0|q_reg_d\(0) $ (\con0|q_reg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_d\(0),
	datab => \con0|q_reg_d\(3),
	datac => \con0|q_reg_d\(2),
	datad => \con0|q_reg_d\(1),
	combout => \con0|hexa_d|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y47_N6
\con1|hexa_d|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_d|Mux3~0_combout\ = (\con1|q_reg_d\(1) & ((\con1|q_reg_d\(0) & ((\con1|q_reg_d\(2)))) # (!\con1|q_reg_d\(0) & (\con1|q_reg_d\(3) & !\con1|q_reg_d\(2))))) # (!\con1|q_reg_d\(1) & (!\con1|q_reg_d\(3) & (\con1|q_reg_d\(0) $ (\con1|q_reg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_d\(1),
	datab => \con1|q_reg_d\(0),
	datac => \con1|q_reg_d\(3),
	datad => \con1|q_reg_d\(2),
	combout => \con1|hexa_d|Mux3~0_combout\);

-- Location: LCCOMB_X50_Y46_N28
\mu1|y[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[3]~12_combout\ = (\ver_disp[0]~input_o\ & ((\ver_disp[1]~input_o\ & ((\con1|hexa_d|Mux3~0_combout\))) # (!\ver_disp[1]~input_o\ & (\con0|hexa_d|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[0]~input_o\,
	datab => \con0|hexa_d|Mux3~0_combout\,
	datac => \ver_disp[1]~input_o\,
	datad => \con1|hexa_d|Mux3~0_combout\,
	combout => \mu1|y[3]~12_combout\);

-- Location: LCCOMB_X50_Y46_N4
\mu1|y[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[3]~14_combout\ = (\mu1|y[3]~13_combout\) # (\mu1|y[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mu1|y[3]~13_combout\,
	datad => \mu1|y[3]~12_combout\,
	combout => \mu1|y[3]~14_combout\);

-- Location: LCCOMB_X50_Y46_N10
\mu1|y[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[4]~16_combout\ = (!\mu1|y[5]~4_combout\ & ((\ver_disp[1]~input_o\ & (!\jugador_1|bin1|Mux1~0_combout\)) # (!\ver_disp[1]~input_o\ & ((!\jugador_0|bin1|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin1|Mux1~0_combout\,
	datab => \ver_disp[1]~input_o\,
	datac => \mu1|y[5]~4_combout\,
	datad => \jugador_0|bin1|Mux1~0_combout\,
	combout => \mu1|y[4]~16_combout\);

-- Location: LCCOMB_X49_Y47_N28
\con1|hexa_d|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_d|Mux2~0_combout\ = (\con1|q_reg_d\(1) & (\con1|q_reg_d\(0) & (!\con1|q_reg_d\(3)))) # (!\con1|q_reg_d\(1) & ((\con1|q_reg_d\(2) & ((!\con1|q_reg_d\(3)))) # (!\con1|q_reg_d\(2) & (\con1|q_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_d\(1),
	datab => \con1|q_reg_d\(0),
	datac => \con1|q_reg_d\(3),
	datad => \con1|q_reg_d\(2),
	combout => \con1|hexa_d|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y46_N24
\con0|hexa_d|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_d|Mux2~0_combout\ = (\con0|q_reg_d\(1) & (\con0|q_reg_d\(0) & ((!\con0|q_reg_d\(3))))) # (!\con0|q_reg_d\(1) & ((\con0|q_reg_d\(2) & ((!\con0|q_reg_d\(3)))) # (!\con0|q_reg_d\(2) & (\con0|q_reg_d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_d\(0),
	datab => \con0|q_reg_d\(2),
	datac => \con0|q_reg_d\(1),
	datad => \con0|q_reg_d\(3),
	combout => \con0|hexa_d|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y47_N18
\mu1|y[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[4]~15_combout\ = (\ver_disp[0]~input_o\ & ((\ver_disp[1]~input_o\ & (\con1|hexa_d|Mux2~0_combout\)) # (!\ver_disp[1]~input_o\ & ((\con0|hexa_d|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \con1|hexa_d|Mux2~0_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \con0|hexa_d|Mux2~0_combout\,
	combout => \mu1|y[4]~15_combout\);

-- Location: LCCOMB_X50_Y46_N24
\mu1|y[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[4]~17_combout\ = (\mu1|y[4]~15_combout\) # ((!\ver_disp[0]~input_o\ & ((\mu1|y[4]~16_combout\) # (\mu1|y[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu1|y[4]~16_combout\,
	datab => \mu1|y[4]~15_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \mu1|y[5]~2_combout\,
	combout => \mu1|y[4]~17_combout\);

-- Location: LCCOMB_X46_Y46_N0
\con0|hexa_d|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_d|Mux1~0_combout\ = (\con0|q_reg_d\(0) & (\con0|q_reg_d\(3) $ (((\con0|q_reg_d\(1)) # (!\con0|q_reg_d\(2)))))) # (!\con0|q_reg_d\(0) & (!\con0|q_reg_d\(3) & (!\con0|q_reg_d\(2) & \con0|q_reg_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_d\(0),
	datab => \con0|q_reg_d\(3),
	datac => \con0|q_reg_d\(2),
	datad => \con0|q_reg_d\(1),
	combout => \con0|hexa_d|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y47_N12
\con1|hexa_d|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_d|Mux1~0_combout\ = (\con1|q_reg_d\(1) & (!\con1|q_reg_d\(3) & ((\con1|q_reg_d\(0)) # (!\con1|q_reg_d\(2))))) # (!\con1|q_reg_d\(1) & (\con1|q_reg_d\(0) & (\con1|q_reg_d\(3) $ (!\con1|q_reg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_d\(1),
	datab => \con1|q_reg_d\(0),
	datac => \con1|q_reg_d\(3),
	datad => \con1|q_reg_d\(2),
	combout => \con1|hexa_d|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y47_N22
\mu1|y[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[5]~18_combout\ = (\ver_disp[0]~input_o\ & ((\ver_disp[1]~input_o\ & ((\con1|hexa_d|Mux1~0_combout\))) # (!\ver_disp[1]~input_o\ & (\con0|hexa_d|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \con0|hexa_d|Mux1~0_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \con1|hexa_d|Mux1~0_combout\,
	combout => \mu1|y[5]~18_combout\);

-- Location: LCCOMB_X50_Y46_N30
\mu1|y[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[5]~19_combout\ = (!\ver_disp[0]~input_o\ & ((\mu1|y[5]~7_combout\ & ((\mu1|y[5]~4_combout\) # (\mu1|y[5]~2_combout\))) # (!\mu1|y[5]~7_combout\ & (\mu1|y[5]~4_combout\ & \mu1|y[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[0]~input_o\,
	datab => \mu1|y[5]~7_combout\,
	datac => \mu1|y[5]~4_combout\,
	datad => \mu1|y[5]~2_combout\,
	combout => \mu1|y[5]~19_combout\);

-- Location: LCCOMB_X49_Y47_N4
\mu1|y[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[5]~20_combout\ = (\mu1|y[5]~18_combout\) # (\mu1|y[5]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mu1|y[5]~18_combout\,
	datad => \mu1|y[5]~19_combout\,
	combout => \mu1|y[5]~20_combout\);

-- Location: LCCOMB_X50_Y46_N8
\mu1|y[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[6]~22_combout\ = (!\ver_disp[0]~input_o\ & ((\mu1|y[5]~7_combout\ & (!\mu1|y[5]~4_combout\ & \mu1|y[5]~2_combout\)) # (!\mu1|y[5]~7_combout\ & (\mu1|y[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[0]~input_o\,
	datab => \mu1|y[5]~7_combout\,
	datac => \mu1|y[5]~4_combout\,
	datad => \mu1|y[5]~2_combout\,
	combout => \mu1|y[6]~22_combout\);

-- Location: LCCOMB_X49_Y47_N2
\con1|hexa_d|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_d|Mux0~0_combout\ = (\con1|q_reg_d\(0) & ((\con1|q_reg_d\(3)) # (\con1|q_reg_d\(1) $ (\con1|q_reg_d\(2))))) # (!\con1|q_reg_d\(0) & ((\con1|q_reg_d\(1)) # (\con1|q_reg_d\(3) $ (\con1|q_reg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_d\(1),
	datab => \con1|q_reg_d\(0),
	datac => \con1|q_reg_d\(3),
	datad => \con1|q_reg_d\(2),
	combout => \con1|hexa_d|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y46_N0
\con0|hexa_d|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_d|Mux0~0_combout\ = (\con0|q_reg_d\(0) & ((\con0|q_reg_d\(3)) # (\con0|q_reg_d\(1) $ (\con0|q_reg_d\(2))))) # (!\con0|q_reg_d\(0) & ((\con0|q_reg_d\(1)) # (\con0|q_reg_d\(3) $ (\con0|q_reg_d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_d\(1),
	datab => \con0|q_reg_d\(3),
	datac => \con0|q_reg_d\(2),
	datad => \con0|q_reg_d\(0),
	combout => \con0|hexa_d|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y46_N18
\mu1|y[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[6]~21_combout\ = (\ver_disp[0]~input_o\ & ((\ver_disp[1]~input_o\ & (!\con1|hexa_d|Mux0~0_combout\)) # (!\ver_disp[1]~input_o\ & ((!\con0|hexa_d|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[0]~input_o\,
	datab => \con1|hexa_d|Mux0~0_combout\,
	datac => \ver_disp[1]~input_o\,
	datad => \con0|hexa_d|Mux0~0_combout\,
	combout => \mu1|y[6]~21_combout\);

-- Location: LCCOMB_X50_Y46_N22
\mu1|y[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu1|y[6]~23_combout\ = (\mu1|y[6]~22_combout\) # (\mu1|y[6]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mu1|y[6]~22_combout\,
	datad => \mu1|y[6]~21_combout\,
	combout => \mu1|y[6]~23_combout\);

-- Location: LCCOMB_X45_Y44_N28
\con1|hexa_c|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_c|Mux6~0_combout\ = (\con1|q_reg_c\(3) & (\con1|q_reg_c\(0) & (\con1|q_reg_c\(1) $ (\con1|q_reg_c\(2))))) # (!\con1|q_reg_c\(3) & (!\con1|q_reg_c\(1) & (\con1|q_reg_c\(0) $ (\con1|q_reg_c\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_c\(3),
	datab => \con1|q_reg_c\(1),
	datac => \con1|q_reg_c\(0),
	datad => \con1|q_reg_c\(2),
	combout => \con1|hexa_c|Mux6~0_combout\);

-- Location: LCCOMB_X56_Y42_N4
\jugador_0|bin2|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux4~1_combout\ = (\jugador_0|contador2|q_reg\(1) & ((\jugador_0|contador2|q_reg[2]~6_combout\ & ((\jugador_0|contador2|q_reg[3]~10_combout\) # (!\jugador_0|contador2|q_reg\(5)))) # (!\jugador_0|contador2|q_reg[2]~6_combout\ & 
-- ((\jugador_0|contador2|q_reg\(5)) # (!\jugador_0|contador2|q_reg[3]~10_combout\))))) # (!\jugador_0|contador2|q_reg\(1) & ((\jugador_0|contador2|q_reg[2]~6_combout\) # ((\jugador_0|contador2|q_reg\(5) & !\jugador_0|contador2|q_reg[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg\(1),
	datab => \jugador_0|contador2|q_reg[2]~6_combout\,
	datac => \jugador_0|contador2|q_reg\(5),
	datad => \jugador_0|contador2|q_reg[3]~10_combout\,
	combout => \jugador_0|bin2|Mux4~1_combout\);

-- Location: LCCOMB_X56_Y42_N2
\jugador_0|bin2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux4~0_combout\ = (\jugador_0|contador2|q_reg\(1) & (\jugador_0|contador2|q_reg[2]~6_combout\ $ (((\jugador_0|contador2|q_reg\(5) & !\jugador_0|contador2|q_reg[3]~10_combout\))))) # (!\jugador_0|contador2|q_reg\(1) & 
-- (\jugador_0|contador2|q_reg[2]~6_combout\ & ((\jugador_0|contador2|q_reg\(5)) # (!\jugador_0|contador2|q_reg[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg\(1),
	datab => \jugador_0|contador2|q_reg[2]~6_combout\,
	datac => \jugador_0|contador2|q_reg\(5),
	datad => \jugador_0|contador2|q_reg[3]~10_combout\,
	combout => \jugador_0|bin2|Mux4~0_combout\);

-- Location: LCCOMB_X56_Y42_N6
\jugador_0|bin2|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux4~2_combout\ = (\jugador_0|contador2|q_reg[4]~12_combout\ & (!\jugador_0|bin2|Mux4~1_combout\)) # (!\jugador_0|contador2|q_reg[4]~12_combout\ & ((\jugador_0|bin2|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[4]~12_combout\,
	datac => \jugador_0|bin2|Mux4~1_combout\,
	datad => \jugador_0|bin2|Mux4~0_combout\,
	combout => \jugador_0|bin2|Mux4~2_combout\);

-- Location: LCCOMB_X56_Y42_N14
\jugador_0|bin2|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux3~1_combout\ = (\jugador_0|contador2|q_reg\(1) & (\jugador_0|contador2|q_reg[2]~6_combout\ & (\jugador_0|contador2|q_reg\(5) & !\jugador_0|contador2|q_reg[3]~10_combout\))) # (!\jugador_0|contador2|q_reg\(1) & 
-- (!\jugador_0|contador2|q_reg[2]~6_combout\ & (!\jugador_0|contador2|q_reg\(5) & \jugador_0|contador2|q_reg[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg\(1),
	datab => \jugador_0|contador2|q_reg[2]~6_combout\,
	datac => \jugador_0|contador2|q_reg\(5),
	datad => \jugador_0|contador2|q_reg[3]~10_combout\,
	combout => \jugador_0|bin2|Mux3~1_combout\);

-- Location: LCCOMB_X56_Y42_N24
\jugador_0|bin2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux3~0_combout\ = (\jugador_0|contador2|q_reg\(1) & (!\jugador_0|contador2|q_reg[2]~6_combout\ & (\jugador_0|contador2|q_reg\(5) $ (!\jugador_0|contador2|q_reg[3]~10_combout\)))) # (!\jugador_0|contador2|q_reg\(1) & 
-- ((\jugador_0|contador2|q_reg[2]~6_combout\ & (!\jugador_0|contador2|q_reg\(5) & \jugador_0|contador2|q_reg[3]~10_combout\)) # (!\jugador_0|contador2|q_reg[2]~6_combout\ & (\jugador_0|contador2|q_reg\(5) & !\jugador_0|contador2|q_reg[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg\(1),
	datab => \jugador_0|contador2|q_reg[2]~6_combout\,
	datac => \jugador_0|contador2|q_reg\(5),
	datad => \jugador_0|contador2|q_reg[3]~10_combout\,
	combout => \jugador_0|bin2|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y42_N8
\jugador_0|bin2|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux3~2_combout\ = (\jugador_0|contador2|q_reg[4]~12_combout\ & ((\jugador_0|bin2|Mux3~0_combout\))) # (!\jugador_0|contador2|q_reg[4]~12_combout\ & (\jugador_0|bin2|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[4]~12_combout\,
	datac => \jugador_0|bin2|Mux3~1_combout\,
	datad => \jugador_0|bin2|Mux3~0_combout\,
	combout => \jugador_0|bin2|Mux3~2_combout\);

-- Location: LCCOMB_X56_Y42_N22
\jugador_0|bin2|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux5~1_combout\ = (\jugador_0|contador2|q_reg\(1) & (((!\jugador_0|contador2|q_reg[2]~6_combout\ & \jugador_0|contador2|q_reg[4]~12_combout\)) # (!\jugador_0|contador2|q_reg[3]~10_combout\))) # (!\jugador_0|contador2|q_reg\(1) & 
-- (\jugador_0|contador2|q_reg[3]~10_combout\ $ (((!\jugador_0|contador2|q_reg[2]~6_combout\ & \jugador_0|contador2|q_reg[4]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg\(1),
	datab => \jugador_0|contador2|q_reg[2]~6_combout\,
	datac => \jugador_0|contador2|q_reg[4]~12_combout\,
	datad => \jugador_0|contador2|q_reg[3]~10_combout\,
	combout => \jugador_0|bin2|Mux5~1_combout\);

-- Location: LCCOMB_X56_Y42_N12
\jugador_0|bin2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux5~0_combout\ = (\jugador_0|contador2|q_reg\(1) & (\jugador_0|contador2|q_reg[3]~10_combout\ $ (((\jugador_0|contador2|q_reg[2]~6_combout\) # (!\jugador_0|contador2|q_reg[4]~12_combout\))))) # (!\jugador_0|contador2|q_reg\(1) & 
-- ((\jugador_0|contador2|q_reg[2]~6_combout\ & (!\jugador_0|contador2|q_reg[4]~12_combout\ & \jugador_0|contador2|q_reg[3]~10_combout\)) # (!\jugador_0|contador2|q_reg[2]~6_combout\ & (\jugador_0|contador2|q_reg[4]~12_combout\ & 
-- !\jugador_0|contador2|q_reg[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg\(1),
	datab => \jugador_0|contador2|q_reg[2]~6_combout\,
	datac => \jugador_0|contador2|q_reg[4]~12_combout\,
	datad => \jugador_0|contador2|q_reg[3]~10_combout\,
	combout => \jugador_0|bin2|Mux5~0_combout\);

-- Location: LCCOMB_X56_Y42_N0
\jugador_0|bin2|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux5~2_combout\ = (\jugador_0|contador2|q_reg\(5) & (!\jugador_0|bin2|Mux5~1_combout\)) # (!\jugador_0|contador2|q_reg\(5) & ((\jugador_0|bin2|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg\(5),
	datac => \jugador_0|bin2|Mux5~1_combout\,
	datad => \jugador_0|bin2|Mux5~0_combout\,
	combout => \jugador_0|bin2|Mux5~2_combout\);

-- Location: LCCOMB_X49_Y43_N24
\jugador_0|hexa3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa3|Mux6~0_combout\ = (\jugador_0|bin2|Mux4~2_combout\ & (!\jugador_0|bin2|Mux5~2_combout\ & (\jugador_0|bin2|Mux3~2_combout\ $ (!\jugador_0|contador2|q_reg[0]~2_combout\)))) # (!\jugador_0|bin2|Mux4~2_combout\ & 
-- (\jugador_0|contador2|q_reg[0]~2_combout\ & (\jugador_0|bin2|Mux3~2_combout\ $ (!\jugador_0|bin2|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin2|Mux4~2_combout\,
	datab => \jugador_0|bin2|Mux3~2_combout\,
	datac => \jugador_0|contador2|q_reg[0]~2_combout\,
	datad => \jugador_0|bin2|Mux5~2_combout\,
	combout => \jugador_0|hexa3|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y45_N26
\jugador_1|bin2|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux3~1_combout\ = (\jugador_1|contador2|q_reg\(1) & (!\jugador_1|contador2|q_reg[3]~10_combout\ & (\jugador_1|contador2|q_reg\(5) & \jugador_1|contador2|q_reg[2]~6_combout\))) # (!\jugador_1|contador2|q_reg\(1) & 
-- (\jugador_1|contador2|q_reg[3]~10_combout\ & (!\jugador_1|contador2|q_reg\(5) & !\jugador_1|contador2|q_reg[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg\(1),
	datab => \jugador_1|contador2|q_reg[3]~10_combout\,
	datac => \jugador_1|contador2|q_reg\(5),
	datad => \jugador_1|contador2|q_reg[2]~6_combout\,
	combout => \jugador_1|bin2|Mux3~1_combout\);

-- Location: LCCOMB_X49_Y45_N16
\jugador_1|bin2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux3~0_combout\ = (\jugador_1|contador2|q_reg\(1) & (!\jugador_1|contador2|q_reg[2]~6_combout\ & (\jugador_1|contador2|q_reg[3]~10_combout\ $ (!\jugador_1|contador2|q_reg\(5))))) # (!\jugador_1|contador2|q_reg\(1) & 
-- ((\jugador_1|contador2|q_reg[3]~10_combout\ & (!\jugador_1|contador2|q_reg\(5) & \jugador_1|contador2|q_reg[2]~6_combout\)) # (!\jugador_1|contador2|q_reg[3]~10_combout\ & (\jugador_1|contador2|q_reg\(5) & !\jugador_1|contador2|q_reg[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg\(1),
	datab => \jugador_1|contador2|q_reg[3]~10_combout\,
	datac => \jugador_1|contador2|q_reg\(5),
	datad => \jugador_1|contador2|q_reg[2]~6_combout\,
	combout => \jugador_1|bin2|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y45_N24
\jugador_1|bin2|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux3~2_combout\ = (\jugador_1|contador2|q_reg[4]~12_combout\ & ((\jugador_1|bin2|Mux3~0_combout\))) # (!\jugador_1|contador2|q_reg[4]~12_combout\ & (\jugador_1|bin2|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[4]~12_combout\,
	datac => \jugador_1|bin2|Mux3~1_combout\,
	datad => \jugador_1|bin2|Mux3~0_combout\,
	combout => \jugador_1|bin2|Mux3~2_combout\);

-- Location: LCCOMB_X49_Y45_N4
\jugador_1|bin2|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux4~1_combout\ = (\jugador_1|contador2|q_reg\(1) & ((\jugador_1|contador2|q_reg[3]~10_combout\ & ((\jugador_1|contador2|q_reg\(5)) # (\jugador_1|contador2|q_reg[2]~6_combout\))) # (!\jugador_1|contador2|q_reg[3]~10_combout\ & 
-- ((!\jugador_1|contador2|q_reg[2]~6_combout\) # (!\jugador_1|contador2|q_reg\(5)))))) # (!\jugador_1|contador2|q_reg\(1) & ((\jugador_1|contador2|q_reg[2]~6_combout\) # ((!\jugador_1|contador2|q_reg[3]~10_combout\ & \jugador_1|contador2|q_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg\(1),
	datab => \jugador_1|contador2|q_reg[3]~10_combout\,
	datac => \jugador_1|contador2|q_reg\(5),
	datad => \jugador_1|contador2|q_reg[2]~6_combout\,
	combout => \jugador_1|bin2|Mux4~1_combout\);

-- Location: LCCOMB_X49_Y45_N18
\jugador_1|bin2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux4~0_combout\ = (\jugador_1|contador2|q_reg\(1) & (\jugador_1|contador2|q_reg[2]~6_combout\ $ (((!\jugador_1|contador2|q_reg[3]~10_combout\ & \jugador_1|contador2|q_reg\(5)))))) # (!\jugador_1|contador2|q_reg\(1) & 
-- (\jugador_1|contador2|q_reg[2]~6_combout\ & ((\jugador_1|contador2|q_reg\(5)) # (!\jugador_1|contador2|q_reg[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg\(1),
	datab => \jugador_1|contador2|q_reg[3]~10_combout\,
	datac => \jugador_1|contador2|q_reg\(5),
	datad => \jugador_1|contador2|q_reg[2]~6_combout\,
	combout => \jugador_1|bin2|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y45_N22
\jugador_1|bin2|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux4~2_combout\ = (\jugador_1|contador2|q_reg[4]~12_combout\ & (!\jugador_1|bin2|Mux4~1_combout\)) # (!\jugador_1|contador2|q_reg[4]~12_combout\ & ((\jugador_1|bin2|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[4]~12_combout\,
	datac => \jugador_1|bin2|Mux4~1_combout\,
	datad => \jugador_1|bin2|Mux4~0_combout\,
	combout => \jugador_1|bin2|Mux4~2_combout\);

-- Location: LCCOMB_X49_Y45_N20
\jugador_1|bin2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux5~0_combout\ = (\jugador_1|contador2|q_reg[3]~10_combout\ & ((\jugador_1|contador2|q_reg[2]~6_combout\ & (!\jugador_1|contador2|q_reg[4]~12_combout\ & !\jugador_1|contador2|q_reg\(1))) # (!\jugador_1|contador2|q_reg[2]~6_combout\ & 
-- (\jugador_1|contador2|q_reg[4]~12_combout\ & \jugador_1|contador2|q_reg\(1))))) # (!\jugador_1|contador2|q_reg[3]~10_combout\ & (\jugador_1|contador2|q_reg\(1) $ (((!\jugador_1|contador2|q_reg[2]~6_combout\ & \jugador_1|contador2|q_reg[4]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[2]~6_combout\,
	datab => \jugador_1|contador2|q_reg[3]~10_combout\,
	datac => \jugador_1|contador2|q_reg[4]~12_combout\,
	datad => \jugador_1|contador2|q_reg\(1),
	combout => \jugador_1|bin2|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y45_N10
\jugador_1|bin2|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux5~1_combout\ = (\jugador_1|contador2|q_reg[3]~10_combout\ & (\jugador_1|contador2|q_reg\(1) $ (((\jugador_1|contador2|q_reg[2]~6_combout\) # (!\jugador_1|contador2|q_reg[4]~12_combout\))))) # (!\jugador_1|contador2|q_reg[3]~10_combout\ 
-- & ((\jugador_1|contador2|q_reg\(1)) # ((!\jugador_1|contador2|q_reg[2]~6_combout\ & \jugador_1|contador2|q_reg[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[2]~6_combout\,
	datab => \jugador_1|contador2|q_reg[3]~10_combout\,
	datac => \jugador_1|contador2|q_reg[4]~12_combout\,
	datad => \jugador_1|contador2|q_reg\(1),
	combout => \jugador_1|bin2|Mux5~1_combout\);

-- Location: LCCOMB_X49_Y45_N0
\jugador_1|bin2|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux5~2_combout\ = (\jugador_1|contador2|q_reg\(5) & ((!\jugador_1|bin2|Mux5~1_combout\))) # (!\jugador_1|contador2|q_reg\(5) & (\jugador_1|bin2|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|bin2|Mux5~0_combout\,
	datac => \jugador_1|contador2|q_reg\(5),
	datad => \jugador_1|bin2|Mux5~1_combout\,
	combout => \jugador_1|bin2|Mux5~2_combout\);

-- Location: LCCOMB_X49_Y46_N18
\jugador_1|hexa3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa3|Mux6~0_combout\ = (\jugador_1|bin2|Mux3~2_combout\ & (\jugador_1|contador2|q_reg[0]~2_combout\ & (\jugador_1|bin2|Mux4~2_combout\ $ (\jugador_1|bin2|Mux5~2_combout\)))) # (!\jugador_1|bin2|Mux3~2_combout\ & 
-- (!\jugador_1|bin2|Mux5~2_combout\ & (\jugador_1|bin2|Mux4~2_combout\ $ (\jugador_1|contador2|q_reg[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux3~2_combout\,
	datab => \jugador_1|bin2|Mux4~2_combout\,
	datac => \jugador_1|contador2|q_reg[0]~2_combout\,
	datad => \jugador_1|bin2|Mux5~2_combout\,
	combout => \jugador_1|hexa3|Mux6~0_combout\);

-- Location: LCCOMB_X44_Y46_N24
\con0|hexa_c|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_c|Mux6~0_combout\ = (\con0|q_reg_c\(2) & (!\con0|q_reg_c\(1) & (\con0|q_reg_c\(3) $ (!\con0|q_reg_c\(0))))) # (!\con0|q_reg_c\(2) & (\con0|q_reg_c\(0) & (\con0|q_reg_c\(1) $ (!\con0|q_reg_c\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_c\(1),
	datab => \con0|q_reg_c\(2),
	datac => \con0|q_reg_c\(3),
	datad => \con0|q_reg_c\(0),
	combout => \con0|hexa_c|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y46_N12
\mu2|y[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[0]~1_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|hexa3|Mux6~0_combout\) # ((\ver_disp[0]~input_o\)))) # (!\ver_disp[1]~input_o\ & (((\con0|hexa_c|Mux6~0_combout\ & \ver_disp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_1|hexa3|Mux6~0_combout\,
	datac => \con0|hexa_c|Mux6~0_combout\,
	datad => \ver_disp[0]~input_o\,
	combout => \mu2|y[0]~1_combout\);

-- Location: LCCOMB_X49_Y43_N10
\mu2|y[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[0]~2_combout\ = (\mu2|y[0]~1_combout\ & ((\con1|hexa_c|Mux6~0_combout\) # ((!\mu2|y[5]~0_combout\)))) # (!\mu2|y[0]~1_combout\ & (((\jugador_0|hexa3|Mux6~0_combout\ & \mu2|y[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|hexa_c|Mux6~0_combout\,
	datab => \jugador_0|hexa3|Mux6~0_combout\,
	datac => \mu2|y[0]~1_combout\,
	datad => \mu2|y[5]~0_combout\,
	combout => \mu2|y[0]~2_combout\);

-- Location: LCCOMB_X45_Y47_N22
\con1|hexa_c|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_c|Mux5~0_combout\ = (\con1|q_reg_c\(3) & ((\con1|q_reg_c\(0) & ((\con1|q_reg_c\(1)))) # (!\con1|q_reg_c\(0) & (\con1|q_reg_c\(2))))) # (!\con1|q_reg_c\(3) & (\con1|q_reg_c\(2) & (\con1|q_reg_c\(1) $ (\con1|q_reg_c\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_c\(2),
	datab => \con1|q_reg_c\(3),
	datac => \con1|q_reg_c\(1),
	datad => \con1|q_reg_c\(0),
	combout => \con1|hexa_c|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y43_N8
\jugador_0|hexa3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa3|Mux5~0_combout\ = (\jugador_0|bin2|Mux3~2_combout\ & ((\jugador_0|contador2|q_reg[0]~2_combout\ & ((\jugador_0|bin2|Mux5~2_combout\))) # (!\jugador_0|contador2|q_reg[0]~2_combout\ & (\jugador_0|bin2|Mux4~2_combout\)))) # 
-- (!\jugador_0|bin2|Mux3~2_combout\ & (\jugador_0|bin2|Mux4~2_combout\ & (\jugador_0|contador2|q_reg[0]~2_combout\ $ (\jugador_0|bin2|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin2|Mux4~2_combout\,
	datab => \jugador_0|bin2|Mux3~2_combout\,
	datac => \jugador_0|contador2|q_reg[0]~2_combout\,
	datad => \jugador_0|bin2|Mux5~2_combout\,
	combout => \jugador_0|hexa3|Mux5~0_combout\);

-- Location: LCCOMB_X44_Y46_N10
\con0|hexa_c|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_c|Mux5~0_combout\ = (\con0|q_reg_c\(1) & ((\con0|q_reg_c\(0) & ((\con0|q_reg_c\(3)))) # (!\con0|q_reg_c\(0) & (\con0|q_reg_c\(2))))) # (!\con0|q_reg_c\(1) & (\con0|q_reg_c\(2) & (\con0|q_reg_c\(3) $ (\con0|q_reg_c\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_c\(1),
	datab => \con0|q_reg_c\(2),
	datac => \con0|q_reg_c\(3),
	datad => \con0|q_reg_c\(0),
	combout => \con0|hexa_c|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y46_N30
\jugador_1|hexa3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa3|Mux5~0_combout\ = (\jugador_1|bin2|Mux3~2_combout\ & ((\jugador_1|contador2|q_reg[0]~2_combout\ & ((\jugador_1|bin2|Mux5~2_combout\))) # (!\jugador_1|contador2|q_reg[0]~2_combout\ & (\jugador_1|bin2|Mux4~2_combout\)))) # 
-- (!\jugador_1|bin2|Mux3~2_combout\ & (\jugador_1|bin2|Mux4~2_combout\ & (\jugador_1|contador2|q_reg[0]~2_combout\ $ (\jugador_1|bin2|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux3~2_combout\,
	datab => \jugador_1|bin2|Mux4~2_combout\,
	datac => \jugador_1|contador2|q_reg[0]~2_combout\,
	datad => \jugador_1|bin2|Mux5~2_combout\,
	combout => \jugador_1|hexa3|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y46_N20
\mu2|y[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[1]~3_combout\ = (\ver_disp[1]~input_o\ & (((\jugador_1|hexa3|Mux5~0_combout\) # (\ver_disp[0]~input_o\)))) # (!\ver_disp[1]~input_o\ & (\con0|hexa_c|Mux5~0_combout\ & ((\ver_disp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \con0|hexa_c|Mux5~0_combout\,
	datac => \jugador_1|hexa3|Mux5~0_combout\,
	datad => \ver_disp[0]~input_o\,
	combout => \mu2|y[1]~3_combout\);

-- Location: LCCOMB_X49_Y46_N10
\mu2|y[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[1]~4_combout\ = (\mu2|y[5]~0_combout\ & ((\mu2|y[1]~3_combout\ & (\con1|hexa_c|Mux5~0_combout\)) # (!\mu2|y[1]~3_combout\ & ((\jugador_0|hexa3|Mux5~0_combout\))))) # (!\mu2|y[5]~0_combout\ & (((\mu2|y[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|hexa_c|Mux5~0_combout\,
	datab => \mu2|y[5]~0_combout\,
	datac => \jugador_0|hexa3|Mux5~0_combout\,
	datad => \mu2|y[1]~3_combout\,
	combout => \mu2|y[1]~4_combout\);

-- Location: LCCOMB_X49_Y43_N22
\jugador_0|hexa3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa3|Mux4~0_combout\ = (\jugador_0|bin2|Mux4~2_combout\ & (\jugador_0|bin2|Mux3~2_combout\ & ((\jugador_0|bin2|Mux5~2_combout\) # (!\jugador_0|contador2|q_reg[0]~2_combout\)))) # (!\jugador_0|bin2|Mux4~2_combout\ & 
-- (!\jugador_0|bin2|Mux3~2_combout\ & (!\jugador_0|contador2|q_reg[0]~2_combout\ & \jugador_0|bin2|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin2|Mux4~2_combout\,
	datab => \jugador_0|bin2|Mux3~2_combout\,
	datac => \jugador_0|contador2|q_reg[0]~2_combout\,
	datad => \jugador_0|bin2|Mux5~2_combout\,
	combout => \jugador_0|hexa3|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y47_N20
\con1|hexa_c|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_c|Mux4~0_combout\ = (\con1|q_reg_c\(2) & (\con1|q_reg_c\(3) & ((\con1|q_reg_c\(1)) # (!\con1|q_reg_c\(0))))) # (!\con1|q_reg_c\(2) & (!\con1|q_reg_c\(3) & (\con1|q_reg_c\(1) & !\con1|q_reg_c\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_c\(2),
	datab => \con1|q_reg_c\(3),
	datac => \con1|q_reg_c\(1),
	datad => \con1|q_reg_c\(0),
	combout => \con1|hexa_c|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y46_N4
\jugador_1|hexa3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa3|Mux4~0_combout\ = (\jugador_1|bin2|Mux3~2_combout\ & (\jugador_1|bin2|Mux4~2_combout\ & ((\jugador_1|bin2|Mux5~2_combout\) # (!\jugador_1|contador2|q_reg[0]~2_combout\)))) # (!\jugador_1|bin2|Mux3~2_combout\ & 
-- (!\jugador_1|bin2|Mux4~2_combout\ & (!\jugador_1|contador2|q_reg[0]~2_combout\ & \jugador_1|bin2|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux3~2_combout\,
	datab => \jugador_1|bin2|Mux4~2_combout\,
	datac => \jugador_1|contador2|q_reg[0]~2_combout\,
	datad => \jugador_1|bin2|Mux5~2_combout\,
	combout => \jugador_1|hexa3|Mux4~0_combout\);

-- Location: LCCOMB_X44_Y46_N28
\con0|hexa_c|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_c|Mux4~0_combout\ = (\con0|q_reg_c\(2) & (\con0|q_reg_c\(3) & ((\con0|q_reg_c\(1)) # (!\con0|q_reg_c\(0))))) # (!\con0|q_reg_c\(2) & (\con0|q_reg_c\(1) & (!\con0|q_reg_c\(3) & !\con0|q_reg_c\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_c\(1),
	datab => \con0|q_reg_c\(2),
	datac => \con0|q_reg_c\(3),
	datad => \con0|q_reg_c\(0),
	combout => \con0|hexa_c|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y46_N14
\mu2|y[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[2]~5_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|hexa3|Mux4~0_combout\) # ((\ver_disp[0]~input_o\)))) # (!\ver_disp[1]~input_o\ & (((\con0|hexa_c|Mux4~0_combout\ & \ver_disp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_1|hexa3|Mux4~0_combout\,
	datac => \con0|hexa_c|Mux4~0_combout\,
	datad => \ver_disp[0]~input_o\,
	combout => \mu2|y[2]~5_combout\);

-- Location: LCCOMB_X49_Y43_N4
\mu2|y[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[2]~6_combout\ = (\mu2|y[2]~5_combout\ & (((\con1|hexa_c|Mux4~0_combout\) # (!\mu2|y[5]~0_combout\)))) # (!\mu2|y[2]~5_combout\ & (\jugador_0|hexa3|Mux4~0_combout\ & ((\mu2|y[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|hexa3|Mux4~0_combout\,
	datab => \con1|hexa_c|Mux4~0_combout\,
	datac => \mu2|y[2]~5_combout\,
	datad => \mu2|y[5]~0_combout\,
	combout => \mu2|y[2]~6_combout\);

-- Location: LCCOMB_X49_Y43_N30
\jugador_0|hexa3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa3|Mux3~0_combout\ = (\jugador_0|bin2|Mux5~2_combout\ & ((\jugador_0|bin2|Mux4~2_combout\ & ((\jugador_0|contador2|q_reg[0]~2_combout\))) # (!\jugador_0|bin2|Mux4~2_combout\ & (\jugador_0|bin2|Mux3~2_combout\ & 
-- !\jugador_0|contador2|q_reg[0]~2_combout\)))) # (!\jugador_0|bin2|Mux5~2_combout\ & (!\jugador_0|bin2|Mux3~2_combout\ & (\jugador_0|bin2|Mux4~2_combout\ $ (\jugador_0|contador2|q_reg[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin2|Mux4~2_combout\,
	datab => \jugador_0|bin2|Mux3~2_combout\,
	datac => \jugador_0|contador2|q_reg[0]~2_combout\,
	datad => \jugador_0|bin2|Mux5~2_combout\,
	combout => \jugador_0|hexa3|Mux3~0_combout\);

-- Location: LCCOMB_X44_Y46_N26
\con0|hexa_c|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_c|Mux3~0_combout\ = (\con0|q_reg_c\(1) & ((\con0|q_reg_c\(2) & ((\con0|q_reg_c\(0)))) # (!\con0|q_reg_c\(2) & (\con0|q_reg_c\(3) & !\con0|q_reg_c\(0))))) # (!\con0|q_reg_c\(1) & (!\con0|q_reg_c\(3) & (\con0|q_reg_c\(2) $ (\con0|q_reg_c\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_c\(1),
	datab => \con0|q_reg_c\(2),
	datac => \con0|q_reg_c\(3),
	datad => \con0|q_reg_c\(0),
	combout => \con0|hexa_c|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y46_N8
\jugador_1|hexa3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa3|Mux3~0_combout\ = (\jugador_1|bin2|Mux5~2_combout\ & ((\jugador_1|bin2|Mux4~2_combout\ & ((\jugador_1|contador2|q_reg[0]~2_combout\))) # (!\jugador_1|bin2|Mux4~2_combout\ & (\jugador_1|bin2|Mux3~2_combout\ & 
-- !\jugador_1|contador2|q_reg[0]~2_combout\)))) # (!\jugador_1|bin2|Mux5~2_combout\ & (!\jugador_1|bin2|Mux3~2_combout\ & (\jugador_1|bin2|Mux4~2_combout\ $ (\jugador_1|contador2|q_reg[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux3~2_combout\,
	datab => \jugador_1|bin2|Mux4~2_combout\,
	datac => \jugador_1|contador2|q_reg[0]~2_combout\,
	datad => \jugador_1|bin2|Mux5~2_combout\,
	combout => \jugador_1|hexa3|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y46_N6
\mu2|y[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[3]~7_combout\ = (\ver_disp[1]~input_o\ & (((\jugador_1|hexa3|Mux3~0_combout\) # (\ver_disp[0]~input_o\)))) # (!\ver_disp[1]~input_o\ & (\con0|hexa_c|Mux3~0_combout\ & ((\ver_disp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \con0|hexa_c|Mux3~0_combout\,
	datac => \jugador_1|hexa3|Mux3~0_combout\,
	datad => \ver_disp[0]~input_o\,
	combout => \mu2|y[3]~7_combout\);

-- Location: LCCOMB_X45_Y47_N8
\con1|hexa_c|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_c|Mux3~0_combout\ = (\con1|q_reg_c\(1) & ((\con1|q_reg_c\(2) & ((\con1|q_reg_c\(0)))) # (!\con1|q_reg_c\(2) & (\con1|q_reg_c\(3) & !\con1|q_reg_c\(0))))) # (!\con1|q_reg_c\(1) & (!\con1|q_reg_c\(3) & (\con1|q_reg_c\(2) $ (\con1|q_reg_c\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_c\(2),
	datab => \con1|q_reg_c\(3),
	datac => \con1|q_reg_c\(1),
	datad => \con1|q_reg_c\(0),
	combout => \con1|hexa_c|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y43_N0
\mu2|y[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[3]~8_combout\ = (\mu2|y[3]~7_combout\ & (((\con1|hexa_c|Mux3~0_combout\) # (!\mu2|y[5]~0_combout\)))) # (!\mu2|y[3]~7_combout\ & (\jugador_0|hexa3|Mux3~0_combout\ & ((\mu2|y[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|hexa3|Mux3~0_combout\,
	datab => \mu2|y[3]~7_combout\,
	datac => \con1|hexa_c|Mux3~0_combout\,
	datad => \mu2|y[5]~0_combout\,
	combout => \mu2|y[3]~8_combout\);

-- Location: LCCOMB_X44_Y46_N20
\con0|hexa_c|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_c|Mux2~0_combout\ = (\con0|q_reg_c\(1) & (((!\con0|q_reg_c\(3) & \con0|q_reg_c\(0))))) # (!\con0|q_reg_c\(1) & ((\con0|q_reg_c\(2) & (!\con0|q_reg_c\(3))) # (!\con0|q_reg_c\(2) & ((\con0|q_reg_c\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_c\(1),
	datab => \con0|q_reg_c\(2),
	datac => \con0|q_reg_c\(3),
	datad => \con0|q_reg_c\(0),
	combout => \con0|hexa_c|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y46_N24
\jugador_1|hexa3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa3|Mux2~0_combout\ = (\jugador_1|bin2|Mux5~2_combout\ & (!\jugador_1|bin2|Mux3~2_combout\ & ((\jugador_1|contador2|q_reg[0]~2_combout\)))) # (!\jugador_1|bin2|Mux5~2_combout\ & ((\jugador_1|bin2|Mux4~2_combout\ & 
-- (!\jugador_1|bin2|Mux3~2_combout\)) # (!\jugador_1|bin2|Mux4~2_combout\ & ((\jugador_1|contador2|q_reg[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux3~2_combout\,
	datab => \jugador_1|bin2|Mux4~2_combout\,
	datac => \jugador_1|contador2|q_reg[0]~2_combout\,
	datad => \jugador_1|bin2|Mux5~2_combout\,
	combout => \jugador_1|hexa3|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y46_N26
\mu2|y[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[4]~9_combout\ = (\ver_disp[1]~input_o\ & ((\ver_disp[0]~input_o\) # ((\jugador_1|hexa3|Mux2~0_combout\)))) # (!\ver_disp[1]~input_o\ & (\ver_disp[0]~input_o\ & (\con0|hexa_c|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \ver_disp[0]~input_o\,
	datac => \con0|hexa_c|Mux2~0_combout\,
	datad => \jugador_1|hexa3|Mux2~0_combout\,
	combout => \mu2|y[4]~9_combout\);

-- Location: LCCOMB_X49_Y43_N14
\jugador_0|hexa3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa3|Mux2~0_combout\ = (\jugador_0|bin2|Mux5~2_combout\ & (((!\jugador_0|bin2|Mux3~2_combout\ & \jugador_0|contador2|q_reg[0]~2_combout\)))) # (!\jugador_0|bin2|Mux5~2_combout\ & ((\jugador_0|bin2|Mux4~2_combout\ & 
-- (!\jugador_0|bin2|Mux3~2_combout\)) # (!\jugador_0|bin2|Mux4~2_combout\ & ((\jugador_0|contador2|q_reg[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin2|Mux4~2_combout\,
	datab => \jugador_0|bin2|Mux3~2_combout\,
	datac => \jugador_0|contador2|q_reg[0]~2_combout\,
	datad => \jugador_0|bin2|Mux5~2_combout\,
	combout => \jugador_0|hexa3|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y47_N24
\con1|hexa_c|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_c|Mux2~0_combout\ = (\con1|q_reg_c\(1) & (((!\con1|q_reg_c\(3) & \con1|q_reg_c\(0))))) # (!\con1|q_reg_c\(1) & ((\con1|q_reg_c\(2) & (!\con1|q_reg_c\(3))) # (!\con1|q_reg_c\(2) & ((\con1|q_reg_c\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_c\(2),
	datab => \con1|q_reg_c\(3),
	datac => \con1|q_reg_c\(1),
	datad => \con1|q_reg_c\(0),
	combout => \con1|hexa_c|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y43_N12
\mu2|y[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[4]~10_combout\ = (\mu2|y[5]~0_combout\ & ((\mu2|y[4]~9_combout\ & ((\con1|hexa_c|Mux2~0_combout\))) # (!\mu2|y[4]~9_combout\ & (\jugador_0|hexa3|Mux2~0_combout\)))) # (!\mu2|y[5]~0_combout\ & (\mu2|y[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu2|y[5]~0_combout\,
	datab => \mu2|y[4]~9_combout\,
	datac => \jugador_0|hexa3|Mux2~0_combout\,
	datad => \con1|hexa_c|Mux2~0_combout\,
	combout => \mu2|y[4]~10_combout\);

-- Location: LCCOMB_X45_Y47_N6
\con1|hexa_c|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_c|Mux1~0_combout\ = (\con1|q_reg_c\(2) & (\con1|q_reg_c\(0) & (\con1|q_reg_c\(3) $ (\con1|q_reg_c\(1))))) # (!\con1|q_reg_c\(2) & (!\con1|q_reg_c\(3) & ((\con1|q_reg_c\(1)) # (\con1|q_reg_c\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_c\(2),
	datab => \con1|q_reg_c\(3),
	datac => \con1|q_reg_c\(1),
	datad => \con1|q_reg_c\(0),
	combout => \con1|hexa_c|Mux1~0_combout\);

-- Location: LCCOMB_X44_Y46_N22
\con0|hexa_c|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_c|Mux1~0_combout\ = (\con0|q_reg_c\(1) & (!\con0|q_reg_c\(3) & ((\con0|q_reg_c\(0)) # (!\con0|q_reg_c\(2))))) # (!\con0|q_reg_c\(1) & (\con0|q_reg_c\(0) & (\con0|q_reg_c\(3) $ (!\con0|q_reg_c\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_c\(1),
	datab => \con0|q_reg_c\(0),
	datac => \con0|q_reg_c\(3),
	datad => \con0|q_reg_c\(2),
	combout => \con0|hexa_c|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y46_N0
\jugador_1|hexa3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa3|Mux1~0_combout\ = (\jugador_1|bin2|Mux4~2_combout\ & (\jugador_1|contador2|q_reg[0]~2_combout\ & (\jugador_1|bin2|Mux3~2_combout\ $ (\jugador_1|bin2|Mux5~2_combout\)))) # (!\jugador_1|bin2|Mux4~2_combout\ & 
-- (!\jugador_1|bin2|Mux3~2_combout\ & ((\jugador_1|contador2|q_reg[0]~2_combout\) # (\jugador_1|bin2|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux3~2_combout\,
	datab => \jugador_1|bin2|Mux4~2_combout\,
	datac => \jugador_1|contador2|q_reg[0]~2_combout\,
	datad => \jugador_1|bin2|Mux5~2_combout\,
	combout => \jugador_1|hexa3|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y46_N22
\mu2|y[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[5]~11_combout\ = (\ver_disp[1]~input_o\ & ((\ver_disp[0]~input_o\) # ((\jugador_1|hexa3|Mux1~0_combout\)))) # (!\ver_disp[1]~input_o\ & (\ver_disp[0]~input_o\ & (\con0|hexa_c|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \ver_disp[0]~input_o\,
	datac => \con0|hexa_c|Mux1~0_combout\,
	datad => \jugador_1|hexa3|Mux1~0_combout\,
	combout => \mu2|y[5]~11_combout\);

-- Location: LCCOMB_X49_Y43_N18
\jugador_0|hexa3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa3|Mux1~0_combout\ = (\jugador_0|bin2|Mux4~2_combout\ & (\jugador_0|contador2|q_reg[0]~2_combout\ & (\jugador_0|bin2|Mux3~2_combout\ $ (\jugador_0|bin2|Mux5~2_combout\)))) # (!\jugador_0|bin2|Mux4~2_combout\ & 
-- (!\jugador_0|bin2|Mux3~2_combout\ & ((\jugador_0|contador2|q_reg[0]~2_combout\) # (\jugador_0|bin2|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin2|Mux4~2_combout\,
	datab => \jugador_0|bin2|Mux3~2_combout\,
	datac => \jugador_0|contador2|q_reg[0]~2_combout\,
	datad => \jugador_0|bin2|Mux5~2_combout\,
	combout => \jugador_0|hexa3|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y43_N28
\mu2|y[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[5]~12_combout\ = (\mu2|y[5]~0_combout\ & ((\mu2|y[5]~11_combout\ & (\con1|hexa_c|Mux1~0_combout\)) # (!\mu2|y[5]~11_combout\ & ((\jugador_0|hexa3|Mux1~0_combout\))))) # (!\mu2|y[5]~0_combout\ & (((\mu2|y[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|hexa_c|Mux1~0_combout\,
	datab => \mu2|y[5]~0_combout\,
	datac => \mu2|y[5]~11_combout\,
	datad => \jugador_0|hexa3|Mux1~0_combout\,
	combout => \mu2|y[5]~12_combout\);

-- Location: LCCOMB_X49_Y43_N26
\jugador_0|hexa3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa3|Mux0~0_combout\ = (\jugador_0|contador2|q_reg[0]~2_combout\ & ((\jugador_0|bin2|Mux3~2_combout\) # (\jugador_0|bin2|Mux4~2_combout\ $ (\jugador_0|bin2|Mux5~2_combout\)))) # (!\jugador_0|contador2|q_reg[0]~2_combout\ & 
-- ((\jugador_0|bin2|Mux5~2_combout\) # (\jugador_0|bin2|Mux4~2_combout\ $ (\jugador_0|bin2|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin2|Mux4~2_combout\,
	datab => \jugador_0|bin2|Mux3~2_combout\,
	datac => \jugador_0|contador2|q_reg[0]~2_combout\,
	datad => \jugador_0|bin2|Mux5~2_combout\,
	combout => \jugador_0|hexa3|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y46_N28
\jugador_1|hexa3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa3|Mux0~0_combout\ = (\jugador_1|contador2|q_reg[0]~2_combout\ & ((\jugador_1|bin2|Mux3~2_combout\) # (\jugador_1|bin2|Mux4~2_combout\ $ (\jugador_1|bin2|Mux5~2_combout\)))) # (!\jugador_1|contador2|q_reg[0]~2_combout\ & 
-- ((\jugador_1|bin2|Mux5~2_combout\) # (\jugador_1|bin2|Mux3~2_combout\ $ (\jugador_1|bin2|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux3~2_combout\,
	datab => \jugador_1|bin2|Mux4~2_combout\,
	datac => \jugador_1|contador2|q_reg[0]~2_combout\,
	datad => \jugador_1|bin2|Mux5~2_combout\,
	combout => \jugador_1|hexa3|Mux0~0_combout\);

-- Location: LCCOMB_X44_Y46_N14
\con0|hexa_c|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con0|hexa_c|Mux0~0_combout\ = (\con0|q_reg_c\(0) & ((\con0|q_reg_c\(3)) # (\con0|q_reg_c\(1) $ (\con0|q_reg_c\(2))))) # (!\con0|q_reg_c\(0) & ((\con0|q_reg_c\(1)) # (\con0|q_reg_c\(2) $ (\con0|q_reg_c\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con0|q_reg_c\(1),
	datab => \con0|q_reg_c\(2),
	datac => \con0|q_reg_c\(3),
	datad => \con0|q_reg_c\(0),
	combout => \con0|hexa_c|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y46_N2
\mu2|y[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[6]~13_combout\ = (\ver_disp[1]~input_o\ & (((\ver_disp[0]~input_o\)) # (!\jugador_1|hexa3|Mux0~0_combout\))) # (!\ver_disp[1]~input_o\ & (((!\con0|hexa_c|Mux0~0_combout\ & \ver_disp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_1|hexa3|Mux0~0_combout\,
	datac => \con0|hexa_c|Mux0~0_combout\,
	datad => \ver_disp[0]~input_o\,
	combout => \mu2|y[6]~13_combout\);

-- Location: LCCOMB_X45_Y44_N30
\con1|hexa_c|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \con1|hexa_c|Mux0~0_combout\ = (\con1|q_reg_c\(0) & ((\con1|q_reg_c\(3)) # (\con1|q_reg_c\(1) $ (\con1|q_reg_c\(2))))) # (!\con1|q_reg_c\(0) & ((\con1|q_reg_c\(1)) # (\con1|q_reg_c\(3) $ (\con1|q_reg_c\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \con1|q_reg_c\(3),
	datab => \con1|q_reg_c\(1),
	datac => \con1|q_reg_c\(0),
	datad => \con1|q_reg_c\(2),
	combout => \con1|hexa_c|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y43_N20
\mu2|y[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu2|y[6]~14_combout\ = (\mu2|y[6]~13_combout\ & (((!\mu2|y[5]~0_combout\) # (!\con1|hexa_c|Mux0~0_combout\)))) # (!\mu2|y[6]~13_combout\ & (!\jugador_0|hexa3|Mux0~0_combout\ & ((\mu2|y[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|hexa3|Mux0~0_combout\,
	datab => \mu2|y[6]~13_combout\,
	datac => \con1|hexa_c|Mux0~0_combout\,
	datad => \mu2|y[5]~0_combout\,
	combout => \mu2|y[6]~14_combout\);

-- Location: LCCOMB_X56_Y42_N30
\jugador_0|bin2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux2~0_combout\ = (\jugador_0|contador2|q_reg[2]~6_combout\ & (\jugador_0|contador2|q_reg[3]~10_combout\ & ((\jugador_0|contador2|q_reg\(1)) # (!\jugador_0|contador2|q_reg[4]~12_combout\)))) # (!\jugador_0|contador2|q_reg[2]~6_combout\ & 
-- ((\jugador_0|contador2|q_reg[4]~12_combout\ & ((!\jugador_0|contador2|q_reg[3]~10_combout\))) # (!\jugador_0|contador2|q_reg[4]~12_combout\ & (\jugador_0|contador2|q_reg\(1) & \jugador_0|contador2|q_reg[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg\(1),
	datab => \jugador_0|contador2|q_reg[2]~6_combout\,
	datac => \jugador_0|contador2|q_reg[4]~12_combout\,
	datad => \jugador_0|contador2|q_reg[3]~10_combout\,
	combout => \jugador_0|bin2|Mux2~0_combout\);

-- Location: LCCOMB_X56_Y42_N20
\jugador_0|bin2|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux2~1_combout\ = (\jugador_0|contador2|q_reg[2]~6_combout\ & (((\jugador_0|contador2|q_reg[3]~10_combout\)))) # (!\jugador_0|contador2|q_reg[2]~6_combout\ & ((\jugador_0|contador2|q_reg[4]~12_combout\ & (!\jugador_0|contador2|q_reg\(1) & 
-- !\jugador_0|contador2|q_reg[3]~10_combout\)) # (!\jugador_0|contador2|q_reg[4]~12_combout\ & ((\jugador_0|contador2|q_reg[3]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg\(1),
	datab => \jugador_0|contador2|q_reg[2]~6_combout\,
	datac => \jugador_0|contador2|q_reg[4]~12_combout\,
	datad => \jugador_0|contador2|q_reg[3]~10_combout\,
	combout => \jugador_0|bin2|Mux2~1_combout\);

-- Location: LCCOMB_X56_Y42_N18
\jugador_0|bin2|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux2~2_combout\ = (\jugador_0|contador2|q_reg\(5) & ((!\jugador_0|bin2|Mux2~1_combout\))) # (!\jugador_0|contador2|q_reg\(5) & (\jugador_0|bin2|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg\(5),
	datac => \jugador_0|bin2|Mux2~0_combout\,
	datad => \jugador_0|bin2|Mux2~1_combout\,
	combout => \jugador_0|bin2|Mux2~2_combout\);

-- Location: LCCOMB_X56_Y42_N28
\jugador_0|bin2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux0~0_combout\ = ((!\jugador_0|contador2|q_reg[4]~12_combout\ & !\jugador_0|contador2|q_reg[3]~10_combout\)) # (!\jugador_0|contador2|q_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[4]~12_combout\,
	datac => \jugador_0|contador2|q_reg\(5),
	datad => \jugador_0|contador2|q_reg[3]~10_combout\,
	combout => \jugador_0|bin2|Mux0~0_combout\);

-- Location: LCCOMB_X56_Y42_N10
\jugador_0|bin2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin2|Mux1~0_combout\ = (\jugador_0|contador2|q_reg[4]~12_combout\ & ((\jugador_0|contador2|q_reg[2]~6_combout\ & ((\jugador_0|contador2|q_reg[3]~10_combout\) # (!\jugador_0|contador2|q_reg\(5)))) # (!\jugador_0|contador2|q_reg[2]~6_combout\ & 
-- (!\jugador_0|contador2|q_reg\(5) & \jugador_0|contador2|q_reg[3]~10_combout\)))) # (!\jugador_0|contador2|q_reg[4]~12_combout\ & (((\jugador_0|contador2|q_reg\(5) & !\jugador_0|contador2|q_reg[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[4]~12_combout\,
	datab => \jugador_0|contador2|q_reg[2]~6_combout\,
	datac => \jugador_0|contador2|q_reg\(5),
	datad => \jugador_0|contador2|q_reg[3]~10_combout\,
	combout => \jugador_0|bin2|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y42_N8
\mu3|y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~0_combout\ = (!\ver_disp[1]~input_o\ & ((\jugador_0|bin2|Mux1~0_combout\) # (\jugador_0|bin2|Mux2~2_combout\ $ (\jugador_0|bin2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_0|bin2|Mux2~2_combout\,
	datac => \jugador_0|bin2|Mux0~0_combout\,
	datad => \jugador_0|bin2|Mux1~0_combout\,
	combout => \mu3|y~0_combout\);

-- Location: LCCOMB_X49_Y45_N28
\jugador_1|bin2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux0~0_combout\ = ((!\jugador_1|contador2|q_reg[4]~12_combout\ & !\jugador_1|contador2|q_reg[3]~10_combout\)) # (!\jugador_1|contador2|q_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[4]~12_combout\,
	datac => \jugador_1|contador2|q_reg\(5),
	datad => \jugador_1|contador2|q_reg[3]~10_combout\,
	combout => \jugador_1|bin2|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y45_N12
\jugador_1|bin2|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux2~1_combout\ = (\jugador_1|contador2|q_reg[2]~6_combout\ & (\jugador_1|contador2|q_reg[3]~10_combout\)) # (!\jugador_1|contador2|q_reg[2]~6_combout\ & ((\jugador_1|contador2|q_reg[3]~10_combout\ & 
-- (!\jugador_1|contador2|q_reg[4]~12_combout\)) # (!\jugador_1|contador2|q_reg[3]~10_combout\ & (\jugador_1|contador2|q_reg[4]~12_combout\ & !\jugador_1|contador2|q_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[2]~6_combout\,
	datab => \jugador_1|contador2|q_reg[3]~10_combout\,
	datac => \jugador_1|contador2|q_reg[4]~12_combout\,
	datad => \jugador_1|contador2|q_reg\(1),
	combout => \jugador_1|bin2|Mux2~1_combout\);

-- Location: LCCOMB_X49_Y45_N14
\jugador_1|bin2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux2~0_combout\ = (\jugador_1|contador2|q_reg[2]~6_combout\ & (\jugador_1|contador2|q_reg[3]~10_combout\ & ((\jugador_1|contador2|q_reg\(1)) # (!\jugador_1|contador2|q_reg[4]~12_combout\)))) # (!\jugador_1|contador2|q_reg[2]~6_combout\ & 
-- ((\jugador_1|contador2|q_reg[3]~10_combout\ & (!\jugador_1|contador2|q_reg[4]~12_combout\ & \jugador_1|contador2|q_reg\(1))) # (!\jugador_1|contador2|q_reg[3]~10_combout\ & (\jugador_1|contador2|q_reg[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg[2]~6_combout\,
	datab => \jugador_1|contador2|q_reg[3]~10_combout\,
	datac => \jugador_1|contador2|q_reg[4]~12_combout\,
	datad => \jugador_1|contador2|q_reg\(1),
	combout => \jugador_1|bin2|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y45_N30
\jugador_1|bin2|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux2~2_combout\ = (\jugador_1|contador2|q_reg\(5) & (!\jugador_1|bin2|Mux2~1_combout\)) # (!\jugador_1|contador2|q_reg\(5) & ((\jugador_1|bin2|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux2~1_combout\,
	datab => \jugador_1|bin2|Mux2~0_combout\,
	datac => \jugador_1|contador2|q_reg\(5),
	combout => \jugador_1|bin2|Mux2~2_combout\);

-- Location: LCCOMB_X49_Y45_N6
\jugador_1|bin2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin2|Mux1~0_combout\ = (\jugador_1|contador2|q_reg\(5) & ((\jugador_1|contador2|q_reg[3]~10_combout\ & (\jugador_1|contador2|q_reg[4]~12_combout\ & \jugador_1|contador2|q_reg[2]~6_combout\)) # (!\jugador_1|contador2|q_reg[3]~10_combout\ & 
-- (!\jugador_1|contador2|q_reg[4]~12_combout\)))) # (!\jugador_1|contador2|q_reg\(5) & (\jugador_1|contador2|q_reg[4]~12_combout\ & ((\jugador_1|contador2|q_reg[3]~10_combout\) # (\jugador_1|contador2|q_reg[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador2|q_reg\(5),
	datab => \jugador_1|contador2|q_reg[3]~10_combout\,
	datac => \jugador_1|contador2|q_reg[4]~12_combout\,
	datad => \jugador_1|contador2|q_reg[2]~6_combout\,
	combout => \jugador_1|bin2|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y45_N12
\mu3|y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~1_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|bin2|Mux1~0_combout\) # (\jugador_1|bin2|Mux0~0_combout\ $ (\jugador_1|bin2|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux0~0_combout\,
	datab => \ver_disp[1]~input_o\,
	datac => \jugador_1|bin2|Mux2~2_combout\,
	datad => \jugador_1|bin2|Mux1~0_combout\,
	combout => \mu3|y~1_combout\);

-- Location: LCCOMB_X62_Y42_N6
\mu3|y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~2_combout\ = (\ver_disp[0]~input_o\) # ((!\mu3|y~0_combout\ & !\mu3|y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ver_disp[0]~input_o\,
	datac => \mu3|y~0_combout\,
	datad => \mu3|y~1_combout\,
	combout => \mu3|y~2_combout\);

-- Location: LCCOMB_X56_Y42_N26
\mu3|y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~4_combout\ = (!\ver_disp[1]~input_o\ & (\jugador_0|contador2|q_reg\(5) & ((\jugador_0|contador2|q_reg[4]~12_combout\) # (\jugador_0|contador2|q_reg[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg[4]~12_combout\,
	datab => \ver_disp[1]~input_o\,
	datac => \jugador_0|contador2|q_reg\(5),
	datad => \jugador_0|contador2|q_reg[3]~10_combout\,
	combout => \mu3|y~4_combout\);

-- Location: LCCOMB_X56_Y42_N16
\jugador_0|hexa4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa4|Mux5~0_combout\ = \jugador_0|bin2|Mux1~0_combout\ $ (((\jugador_0|contador2|q_reg\(5) & (!\jugador_0|bin2|Mux2~1_combout\)) # (!\jugador_0|contador2|q_reg\(5) & ((\jugador_0|bin2|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador2|q_reg\(5),
	datab => \jugador_0|bin2|Mux2~1_combout\,
	datac => \jugador_0|bin2|Mux2~0_combout\,
	datad => \jugador_0|bin2|Mux1~0_combout\,
	combout => \jugador_0|hexa4|Mux5~0_combout\);

-- Location: LCCOMB_X60_Y45_N18
\mu3|y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~3_combout\ = (!\jugador_1|bin2|Mux0~0_combout\ & (\ver_disp[1]~input_o\ & (\jugador_1|bin2|Mux2~2_combout\ $ (\jugador_1|bin2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux0~0_combout\,
	datab => \ver_disp[1]~input_o\,
	datac => \jugador_1|bin2|Mux2~2_combout\,
	datad => \jugador_1|bin2|Mux1~0_combout\,
	combout => \mu3|y~3_combout\);

-- Location: LCCOMB_X60_Y45_N24
\mu3|y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~5_combout\ = (\ver_disp[0]~input_o\) # ((\mu3|y~3_combout\) # ((\mu3|y~4_combout\ & \jugador_0|hexa4|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu3|y~4_combout\,
	datab => \jugador_0|hexa4|Mux5~0_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \mu3|y~3_combout\,
	combout => \mu3|y~5_combout\);

-- Location: LCCOMB_X60_Y45_N6
\jugador_1|hexa4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa4|Mux4~0_combout\ = (\jugador_1|bin2|Mux0~0_combout\ & (!\jugador_1|bin2|Mux2~2_combout\ & \jugador_1|bin2|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux0~0_combout\,
	datac => \jugador_1|bin2|Mux2~2_combout\,
	datad => \jugador_1|bin2|Mux1~0_combout\,
	combout => \jugador_1|hexa4|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y42_N24
\mu3|y[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y[2]~6_combout\ = (\jugador_0|bin2|Mux0~0_combout\ & (!\jugador_0|bin2|Mux2~2_combout\ & \jugador_0|bin2|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin2|Mux0~0_combout\,
	datac => \jugador_0|bin2|Mux2~2_combout\,
	datad => \jugador_0|bin2|Mux1~0_combout\,
	combout => \mu3|y[2]~6_combout\);

-- Location: LCCOMB_X62_Y42_N10
\mu3|y[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y[2]~7_combout\ = (\ver_disp[0]~input_o\) # ((\ver_disp[1]~input_o\ & (\jugador_1|hexa4|Mux4~0_combout\)) # (!\ver_disp[1]~input_o\ & ((\mu3|y[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|hexa4|Mux4~0_combout\,
	datab => \ver_disp[0]~input_o\,
	datac => \ver_disp[1]~input_o\,
	datad => \mu3|y[2]~6_combout\,
	combout => \mu3|y[2]~7_combout\);

-- Location: LCCOMB_X62_Y42_N20
\mu3|y~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~8_combout\ = (\jugador_0|bin2|Mux0~0_combout\ & (!\ver_disp[1]~input_o\ & !\jugador_0|bin2|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin2|Mux0~0_combout\,
	datac => \ver_disp[1]~input_o\,
	datad => \jugador_0|bin2|Mux1~0_combout\,
	combout => \mu3|y~8_combout\);

-- Location: LCCOMB_X62_Y42_N22
\mu3|y~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~9_combout\ = (\ver_disp[0]~input_o\) # ((\jugador_0|bin2|Mux2~2_combout\ & \mu3|y~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin2|Mux2~2_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \mu3|y~8_combout\,
	combout => \mu3|y~9_combout\);

-- Location: LCCOMB_X60_Y45_N28
\mu3|y~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~10_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|bin2|Mux0~0_combout\ & (\jugador_1|bin2|Mux2~2_combout\ & !\jugador_1|bin2|Mux1~0_combout\)) # (!\jugador_1|bin2|Mux0~0_combout\ & (\jugador_1|bin2|Mux2~2_combout\ $ 
-- (!\jugador_1|bin2|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux0~0_combout\,
	datab => \ver_disp[1]~input_o\,
	datac => \jugador_1|bin2|Mux2~2_combout\,
	datad => \jugador_1|bin2|Mux1~0_combout\,
	combout => \mu3|y~10_combout\);

-- Location: LCCOMB_X60_Y45_N26
\mu3|y~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~11_combout\ = (\mu3|y~9_combout\) # ((\mu3|y~10_combout\) # ((!\jugador_0|hexa4|Mux5~0_combout\ & \mu3|y~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu3|y~9_combout\,
	datab => \jugador_0|hexa4|Mux5~0_combout\,
	datac => \mu3|y~4_combout\,
	datad => \mu3|y~10_combout\,
	combout => \mu3|y~11_combout\);

-- Location: LCCOMB_X60_Y45_N20
\mu3|y~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~13_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|bin2|Mux2~2_combout\) # ((!\jugador_1|bin2|Mux0~0_combout\ & !\jugador_1|bin2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux0~0_combout\,
	datab => \ver_disp[1]~input_o\,
	datac => \jugador_1|bin2|Mux2~2_combout\,
	datad => \jugador_1|bin2|Mux1~0_combout\,
	combout => \mu3|y~13_combout\);

-- Location: LCCOMB_X62_Y42_N28
\mu3|y~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~12_combout\ = (!\ver_disp[1]~input_o\ & ((\jugador_0|bin2|Mux2~2_combout\) # ((!\jugador_0|bin2|Mux0~0_combout\ & !\jugador_0|bin2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_0|bin2|Mux2~2_combout\,
	datac => \jugador_0|bin2|Mux0~0_combout\,
	datad => \jugador_0|bin2|Mux1~0_combout\,
	combout => \mu3|y~12_combout\);

-- Location: LCCOMB_X62_Y42_N30
\mu3|y~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~14_combout\ = (\mu3|y~13_combout\) # ((\ver_disp[0]~input_o\) # (\mu3|y~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mu3|y~13_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \mu3|y~12_combout\,
	combout => \mu3|y~14_combout\);

-- Location: LCCOMB_X62_Y42_N4
\mu3|y~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~15_combout\ = (!\ver_disp[1]~input_o\ & ((\jugador_0|bin2|Mux2~2_combout\ & ((\jugador_0|bin2|Mux0~0_combout\) # (\jugador_0|bin2|Mux1~0_combout\))) # (!\jugador_0|bin2|Mux2~2_combout\ & (\jugador_0|bin2|Mux0~0_combout\ & 
-- \jugador_0|bin2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_0|bin2|Mux2~2_combout\,
	datac => \jugador_0|bin2|Mux0~0_combout\,
	datad => \jugador_0|bin2|Mux1~0_combout\,
	combout => \mu3|y~15_combout\);

-- Location: LCCOMB_X60_Y45_N10
\mu3|y~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~16_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|bin2|Mux0~0_combout\ & ((\jugador_1|bin2|Mux2~2_combout\) # (\jugador_1|bin2|Mux1~0_combout\))) # (!\jugador_1|bin2|Mux0~0_combout\ & (\jugador_1|bin2|Mux2~2_combout\ & 
-- \jugador_1|bin2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux0~0_combout\,
	datab => \ver_disp[1]~input_o\,
	datac => \jugador_1|bin2|Mux2~2_combout\,
	datad => \jugador_1|bin2|Mux1~0_combout\,
	combout => \mu3|y~16_combout\);

-- Location: LCCOMB_X62_Y42_N18
\mu3|y~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~17_combout\ = (\ver_disp[0]~input_o\) # ((\mu3|y~15_combout\) # (\mu3|y~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ver_disp[0]~input_o\,
	datac => \mu3|y~15_combout\,
	datad => \mu3|y~16_combout\,
	combout => \mu3|y~17_combout\);

-- Location: LCCOMB_X62_Y42_N12
\mu3|y~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~18_combout\ = (!\ver_disp[1]~input_o\ & (\jugador_0|bin2|Mux2~2_combout\ & (!\jugador_0|bin2|Mux0~0_combout\ & \jugador_0|bin2|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_0|bin2|Mux2~2_combout\,
	datac => \jugador_0|bin2|Mux0~0_combout\,
	datad => \jugador_0|bin2|Mux1~0_combout\,
	combout => \mu3|y~18_combout\);

-- Location: LCCOMB_X60_Y45_N4
\mu3|y~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~19_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|bin2|Mux0~0_combout\ & ((!\jugador_1|bin2|Mux1~0_combout\))) # (!\jugador_1|bin2|Mux0~0_combout\ & (\jugador_1|bin2|Mux2~2_combout\ & \jugador_1|bin2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin2|Mux0~0_combout\,
	datab => \ver_disp[1]~input_o\,
	datac => \jugador_1|bin2|Mux2~2_combout\,
	datad => \jugador_1|bin2|Mux1~0_combout\,
	combout => \mu3|y~19_combout\);

-- Location: LCCOMB_X62_Y42_N26
\mu3|y~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu3|y~20_combout\ = (\mu3|y~18_combout\) # ((\mu3|y~19_combout\) # ((\ver_disp[0]~input_o\) # (\mu3|y~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu3|y~18_combout\,
	datab => \mu3|y~19_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \mu3|y~8_combout\,
	combout => \mu3|y~20_combout\);

-- Location: LCCOMB_X47_Y41_N22
\jugador_0|bin3|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux5~1_combout\ = (\jugador_0|contador3|q_reg\(3) & (\jugador_0|contador3|q_reg[1]~2_combout\ $ (((\jugador_0|contador3|q_reg\(2)) # (!\jugador_0|contador3|q_reg\(4)))))) # (!\jugador_0|contador3|q_reg\(3) & 
-- ((\jugador_0|contador3|q_reg[1]~2_combout\) # ((\jugador_0|contador3|q_reg\(4) & !\jugador_0|contador3|q_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(4),
	datab => \jugador_0|contador3|q_reg\(2),
	datac => \jugador_0|contador3|q_reg\(3),
	datad => \jugador_0|contador3|q_reg[1]~2_combout\,
	combout => \jugador_0|bin3|Mux5~1_combout\);

-- Location: LCCOMB_X47_Y41_N16
\jugador_0|bin3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux5~0_combout\ = (\jugador_0|contador3|q_reg\(3) & ((\jugador_0|contador3|q_reg\(4) & (!\jugador_0|contador3|q_reg\(2) & \jugador_0|contador3|q_reg[1]~2_combout\)) # (!\jugador_0|contador3|q_reg\(4) & (\jugador_0|contador3|q_reg\(2) & 
-- !\jugador_0|contador3|q_reg[1]~2_combout\)))) # (!\jugador_0|contador3|q_reg\(3) & (\jugador_0|contador3|q_reg[1]~2_combout\ $ (((\jugador_0|contador3|q_reg\(4) & !\jugador_0|contador3|q_reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(4),
	datab => \jugador_0|contador3|q_reg\(2),
	datac => \jugador_0|contador3|q_reg\(3),
	datad => \jugador_0|contador3|q_reg[1]~2_combout\,
	combout => \jugador_0|bin3|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y41_N0
\jugador_0|bin3|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux5~2_combout\ = (\jugador_0|contador3|q_reg\(5) & (!\jugador_0|bin3|Mux5~1_combout\)) # (!\jugador_0|contador3|q_reg\(5) & ((\jugador_0|bin3|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin3|Mux5~1_combout\,
	datab => \jugador_0|contador3|q_reg\(5),
	datad => \jugador_0|bin3|Mux5~0_combout\,
	combout => \jugador_0|bin3|Mux5~2_combout\);

-- Location: LCCOMB_X47_Y41_N12
\jugador_0|bin3|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux3~1_combout\ = (\jugador_0|contador3|q_reg\(2) & (\jugador_0|contador3|q_reg\(5) & (!\jugador_0|contador3|q_reg\(3) & \jugador_0|contador3|q_reg[1]~2_combout\))) # (!\jugador_0|contador3|q_reg\(2) & (!\jugador_0|contador3|q_reg\(5) & 
-- (\jugador_0|contador3|q_reg\(3) & !\jugador_0|contador3|q_reg[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(2),
	datab => \jugador_0|contador3|q_reg\(5),
	datac => \jugador_0|contador3|q_reg\(3),
	datad => \jugador_0|contador3|q_reg[1]~2_combout\,
	combout => \jugador_0|bin3|Mux3~1_combout\);

-- Location: LCCOMB_X47_Y41_N2
\jugador_0|bin3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux3~0_combout\ = (\jugador_0|contador3|q_reg\(2) & (!\jugador_0|contador3|q_reg\(5) & (\jugador_0|contador3|q_reg\(3) & !\jugador_0|contador3|q_reg[1]~2_combout\))) # (!\jugador_0|contador3|q_reg\(2) & ((\jugador_0|contador3|q_reg\(5) & 
-- (\jugador_0|contador3|q_reg\(3) $ (!\jugador_0|contador3|q_reg[1]~2_combout\))) # (!\jugador_0|contador3|q_reg\(5) & (!\jugador_0|contador3|q_reg\(3) & \jugador_0|contador3|q_reg[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(2),
	datab => \jugador_0|contador3|q_reg\(5),
	datac => \jugador_0|contador3|q_reg\(3),
	datad => \jugador_0|contador3|q_reg[1]~2_combout\,
	combout => \jugador_0|bin3|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y41_N10
\jugador_0|bin3|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux3~2_combout\ = (\jugador_0|contador3|q_reg\(4) & ((\jugador_0|bin3|Mux3~0_combout\))) # (!\jugador_0|contador3|q_reg\(4) & (\jugador_0|bin3|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin3|Mux3~1_combout\,
	datac => \jugador_0|contador3|q_reg\(4),
	datad => \jugador_0|bin3|Mux3~0_combout\,
	combout => \jugador_0|bin3|Mux3~2_combout\);

-- Location: LCCOMB_X47_Y41_N4
\jugador_0|bin3|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux4~1_combout\ = (\jugador_0|contador3|q_reg\(2) & (((\jugador_0|contador3|q_reg\(3)) # (!\jugador_0|contador3|q_reg[1]~2_combout\)) # (!\jugador_0|contador3|q_reg\(5)))) # (!\jugador_0|contador3|q_reg\(2) & 
-- ((\jugador_0|contador3|q_reg\(5) & ((\jugador_0|contador3|q_reg[1]~2_combout\) # (!\jugador_0|contador3|q_reg\(3)))) # (!\jugador_0|contador3|q_reg\(5) & (!\jugador_0|contador3|q_reg\(3) & \jugador_0|contador3|q_reg[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(2),
	datab => \jugador_0|contador3|q_reg\(5),
	datac => \jugador_0|contador3|q_reg\(3),
	datad => \jugador_0|contador3|q_reg[1]~2_combout\,
	combout => \jugador_0|bin3|Mux4~1_combout\);

-- Location: LCCOMB_X47_Y41_N26
\jugador_0|bin3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux4~0_combout\ = (\jugador_0|contador3|q_reg\(5) & (\jugador_0|contador3|q_reg\(2) $ (((!\jugador_0|contador3|q_reg\(3) & \jugador_0|contador3|q_reg[1]~2_combout\))))) # (!\jugador_0|contador3|q_reg\(5) & (\jugador_0|contador3|q_reg\(2) & 
-- ((\jugador_0|contador3|q_reg[1]~2_combout\) # (!\jugador_0|contador3|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(2),
	datab => \jugador_0|contador3|q_reg\(5),
	datac => \jugador_0|contador3|q_reg\(3),
	datad => \jugador_0|contador3|q_reg[1]~2_combout\,
	combout => \jugador_0|bin3|Mux4~0_combout\);

-- Location: LCCOMB_X51_Y41_N16
\jugador_0|bin3|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux4~2_combout\ = (\jugador_0|contador3|q_reg\(4) & (!\jugador_0|bin3|Mux4~1_combout\)) # (!\jugador_0|contador3|q_reg\(4) & ((\jugador_0|bin3|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin3|Mux4~1_combout\,
	datac => \jugador_0|contador3|q_reg\(4),
	datad => \jugador_0|bin3|Mux4~0_combout\,
	combout => \jugador_0|bin3|Mux4~2_combout\);

-- Location: LCCOMB_X55_Y43_N12
\jugador_0|hexa5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa5|Mux6~0_combout\ = (\jugador_0|bin3|Mux3~2_combout\ & (\jugador_0|contador3|q_reg\(0) & (\jugador_0|bin3|Mux5~2_combout\ $ (\jugador_0|bin3|Mux4~2_combout\)))) # (!\jugador_0|bin3|Mux3~2_combout\ & (!\jugador_0|bin3|Mux5~2_combout\ & 
-- (\jugador_0|contador3|q_reg\(0) $ (\jugador_0|bin3|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin3|Mux5~2_combout\,
	datab => \jugador_0|bin3|Mux3~2_combout\,
	datac => \jugador_0|contador3|q_reg\(0),
	datad => \jugador_0|bin3|Mux4~2_combout\,
	combout => \jugador_0|hexa5|Mux6~0_combout\);

-- Location: LCCOMB_X54_Y43_N26
\jugador_1|bin3|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux3~1_combout\ = (\jugador_1|contador3|q_reg\(5) & (\jugador_1|contador3|q_reg\(2) & (\jugador_1|contador3|q_reg[1]~2_combout\ & !\jugador_1|contador3|q_reg\(3)))) # (!\jugador_1|contador3|q_reg\(5) & (!\jugador_1|contador3|q_reg\(2) & 
-- (!\jugador_1|contador3|q_reg[1]~2_combout\ & \jugador_1|contador3|q_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(5),
	datab => \jugador_1|contador3|q_reg\(2),
	datac => \jugador_1|contador3|q_reg[1]~2_combout\,
	datad => \jugador_1|contador3|q_reg\(3),
	combout => \jugador_1|bin3|Mux3~1_combout\);

-- Location: LCCOMB_X54_Y43_N0
\jugador_1|bin3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux3~0_combout\ = (\jugador_1|contador3|q_reg\(5) & (!\jugador_1|contador3|q_reg\(2) & (\jugador_1|contador3|q_reg[1]~2_combout\ $ (!\jugador_1|contador3|q_reg\(3))))) # (!\jugador_1|contador3|q_reg\(5) & ((\jugador_1|contador3|q_reg\(2) & 
-- (!\jugador_1|contador3|q_reg[1]~2_combout\ & \jugador_1|contador3|q_reg\(3))) # (!\jugador_1|contador3|q_reg\(2) & (\jugador_1|contador3|q_reg[1]~2_combout\ & !\jugador_1|contador3|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(5),
	datab => \jugador_1|contador3|q_reg\(2),
	datac => \jugador_1|contador3|q_reg[1]~2_combout\,
	datad => \jugador_1|contador3|q_reg\(3),
	combout => \jugador_1|bin3|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y43_N4
\jugador_1|bin3|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux3~2_combout\ = (\jugador_1|contador3|q_reg\(4) & ((\jugador_1|bin3|Mux3~0_combout\))) # (!\jugador_1|contador3|q_reg\(4) & (\jugador_1|bin3|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(4),
	datac => \jugador_1|bin3|Mux3~1_combout\,
	datad => \jugador_1|bin3|Mux3~0_combout\,
	combout => \jugador_1|bin3|Mux3~2_combout\);

-- Location: LCCOMB_X54_Y43_N24
\jugador_1|bin3|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux4~1_combout\ = (\jugador_1|contador3|q_reg\(5) & ((\jugador_1|contador3|q_reg\(2) & ((\jugador_1|contador3|q_reg\(3)) # (!\jugador_1|contador3|q_reg[1]~2_combout\))) # (!\jugador_1|contador3|q_reg\(2) & 
-- ((\jugador_1|contador3|q_reg[1]~2_combout\) # (!\jugador_1|contador3|q_reg\(3)))))) # (!\jugador_1|contador3|q_reg\(5) & ((\jugador_1|contador3|q_reg\(2)) # ((\jugador_1|contador3|q_reg[1]~2_combout\ & !\jugador_1|contador3|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(5),
	datab => \jugador_1|contador3|q_reg\(2),
	datac => \jugador_1|contador3|q_reg[1]~2_combout\,
	datad => \jugador_1|contador3|q_reg\(3),
	combout => \jugador_1|bin3|Mux4~1_combout\);

-- Location: LCCOMB_X54_Y43_N6
\jugador_1|bin3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux4~0_combout\ = (\jugador_1|contador3|q_reg\(5) & (\jugador_1|contador3|q_reg\(2) $ (((\jugador_1|contador3|q_reg[1]~2_combout\ & !\jugador_1|contador3|q_reg\(3)))))) # (!\jugador_1|contador3|q_reg\(5) & (\jugador_1|contador3|q_reg\(2) & 
-- ((\jugador_1|contador3|q_reg[1]~2_combout\) # (!\jugador_1|contador3|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(5),
	datab => \jugador_1|contador3|q_reg\(2),
	datac => \jugador_1|contador3|q_reg[1]~2_combout\,
	datad => \jugador_1|contador3|q_reg\(3),
	combout => \jugador_1|bin3|Mux4~0_combout\);

-- Location: LCCOMB_X54_Y43_N30
\jugador_1|bin3|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux4~2_combout\ = (\jugador_1|contador3|q_reg\(4) & (!\jugador_1|bin3|Mux4~1_combout\)) # (!\jugador_1|contador3|q_reg\(4) & ((\jugador_1|bin3|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(4),
	datab => \jugador_1|bin3|Mux4~1_combout\,
	datad => \jugador_1|bin3|Mux4~0_combout\,
	combout => \jugador_1|bin3|Mux4~2_combout\);

-- Location: LCCOMB_X54_Y43_N10
\jugador_1|bin3|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux5~1_combout\ = (\jugador_1|contador3|q_reg[1]~2_combout\ & (((\jugador_1|contador3|q_reg\(4) & !\jugador_1|contador3|q_reg\(2))) # (!\jugador_1|contador3|q_reg\(3)))) # (!\jugador_1|contador3|q_reg[1]~2_combout\ & 
-- (\jugador_1|contador3|q_reg\(3) $ (((\jugador_1|contador3|q_reg\(4) & !\jugador_1|contador3|q_reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(4),
	datab => \jugador_1|contador3|q_reg\(2),
	datac => \jugador_1|contador3|q_reg[1]~2_combout\,
	datad => \jugador_1|contador3|q_reg\(3),
	combout => \jugador_1|bin3|Mux5~1_combout\);

-- Location: LCCOMB_X54_Y43_N28
\jugador_1|bin3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux5~0_combout\ = (\jugador_1|contador3|q_reg[1]~2_combout\ & (\jugador_1|contador3|q_reg\(3) $ (((\jugador_1|contador3|q_reg\(2)) # (!\jugador_1|contador3|q_reg\(4)))))) # (!\jugador_1|contador3|q_reg[1]~2_combout\ & 
-- ((\jugador_1|contador3|q_reg\(4) & (!\jugador_1|contador3|q_reg\(2) & !\jugador_1|contador3|q_reg\(3))) # (!\jugador_1|contador3|q_reg\(4) & (\jugador_1|contador3|q_reg\(2) & \jugador_1|contador3|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(4),
	datab => \jugador_1|contador3|q_reg\(2),
	datac => \jugador_1|contador3|q_reg[1]~2_combout\,
	datad => \jugador_1|contador3|q_reg\(3),
	combout => \jugador_1|bin3|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y43_N20
\jugador_1|bin3|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux5~2_combout\ = (\jugador_1|contador3|q_reg\(5) & (!\jugador_1|bin3|Mux5~1_combout\)) # (!\jugador_1|contador3|q_reg\(5) & ((\jugador_1|bin3|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|bin3|Mux5~1_combout\,
	datab => \jugador_1|bin3|Mux5~0_combout\,
	datad => \jugador_1|contador3|q_reg\(5),
	combout => \jugador_1|bin3|Mux5~2_combout\);

-- Location: LCCOMB_X54_Y43_N22
\jugador_1|hexa5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa5|Mux6~0_combout\ = (\jugador_1|bin3|Mux3~2_combout\ & (\jugador_1|contador3|q_reg\(0) & (\jugador_1|bin3|Mux4~2_combout\ $ (\jugador_1|bin3|Mux5~2_combout\)))) # (!\jugador_1|bin3|Mux3~2_combout\ & (!\jugador_1|bin3|Mux5~2_combout\ & 
-- (\jugador_1|contador3|q_reg\(0) $ (\jugador_1|bin3|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(0),
	datab => \jugador_1|bin3|Mux3~2_combout\,
	datac => \jugador_1|bin3|Mux4~2_combout\,
	datad => \jugador_1|bin3|Mux5~2_combout\,
	combout => \jugador_1|hexa5|Mux6~0_combout\);

-- Location: LCCOMB_X55_Y43_N6
\mu4|y[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu4|y[0]~0_combout\ = (\ver_disp[0]~input_o\) # ((\ver_disp[1]~input_o\ & ((\jugador_1|hexa5|Mux6~0_combout\))) # (!\ver_disp[1]~input_o\ & (\jugador_0|hexa5|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|hexa5|Mux6~0_combout\,
	datab => \jugador_1|hexa5|Mux6~0_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \ver_disp[1]~input_o\,
	combout => \mu4|y[0]~0_combout\);

-- Location: LCCOMB_X54_Y43_N16
\jugador_1|hexa5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa5|Mux5~0_combout\ = (\jugador_1|bin3|Mux3~2_combout\ & ((\jugador_1|contador3|q_reg\(0) & ((\jugador_1|bin3|Mux5~2_combout\))) # (!\jugador_1|contador3|q_reg\(0) & (\jugador_1|bin3|Mux4~2_combout\)))) # (!\jugador_1|bin3|Mux3~2_combout\ & 
-- (\jugador_1|bin3|Mux4~2_combout\ & (\jugador_1|contador3|q_reg\(0) $ (\jugador_1|bin3|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(0),
	datab => \jugador_1|bin3|Mux3~2_combout\,
	datac => \jugador_1|bin3|Mux4~2_combout\,
	datad => \jugador_1|bin3|Mux5~2_combout\,
	combout => \jugador_1|hexa5|Mux5~0_combout\);

-- Location: LCCOMB_X55_Y43_N28
\jugador_0|hexa5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa5|Mux5~0_combout\ = (\jugador_0|bin3|Mux5~2_combout\ & ((\jugador_0|contador3|q_reg\(0) & (\jugador_0|bin3|Mux3~2_combout\)) # (!\jugador_0|contador3|q_reg\(0) & ((\jugador_0|bin3|Mux4~2_combout\))))) # (!\jugador_0|bin3|Mux5~2_combout\ & 
-- (\jugador_0|bin3|Mux4~2_combout\ & (\jugador_0|bin3|Mux3~2_combout\ $ (\jugador_0|contador3|q_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin3|Mux5~2_combout\,
	datab => \jugador_0|bin3|Mux3~2_combout\,
	datac => \jugador_0|contador3|q_reg\(0),
	datad => \jugador_0|bin3|Mux4~2_combout\,
	combout => \jugador_0|hexa5|Mux5~0_combout\);

-- Location: LCCOMB_X55_Y43_N26
\mu4|y[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu4|y[1]~1_combout\ = (\ver_disp[0]~input_o\) # ((\ver_disp[1]~input_o\ & (\jugador_1|hexa5|Mux5~0_combout\)) # (!\ver_disp[1]~input_o\ & ((\jugador_0|hexa5|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|hexa5|Mux5~0_combout\,
	datab => \ver_disp[1]~input_o\,
	datac => \ver_disp[0]~input_o\,
	datad => \jugador_0|hexa5|Mux5~0_combout\,
	combout => \mu4|y[1]~1_combout\);

-- Location: LCCOMB_X54_Y43_N14
\jugador_1|hexa5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa5|Mux4~0_combout\ = (\jugador_1|bin3|Mux3~2_combout\ & (\jugador_1|bin3|Mux4~2_combout\ & ((\jugador_1|bin3|Mux5~2_combout\) # (!\jugador_1|contador3|q_reg\(0))))) # (!\jugador_1|bin3|Mux3~2_combout\ & (!\jugador_1|contador3|q_reg\(0) & 
-- (!\jugador_1|bin3|Mux4~2_combout\ & \jugador_1|bin3|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(0),
	datab => \jugador_1|bin3|Mux3~2_combout\,
	datac => \jugador_1|bin3|Mux4~2_combout\,
	datad => \jugador_1|bin3|Mux5~2_combout\,
	combout => \jugador_1|hexa5|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y43_N4
\jugador_0|hexa5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa5|Mux4~0_combout\ = (\jugador_0|bin3|Mux3~2_combout\ & (\jugador_0|bin3|Mux4~2_combout\ & ((\jugador_0|bin3|Mux5~2_combout\) # (!\jugador_0|contador3|q_reg\(0))))) # (!\jugador_0|bin3|Mux3~2_combout\ & (\jugador_0|bin3|Mux5~2_combout\ & 
-- (!\jugador_0|contador3|q_reg\(0) & !\jugador_0|bin3|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin3|Mux5~2_combout\,
	datab => \jugador_0|bin3|Mux3~2_combout\,
	datac => \jugador_0|contador3|q_reg\(0),
	datad => \jugador_0|bin3|Mux4~2_combout\,
	combout => \jugador_0|hexa5|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y43_N14
\mu4|y[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu4|y[2]~2_combout\ = (\ver_disp[0]~input_o\) # ((\ver_disp[1]~input_o\ & (\jugador_1|hexa5|Mux4~0_combout\)) # (!\ver_disp[1]~input_o\ & ((\jugador_0|hexa5|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|hexa5|Mux4~0_combout\,
	datab => \ver_disp[0]~input_o\,
	datac => \jugador_0|hexa5|Mux4~0_combout\,
	datad => \ver_disp[1]~input_o\,
	combout => \mu4|y[2]~2_combout\);

-- Location: LCCOMB_X54_Y43_N8
\jugador_1|hexa5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa5|Mux3~0_combout\ = (\jugador_1|bin3|Mux5~2_combout\ & ((\jugador_1|contador3|q_reg\(0) & ((\jugador_1|bin3|Mux4~2_combout\))) # (!\jugador_1|contador3|q_reg\(0) & (\jugador_1|bin3|Mux3~2_combout\ & !\jugador_1|bin3|Mux4~2_combout\)))) # 
-- (!\jugador_1|bin3|Mux5~2_combout\ & (!\jugador_1|bin3|Mux3~2_combout\ & (\jugador_1|contador3|q_reg\(0) $ (\jugador_1|bin3|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(0),
	datab => \jugador_1|bin3|Mux3~2_combout\,
	datac => \jugador_1|bin3|Mux4~2_combout\,
	datad => \jugador_1|bin3|Mux5~2_combout\,
	combout => \jugador_1|hexa5|Mux3~0_combout\);

-- Location: LCCOMB_X55_Y43_N8
\jugador_0|hexa5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa5|Mux3~0_combout\ = (\jugador_0|bin3|Mux5~2_combout\ & ((\jugador_0|contador3|q_reg\(0) & ((\jugador_0|bin3|Mux4~2_combout\))) # (!\jugador_0|contador3|q_reg\(0) & (\jugador_0|bin3|Mux3~2_combout\ & !\jugador_0|bin3|Mux4~2_combout\)))) # 
-- (!\jugador_0|bin3|Mux5~2_combout\ & (!\jugador_0|bin3|Mux3~2_combout\ & (\jugador_0|contador3|q_reg\(0) $ (\jugador_0|bin3|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin3|Mux5~2_combout\,
	datab => \jugador_0|bin3|Mux3~2_combout\,
	datac => \jugador_0|contador3|q_reg\(0),
	datad => \jugador_0|bin3|Mux4~2_combout\,
	combout => \jugador_0|hexa5|Mux3~0_combout\);

-- Location: LCCOMB_X55_Y43_N30
\mu4|y[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu4|y[3]~3_combout\ = (\ver_disp[0]~input_o\) # ((\ver_disp[1]~input_o\ & (\jugador_1|hexa5|Mux3~0_combout\)) # (!\ver_disp[1]~input_o\ & ((\jugador_0|hexa5|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|hexa5|Mux3~0_combout\,
	datab => \ver_disp[0]~input_o\,
	datac => \jugador_0|hexa5|Mux3~0_combout\,
	datad => \ver_disp[1]~input_o\,
	combout => \mu4|y[3]~3_combout\);

-- Location: LCCOMB_X54_Y43_N2
\jugador_1|hexa5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa5|Mux2~0_combout\ = (\jugador_1|bin3|Mux5~2_combout\ & (\jugador_1|contador3|q_reg\(0) & (!\jugador_1|bin3|Mux3~2_combout\))) # (!\jugador_1|bin3|Mux5~2_combout\ & ((\jugador_1|bin3|Mux4~2_combout\ & ((!\jugador_1|bin3|Mux3~2_combout\))) # 
-- (!\jugador_1|bin3|Mux4~2_combout\ & (\jugador_1|contador3|q_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(0),
	datab => \jugador_1|bin3|Mux3~2_combout\,
	datac => \jugador_1|bin3|Mux4~2_combout\,
	datad => \jugador_1|bin3|Mux5~2_combout\,
	combout => \jugador_1|hexa5|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y43_N16
\jugador_0|hexa5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa5|Mux2~0_combout\ = (\jugador_0|bin3|Mux5~2_combout\ & (!\jugador_0|bin3|Mux3~2_combout\ & (\jugador_0|contador3|q_reg\(0)))) # (!\jugador_0|bin3|Mux5~2_combout\ & ((\jugador_0|bin3|Mux4~2_combout\ & (!\jugador_0|bin3|Mux3~2_combout\)) # 
-- (!\jugador_0|bin3|Mux4~2_combout\ & ((\jugador_0|contador3|q_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin3|Mux5~2_combout\,
	datab => \jugador_0|bin3|Mux3~2_combout\,
	datac => \jugador_0|contador3|q_reg\(0),
	datad => \jugador_0|bin3|Mux4~2_combout\,
	combout => \jugador_0|hexa5|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y43_N22
\mu4|y[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu4|y[4]~4_combout\ = (\ver_disp[0]~input_o\) # ((\ver_disp[1]~input_o\ & (\jugador_1|hexa5|Mux2~0_combout\)) # (!\ver_disp[1]~input_o\ & ((\jugador_0|hexa5|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|hexa5|Mux2~0_combout\,
	datab => \ver_disp[1]~input_o\,
	datac => \ver_disp[0]~input_o\,
	datad => \jugador_0|hexa5|Mux2~0_combout\,
	combout => \mu4|y[4]~4_combout\);

-- Location: LCCOMB_X54_Y43_N12
\jugador_1|hexa5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa5|Mux1~0_combout\ = (\jugador_1|contador3|q_reg\(0) & (\jugador_1|bin3|Mux3~2_combout\ $ (((\jugador_1|bin3|Mux5~2_combout\) # (!\jugador_1|bin3|Mux4~2_combout\))))) # (!\jugador_1|contador3|q_reg\(0) & (!\jugador_1|bin3|Mux3~2_combout\ & 
-- (!\jugador_1|bin3|Mux4~2_combout\ & \jugador_1|bin3|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(0),
	datab => \jugador_1|bin3|Mux3~2_combout\,
	datac => \jugador_1|bin3|Mux4~2_combout\,
	datad => \jugador_1|bin3|Mux5~2_combout\,
	combout => \jugador_1|hexa5|Mux1~0_combout\);

-- Location: LCCOMB_X55_Y43_N24
\jugador_0|hexa5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa5|Mux1~0_combout\ = (\jugador_0|bin3|Mux5~2_combout\ & (!\jugador_0|bin3|Mux3~2_combout\ & ((\jugador_0|contador3|q_reg\(0)) # (!\jugador_0|bin3|Mux4~2_combout\)))) # (!\jugador_0|bin3|Mux5~2_combout\ & (\jugador_0|contador3|q_reg\(0) & 
-- (\jugador_0|bin3|Mux3~2_combout\ $ (!\jugador_0|bin3|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin3|Mux5~2_combout\,
	datab => \jugador_0|bin3|Mux3~2_combout\,
	datac => \jugador_0|contador3|q_reg\(0),
	datad => \jugador_0|bin3|Mux4~2_combout\,
	combout => \jugador_0|hexa5|Mux1~0_combout\);

-- Location: LCCOMB_X55_Y43_N18
\mu4|y[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu4|y[5]~5_combout\ = (\ver_disp[0]~input_o\) # ((\ver_disp[1]~input_o\ & (\jugador_1|hexa5|Mux1~0_combout\)) # (!\ver_disp[1]~input_o\ & ((\jugador_0|hexa5|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|hexa5|Mux1~0_combout\,
	datab => \ver_disp[1]~input_o\,
	datac => \ver_disp[0]~input_o\,
	datad => \jugador_0|hexa5|Mux1~0_combout\,
	combout => \mu4|y[5]~5_combout\);

-- Location: LCCOMB_X55_Y43_N20
\jugador_0|hexa5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|hexa5|Mux0~0_combout\ = (\jugador_0|contador3|q_reg\(0) & ((\jugador_0|bin3|Mux3~2_combout\) # (\jugador_0|bin3|Mux5~2_combout\ $ (\jugador_0|bin3|Mux4~2_combout\)))) # (!\jugador_0|contador3|q_reg\(0) & ((\jugador_0|bin3|Mux5~2_combout\) # 
-- (\jugador_0|bin3|Mux3~2_combout\ $ (\jugador_0|bin3|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin3|Mux5~2_combout\,
	datab => \jugador_0|bin3|Mux3~2_combout\,
	datac => \jugador_0|contador3|q_reg\(0),
	datad => \jugador_0|bin3|Mux4~2_combout\,
	combout => \jugador_0|hexa5|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y43_N18
\jugador_1|hexa5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa5|Mux0~0_combout\ = (\jugador_1|contador3|q_reg\(0) & ((\jugador_1|bin3|Mux3~2_combout\) # (\jugador_1|bin3|Mux4~2_combout\ $ (\jugador_1|bin3|Mux5~2_combout\)))) # (!\jugador_1|contador3|q_reg\(0) & ((\jugador_1|bin3|Mux5~2_combout\) # 
-- (\jugador_1|bin3|Mux3~2_combout\ $ (\jugador_1|bin3|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(0),
	datab => \jugador_1|bin3|Mux3~2_combout\,
	datac => \jugador_1|bin3|Mux4~2_combout\,
	datad => \jugador_1|bin3|Mux5~2_combout\,
	combout => \jugador_1|hexa5|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y43_N10
\mu4|y[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu4|y[6]~6_combout\ = (\ver_disp[0]~input_o\) # ((\ver_disp[1]~input_o\ & ((!\jugador_1|hexa5|Mux0~0_combout\))) # (!\ver_disp[1]~input_o\ & (!\jugador_0|hexa5|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|hexa5|Mux0~0_combout\,
	datab => \jugador_1|hexa5|Mux0~0_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \ver_disp[1]~input_o\,
	combout => \mu4|y[6]~6_combout\);

-- Location: LCCOMB_X54_Y41_N22
\jugador_1|bin3|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux2~1_combout\ = (\jugador_1|contador3|q_reg\(2) & (((\jugador_1|contador3|q_reg\(3))))) # (!\jugador_1|contador3|q_reg\(2) & ((\jugador_1|contador3|q_reg\(4) & (!\jugador_1|contador3|q_reg[1]~2_combout\ & 
-- !\jugador_1|contador3|q_reg\(3))) # (!\jugador_1|contador3|q_reg\(4) & ((\jugador_1|contador3|q_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(2),
	datab => \jugador_1|contador3|q_reg[1]~2_combout\,
	datac => \jugador_1|contador3|q_reg\(4),
	datad => \jugador_1|contador3|q_reg\(3),
	combout => \jugador_1|bin3|Mux2~1_combout\);

-- Location: LCCOMB_X54_Y41_N28
\jugador_1|bin3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux2~0_combout\ = (\jugador_1|contador3|q_reg\(2) & (\jugador_1|contador3|q_reg\(3) & ((\jugador_1|contador3|q_reg[1]~2_combout\) # (!\jugador_1|contador3|q_reg\(4))))) # (!\jugador_1|contador3|q_reg\(2) & ((\jugador_1|contador3|q_reg\(4) 
-- & ((!\jugador_1|contador3|q_reg\(3)))) # (!\jugador_1|contador3|q_reg\(4) & (\jugador_1|contador3|q_reg[1]~2_combout\ & \jugador_1|contador3|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(2),
	datab => \jugador_1|contador3|q_reg[1]~2_combout\,
	datac => \jugador_1|contador3|q_reg\(4),
	datad => \jugador_1|contador3|q_reg\(3),
	combout => \jugador_1|bin3|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y41_N24
\jugador_1|bin3|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux2~2_combout\ = (\jugador_1|contador3|q_reg\(5) & (!\jugador_1|bin3|Mux2~1_combout\)) # (!\jugador_1|contador3|q_reg\(5) & ((\jugador_1|bin3|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador3|q_reg\(5),
	datac => \jugador_1|bin3|Mux2~1_combout\,
	datad => \jugador_1|bin3|Mux2~0_combout\,
	combout => \jugador_1|bin3|Mux2~2_combout\);

-- Location: LCCOMB_X54_Y41_N4
\jugador_1|bin3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux1~0_combout\ = (\jugador_1|contador3|q_reg\(5) & ((\jugador_1|contador3|q_reg\(4) & (\jugador_1|contador3|q_reg\(2) & \jugador_1|contador3|q_reg\(3))) # (!\jugador_1|contador3|q_reg\(4) & ((!\jugador_1|contador3|q_reg\(3)))))) # 
-- (!\jugador_1|contador3|q_reg\(5) & (\jugador_1|contador3|q_reg\(4) & ((\jugador_1|contador3|q_reg\(2)) # (\jugador_1|contador3|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(2),
	datab => \jugador_1|contador3|q_reg\(5),
	datac => \jugador_1|contador3|q_reg\(4),
	datad => \jugador_1|contador3|q_reg\(3),
	combout => \jugador_1|bin3|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y41_N14
\jugador_1|bin3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|bin3|Mux0~0_combout\ = ((!\jugador_1|contador3|q_reg\(3) & !\jugador_1|contador3|q_reg\(4))) # (!\jugador_1|contador3|q_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(3),
	datab => \jugador_1|contador3|q_reg\(5),
	datac => \jugador_1|contador3|q_reg\(4),
	combout => \jugador_1|bin3|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y41_N22
\mu5|y~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~49_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|bin3|Mux1~0_combout\) # (\jugador_1|bin3|Mux2~2_combout\ $ (\jugador_1|bin3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_1|bin3|Mux2~2_combout\,
	datac => \jugador_1|bin3|Mux1~0_combout\,
	datad => \jugador_1|bin3|Mux0~0_combout\,
	combout => \mu5|y~49_combout\);

-- Location: LCCOMB_X47_Y41_N30
\jugador_0|bin3|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux2~1_combout\ = (\jugador_0|contador3|q_reg\(4) & ((\jugador_0|contador3|q_reg\(2) & (\jugador_0|contador3|q_reg\(3))) # (!\jugador_0|contador3|q_reg\(2) & (!\jugador_0|contador3|q_reg\(3) & !\jugador_0|contador3|q_reg[1]~2_combout\)))) 
-- # (!\jugador_0|contador3|q_reg\(4) & (((\jugador_0|contador3|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(4),
	datab => \jugador_0|contador3|q_reg\(2),
	datac => \jugador_0|contador3|q_reg\(3),
	datad => \jugador_0|contador3|q_reg[1]~2_combout\,
	combout => \jugador_0|bin3|Mux2~1_combout\);

-- Location: LCCOMB_X47_Y41_N24
\jugador_0|bin3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux2~0_combout\ = (\jugador_0|contador3|q_reg\(4) & ((\jugador_0|contador3|q_reg\(2) & (\jugador_0|contador3|q_reg\(3) & \jugador_0|contador3|q_reg[1]~2_combout\)) # (!\jugador_0|contador3|q_reg\(2) & (!\jugador_0|contador3|q_reg\(3))))) # 
-- (!\jugador_0|contador3|q_reg\(4) & (\jugador_0|contador3|q_reg\(3) & ((\jugador_0|contador3|q_reg\(2)) # (\jugador_0|contador3|q_reg[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(4),
	datab => \jugador_0|contador3|q_reg\(2),
	datac => \jugador_0|contador3|q_reg\(3),
	datad => \jugador_0|contador3|q_reg[1]~2_combout\,
	combout => \jugador_0|bin3|Mux2~0_combout\);

-- Location: LCCOMB_X47_Y41_N8
\jugador_0|bin3|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux2~2_combout\ = (\jugador_0|contador3|q_reg\(5) & (!\jugador_0|bin3|Mux2~1_combout\)) # (!\jugador_0|contador3|q_reg\(5) & ((\jugador_0|bin3|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|bin3|Mux2~1_combout\,
	datab => \jugador_0|contador3|q_reg\(5),
	datad => \jugador_0|bin3|Mux2~0_combout\,
	combout => \jugador_0|bin3|Mux2~2_combout\);

-- Location: LCCOMB_X47_Y41_N20
\jugador_0|bin3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux1~0_combout\ = (\jugador_0|contador3|q_reg\(4) & ((\jugador_0|contador3|q_reg\(5) & (\jugador_0|contador3|q_reg\(3) & \jugador_0|contador3|q_reg\(2))) # (!\jugador_0|contador3|q_reg\(5) & ((\jugador_0|contador3|q_reg\(3)) # 
-- (\jugador_0|contador3|q_reg\(2)))))) # (!\jugador_0|contador3|q_reg\(4) & (\jugador_0|contador3|q_reg\(5) & (!\jugador_0|contador3|q_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(4),
	datab => \jugador_0|contador3|q_reg\(5),
	datac => \jugador_0|contador3|q_reg\(3),
	datad => \jugador_0|contador3|q_reg\(2),
	combout => \jugador_0|bin3|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y41_N6
\jugador_0|bin3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_0|bin3|Mux0~0_combout\ = ((!\jugador_0|contador3|q_reg\(4) & !\jugador_0|contador3|q_reg\(3))) # (!\jugador_0|contador3|q_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(4),
	datac => \jugador_0|contador3|q_reg\(3),
	datad => \jugador_0|contador3|q_reg\(5),
	combout => \jugador_0|bin3|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y41_N16
\mu5|y~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~48_combout\ = (!\ver_disp[1]~input_o\ & ((\jugador_0|bin3|Mux1~0_combout\) # (\jugador_0|bin3|Mux2~2_combout\ $ (\jugador_0|bin3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_0|bin3|Mux2~2_combout\,
	datac => \jugador_0|bin3|Mux1~0_combout\,
	datad => \jugador_0|bin3|Mux0~0_combout\,
	combout => \mu5|y~48_combout\);

-- Location: LCCOMB_X55_Y41_N4
\mu5|y~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~50_combout\ = (\ver_disp[0]~input_o\) # ((!\mu5|y~49_combout\ & !\mu5|y~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu5|y~49_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \mu5|y~48_combout\,
	combout => \mu5|y~50_combout\);

-- Location: LCCOMB_X47_Y41_N18
\mu5|y~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~15_combout\ = (\jugador_0|contador3|q_reg\(2)) # ((\jugador_0|contador3|q_reg\(3)) # (\jugador_0|contador3|q_reg[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(2),
	datac => \jugador_0|contador3|q_reg\(3),
	datad => \jugador_0|contador3|q_reg[1]~2_combout\,
	combout => \mu5|y~15_combout\);

-- Location: LCCOMB_X54_Y41_N30
\mu5|y~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~63_combout\ = (\jugador_0|contador3|q_reg\(4) & (\mu5|y~15_combout\ & (!\ver_disp[1]~input_o\ & \jugador_0|contador3|q_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(4),
	datab => \mu5|y~15_combout\,
	datac => \ver_disp[1]~input_o\,
	datad => \jugador_0|contador3|q_reg\(5),
	combout => \mu5|y~63_combout\);

-- Location: LCCOMB_X54_Y41_N20
\mu5|y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~3_combout\ = (\jugador_1|contador3|q_reg[1]~2_combout\) # ((\jugador_1|contador3|q_reg\(2)) # (\jugador_1|contador3|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador3|q_reg[1]~2_combout\,
	datac => \jugador_1|contador3|q_reg\(2),
	datad => \jugador_1|contador3|q_reg\(3),
	combout => \mu5|y~3_combout\);

-- Location: LCCOMB_X54_Y41_N18
\mu5|y~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~62_combout\ = (\jugador_1|contador3|q_reg\(4) & (\ver_disp[1]~input_o\ & (\jugador_1|contador3|q_reg\(5) & \mu5|y~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(4),
	datab => \ver_disp[1]~input_o\,
	datac => \jugador_1|contador3|q_reg\(5),
	datad => \mu5|y~3_combout\,
	combout => \mu5|y~62_combout\);

-- Location: LCCOMB_X54_Y41_N0
\mu5|y~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~51_combout\ = (\mu5|y~63_combout\) # ((\ver_disp[0]~input_o\) # (\mu5|y~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu5|y~63_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \mu5|y~62_combout\,
	combout => \mu5|y~51_combout\);

-- Location: LCCOMB_X47_Y41_N28
\mu5|y[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y[2]~27_combout\ = (\jugador_0|contador3|q_reg\(2) & ((!\jugador_0|contador3|q_reg[1]~2_combout\) # (!\jugador_0|contador3|q_reg\(3)))) # (!\jugador_0|contador3|q_reg\(2) & (\jugador_0|contador3|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(2),
	datac => \jugador_0|contador3|q_reg\(3),
	datad => \jugador_0|contador3|q_reg[1]~2_combout\,
	combout => \mu5|y[2]~27_combout\);

-- Location: LCCOMB_X47_Y41_N14
\mu5|y[2]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y[2]~64_combout\ = (!\jugador_0|contador3|q_reg\(5) & (\jugador_0|contador3|q_reg\(4) & \mu5|y[2]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_0|contador3|q_reg\(5),
	datac => \jugador_0|contador3|q_reg\(4),
	datad => \mu5|y[2]~27_combout\,
	combout => \mu5|y[2]~64_combout\);

-- Location: LCCOMB_X54_Y41_N8
\jugador_1|hexa6|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa6|Mux4~3_combout\ = (\jugador_1|contador3|q_reg\(2) & ((!\jugador_1|contador3|q_reg\(3)) # (!\jugador_1|contador3|q_reg[1]~2_combout\))) # (!\jugador_1|contador3|q_reg\(2) & ((\jugador_1|contador3|q_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jugador_1|contador3|q_reg[1]~2_combout\,
	datac => \jugador_1|contador3|q_reg\(2),
	datad => \jugador_1|contador3|q_reg\(3),
	combout => \jugador_1|hexa6|Mux4~3_combout\);

-- Location: LCCOMB_X54_Y41_N10
\jugador_1|hexa6|Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \jugador_1|hexa6|Mux4~6_combout\ = (\jugador_1|contador3|q_reg\(4) & (\jugador_1|hexa6|Mux4~3_combout\ & !\jugador_1|contador3|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(4),
	datab => \jugador_1|hexa6|Mux4~3_combout\,
	datac => \jugador_1|contador3|q_reg\(5),
	combout => \jugador_1|hexa6|Mux4~6_combout\);

-- Location: LCCOMB_X54_Y41_N26
\mu5|y[2]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y[2]~52_combout\ = (\ver_disp[0]~input_o\) # ((\ver_disp[1]~input_o\ & ((\jugador_1|hexa6|Mux4~6_combout\))) # (!\ver_disp[1]~input_o\ & (\mu5|y[2]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[0]~input_o\,
	datab => \mu5|y[2]~64_combout\,
	datac => \ver_disp[1]~input_o\,
	datad => \jugador_1|hexa6|Mux4~6_combout\,
	combout => \mu5|y[2]~52_combout\);

-- Location: LCCOMB_X55_Y41_N20
\mu5|y~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~54_combout\ = (!\ver_disp[1]~input_o\ & ((\jugador_0|bin3|Mux2~2_combout\ & (\jugador_0|bin3|Mux1~0_combout\ $ (\jugador_0|bin3|Mux0~0_combout\))) # (!\jugador_0|bin3|Mux2~2_combout\ & (!\jugador_0|bin3|Mux1~0_combout\ & 
-- !\jugador_0|bin3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_0|bin3|Mux2~2_combout\,
	datac => \jugador_0|bin3|Mux1~0_combout\,
	datad => \jugador_0|bin3|Mux0~0_combout\,
	combout => \mu5|y~54_combout\);

-- Location: LCCOMB_X55_Y41_N18
\mu5|y~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~53_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|bin3|Mux2~2_combout\ & (\jugador_1|bin3|Mux1~0_combout\ $ (\jugador_1|bin3|Mux0~0_combout\))) # (!\jugador_1|bin3|Mux2~2_combout\ & (!\jugador_1|bin3|Mux1~0_combout\ & 
-- !\jugador_1|bin3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_1|bin3|Mux2~2_combout\,
	datac => \jugador_1|bin3|Mux1~0_combout\,
	datad => \jugador_1|bin3|Mux0~0_combout\,
	combout => \mu5|y~53_combout\);

-- Location: LCCOMB_X55_Y41_N14
\mu5|y~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~55_combout\ = (\mu5|y~54_combout\) # ((\ver_disp[0]~input_o\) # (\mu5|y~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mu5|y~54_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \mu5|y~53_combout\,
	combout => \mu5|y~55_combout\);

-- Location: LCCOMB_X55_Y41_N26
\mu5|y~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~57_combout\ = (!\ver_disp[1]~input_o\ & ((\jugador_0|bin3|Mux2~2_combout\) # ((!\jugador_0|bin3|Mux1~0_combout\ & !\jugador_0|bin3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_0|bin3|Mux2~2_combout\,
	datac => \jugador_0|bin3|Mux1~0_combout\,
	datad => \jugador_0|bin3|Mux0~0_combout\,
	combout => \mu5|y~57_combout\);

-- Location: LCCOMB_X55_Y41_N24
\mu5|y~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~56_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|bin3|Mux2~2_combout\) # ((!\jugador_1|bin3|Mux1~0_combout\ & !\jugador_1|bin3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_1|bin3|Mux2~2_combout\,
	datac => \jugador_1|bin3|Mux1~0_combout\,
	datad => \jugador_1|bin3|Mux0~0_combout\,
	combout => \mu5|y~56_combout\);

-- Location: LCCOMB_X55_Y41_N28
\mu5|y~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~58_combout\ = (\mu5|y~57_combout\) # ((\ver_disp[0]~input_o\) # (\mu5|y~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu5|y~57_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \mu5|y~56_combout\,
	combout => \mu5|y~58_combout\);

-- Location: LCCOMB_X55_Y41_N12
\mu5|y~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~60_combout\ = (\ver_disp[1]~input_o\ & ((\jugador_1|bin3|Mux2~2_combout\ & ((\jugador_1|bin3|Mux1~0_combout\) # (\jugador_1|bin3|Mux0~0_combout\))) # (!\jugador_1|bin3|Mux2~2_combout\ & (\jugador_1|bin3|Mux1~0_combout\ & 
-- \jugador_1|bin3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_1|bin3|Mux2~2_combout\,
	datac => \jugador_1|bin3|Mux1~0_combout\,
	datad => \jugador_1|bin3|Mux0~0_combout\,
	combout => \mu5|y~60_combout\);

-- Location: LCCOMB_X55_Y41_N10
\mu5|y~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~59_combout\ = (!\ver_disp[1]~input_o\ & ((\jugador_0|bin3|Mux2~2_combout\ & ((\jugador_0|bin3|Mux1~0_combout\) # (\jugador_0|bin3|Mux0~0_combout\))) # (!\jugador_0|bin3|Mux2~2_combout\ & (\jugador_0|bin3|Mux1~0_combout\ & 
-- \jugador_0|bin3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_disp[1]~input_o\,
	datab => \jugador_0|bin3|Mux2~2_combout\,
	datac => \jugador_0|bin3|Mux1~0_combout\,
	datad => \jugador_0|bin3|Mux0~0_combout\,
	combout => \mu5|y~59_combout\);

-- Location: LCCOMB_X55_Y41_N6
\mu5|y~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~61_combout\ = (\mu5|y~60_combout\) # ((\ver_disp[0]~input_o\) # (\mu5|y~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu5|y~60_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \mu5|y~59_combout\,
	combout => \mu5|y~61_combout\);

-- Location: LCCOMB_X54_Y41_N12
\mu5|y~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~66_combout\ = (!\ver_disp[1]~input_o\ & (((!\jugador_0|contador3|q_reg\(2) & !\jugador_0|contador3|q_reg\(3))) # (!\jugador_0|contador3|q_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_0|contador3|q_reg\(4),
	datab => \jugador_0|contador3|q_reg\(2),
	datac => \ver_disp[1]~input_o\,
	datad => \jugador_0|contador3|q_reg\(3),
	combout => \mu5|y~66_combout\);

-- Location: LCCOMB_X54_Y41_N16
\mu5|y~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~42_combout\ = (!\jugador_1|contador3|q_reg\(3) & !\jugador_1|contador3|q_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(3),
	datac => \jugador_1|contador3|q_reg\(2),
	combout => \mu5|y~42_combout\);

-- Location: LCCOMB_X54_Y41_N2
\mu5|y~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~65_combout\ = (\ver_disp[1]~input_o\ & (!\jugador_1|contador3|q_reg\(5) & ((\mu5|y~42_combout\) # (!\jugador_1|contador3|q_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jugador_1|contador3|q_reg\(4),
	datab => \ver_disp[1]~input_o\,
	datac => \jugador_1|contador3|q_reg\(5),
	datad => \mu5|y~42_combout\,
	combout => \mu5|y~65_combout\);

-- Location: LCCOMB_X54_Y41_N6
\mu5|y~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mu5|y~67_combout\ = (\mu5|y~65_combout\) # ((\ver_disp[0]~input_o\) # ((\mu5|y~66_combout\ & !\jugador_0|contador3|q_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mu5|y~66_combout\,
	datab => \mu5|y~65_combout\,
	datac => \ver_disp[0]~input_o\,
	datad => \jugador_0|contador3|q_reg\(5),
	combout => \mu5|y~67_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_display_0(0) <= \display_0[0]~output_o\;

ww_display_0(1) <= \display_0[1]~output_o\;

ww_display_0(2) <= \display_0[2]~output_o\;

ww_display_0(3) <= \display_0[3]~output_o\;

ww_display_0(4) <= \display_0[4]~output_o\;

ww_display_0(5) <= \display_0[5]~output_o\;

ww_display_0(6) <= \display_0[6]~output_o\;

ww_display_1(0) <= \display_1[0]~output_o\;

ww_display_1(1) <= \display_1[1]~output_o\;

ww_display_1(2) <= \display_1[2]~output_o\;

ww_display_1(3) <= \display_1[3]~output_o\;

ww_display_1(4) <= \display_1[4]~output_o\;

ww_display_1(5) <= \display_1[5]~output_o\;

ww_display_1(6) <= \display_1[6]~output_o\;

ww_display_2(0) <= \display_2[0]~output_o\;

ww_display_2(1) <= \display_2[1]~output_o\;

ww_display_2(2) <= \display_2[2]~output_o\;

ww_display_2(3) <= \display_2[3]~output_o\;

ww_display_2(4) <= \display_2[4]~output_o\;

ww_display_2(5) <= \display_2[5]~output_o\;

ww_display_2(6) <= \display_2[6]~output_o\;

ww_display_3(0) <= \display_3[0]~output_o\;

ww_display_3(1) <= \display_3[1]~output_o\;

ww_display_3(2) <= \display_3[2]~output_o\;

ww_display_3(3) <= \display_3[3]~output_o\;

ww_display_3(4) <= \display_3[4]~output_o\;

ww_display_3(5) <= \display_3[5]~output_o\;

ww_display_3(6) <= \display_3[6]~output_o\;

ww_display_4(0) <= \display_4[0]~output_o\;

ww_display_4(1) <= \display_4[1]~output_o\;

ww_display_4(2) <= \display_4[2]~output_o\;

ww_display_4(3) <= \display_4[3]~output_o\;

ww_display_4(4) <= \display_4[4]~output_o\;

ww_display_4(5) <= \display_4[5]~output_o\;

ww_display_4(6) <= \display_4[6]~output_o\;

ww_display_5(0) <= \display_5[0]~output_o\;

ww_display_5(1) <= \display_5[1]~output_o\;

ww_display_5(2) <= \display_5[2]~output_o\;

ww_display_5(3) <= \display_5[3]~output_o\;

ww_display_5(4) <= \display_5[4]~output_o\;

ww_display_5(5) <= \display_5[5]~output_o\;

ww_display_5(6) <= \display_5[6]~output_o\;
END structure;


