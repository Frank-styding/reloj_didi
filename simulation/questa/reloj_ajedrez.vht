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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "06/13/2024 20:32:47"
                                                            
-- Vhdl Test Bench template for design  :  reloj_ajedrez
-- 
-- Simulation tool : Questa Intel FPGA (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY reloj_ajedrez_tb IS
END reloj_ajedrez_tb;
ARCHITECTURE reloj_ajedrez_arch OF reloj_ajedrez_tb IS
-- constants                                              
constant periodo: time := 10ns;
constant reiniciar: natural := 30;
constant contar_tiempo: natural := 60 * 60 * 20;
constant para_tiempo: natural := 30;
constant continuar_tiempo: natural := 30;
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL config : STD_LOGIC;
SIGNAL display_0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL display_1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL display_2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL display_3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL display_4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL display_5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ini_pausa : STD_LOGIC;
SIGNAL jugador_act : STD_LOGIC;
SIGNAL modo : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL reset_n : STD_LOGIC;
SIGNAL ver_disp : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT reloj_ajedrez
	PORT (
	clk : IN STD_LOGIC;
	config : IN STD_LOGIC;
	display_0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	display_1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	display_2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	display_3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	display_4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	display_5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ini_pausa : IN STD_LOGIC;
	jugador_act : IN STD_LOGIC;
	modo : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	reset_n : IN STD_LOGIC;
	ver_disp : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : reloj_ajedrez
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	config => config,
	display_0 => display_0,
	display_1 => display_1,
	display_2 => display_2,
	display_3 => display_3,
	display_4 => display_4,
	display_5 => display_5,
	ini_pausa => ini_pausa,
	jugador_act => jugador_act,
	modo => modo,
	reset_n => reset_n,
	ver_disp => ver_disp
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                       
clk <= '1';
wait for periodo /2;
clk <= '0';
wait for periodo /2;                                                   
END PROCESS init;                                     
always : PROCESS 
                                                                         
BEGIN

reset_n <= '0';
config <= '0';
jugador_act <= '0';
modo <= "10";
ver_disp <= "00";
ini_pausa <= '0';
wait for 100 * 10 * periodo;

reset_n <= '1';
config <= '0';
jugador_act <= '0';
modo <= "10";
ver_disp <= "00";
ini_pausa <= '0';
wait for 100 * 10 * periodo;


reset_n <= '1';
config <= '1';
jugador_act <= '0';
modo <= "10";
ver_disp <= "00";
ini_pausa <= '0';
wait for 100 * 30 * periodo;


reset_n <= '1';
config <= '0';
jugador_act <= '0';
modo <= "10";
ver_disp <= "00";
ini_pausa <= '0';
wait for 100 * 30 * periodo;


for i in 55 downto 0 loop
reset_n <= '1';
config <= '0';
jugador_act <= '0';
modo <= "10";
ver_disp <= "00";
ini_pausa <= '1';
wait for 100 * 40 * periodo;

reset_n <= '1';
config <= '0';
jugador_act <= '1';
modo <= "10";
ver_disp <= "00";
ini_pausa <= '1';
wait for 100 * 60 * 60 * periodo;
end loop;




assert false severity failure;                                                       
END PROCESS always;                                          
END reloj_ajedrez_arch;
