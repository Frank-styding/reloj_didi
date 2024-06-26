library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_components_reloj.all;
use work.my_components.all;

entity reloj_ajedrez is
port(signal reset_n: in std_logic;
signal clk: in std_logic;
signal config: in std_logic;
signal ini_pausa: in std_logic;
signal jugador_act: in std_logic;
signal modo: in std_logic_vector(1 downto 0);
signal ver_disp: in std_logic_vector(1 downto 0);
-------------------------------------------------------------------------------------
--signal 
--signal
-------------------------------------------------------------------------------------
signal display_0: out std_logic_vector(6 downto 0);
signal display_1: out std_logic_vector(6 downto 0);
signal display_2: out std_logic_vector(6 downto 0);
signal display_3: out std_logic_vector(6 downto 0);
signal display_4: out std_logic_vector(6 downto 0);
signal display_5: out std_logic_vector(6 downto 0);
signal leds: out std_logic_vector(9 downto 0));
end reloj_ajedrez;

architecture arq of reloj_ajedrez is
signal min_value_j0, min_value_j1, borrar_j0, ini_pausa_j0, ini_pausa_j1, borrar_j1, mov_j0_gt40,mov_j1_gt40, en_j0, en_j1 :std_logic;
signal reset_1h_j0, reset_1h_j1, time_gt1h_j0, time_gt1h_j1:std_logic;
signal en, en_sel, en_and_en_j0, en_and_en_j1:std_logic; 
signal gt_16_j0,gt_16_j1:std_logic;
signal en_light,looser_sel:std_logic;
signal en_and_en_j1_and_mov_j1_gt40, en_and_en_j0_and_mov_j0_gt40: std_logic;


signal mode_reg: std_logic_vector(1 downto 0);
signal display_0_i0, display_0_i1, display_1_i0, display_1_i1, display_2_i0, display_2_i1, display_3_i0, display_3_i1, display_4_i0, display_4_i1, display_5_i0, display_5_i1, mov_u_j0,mov_d_j0,mov_c_j0,mov_u_j1,mov_d_j1,mov_c_j1: std_logic_vector(6 downto 0);

constant const1: std_logic_vector(6 downto 0) := "1111111";
begin

div: divisor_freq generic map(N => 10, BUS_WIDTH => 26) port map(clk => clk, clk_o => en, reset_n => reset_n);


jugador_0: reloj generic map(N => 1000) port map(
clk => clk, 
sel => mode_reg, 
ini_pausa => ini_pausa_j0, 
borrar => borrar_j0,
time_gt1h => time_gt1h_j0,
reset_1h => reset_1h_j0,
min_Value => min_value_j0, 
display_0 => display_0_i0, 
display_1 => display_1_i0,
display_2 => display_2_i0,
display_3 => display_3_i0,
display_4 => display_4_i0,
display_5 => display_5_i0);

jugador_1: reloj generic map(N => 1000) port map(
clk => clk, 
sel => mode_reg, 
ini_pausa => ini_pausa_j1, 
borrar => borrar_j1, 
time_gt1h => time_gt1h_j1,
reset_1h => reset_1h_j1,
min_Value => min_value_j1, 
display_0 => display_0_i1, 
display_1 => display_1_i1,
display_2 => display_2_i1,
display_3 => display_3_i1,
display_4 => display_4_i1,
display_5 => display_5_i1);



mu0: mux4a1 port map(
x0 => display_0_i0,
x1 => mov_u_j0,
x2 => display_0_i1,
x3 => mov_u_j1, 
y  => display_0 , 
sel => ver_disp);

mu1: mux4a1 port map(
x0 => display_1_i0,
x1 => mov_d_j0,
x2 => display_1_i1,
x3 => mov_d_j1, 
y  => display_1 , 
sel => ver_disp);

mu2: mux4a1 port map(
x0 => display_2_i0,
x1 => mov_c_j0,
x2 => display_2_i1,
x3 => mov_c_j1,
y  => display_2 , 
sel => ver_disp);

mu3: mux4a1 port map(
x0 => display_3_i0,
x1 => const1,
x2 => display_3_i1,
x3 => const1, 
y  => display_3 , 
sel => ver_disp);

mu4: mux4a1 port map(
x0 => display_4_i0,
x1 => const1,
x2 => display_4_i1,
x3 => const1, 
y  => display_4 , 
sel => ver_disp);


mu5: mux4a1 port map(
x0 => display_5_i0,
x1 => const1,
x2 => display_5_i1,
x3 => const1, 
y  => display_5, 
sel => ver_disp);

reg0: reg port map(
reset_n => reset_n,
en => en_sel,
q=> modo,
clk => clk,
q_reg => mode_reg);


fsm1: fsm port map(
reset_n=> reset_n,
clk => clk,
en => en,
config => config,
ini_pausa => ini_pausa,
jugador_act => jugador_act,
modo => modo,
min_value_j0 => min_value_j0,
min_value_j1 => min_value_j1,
ini_pausa_j0 => ini_pausa_j0,
ini_pausa_j1 => ini_pausa_j1,
borrar_j1 => borrar_j1,
borrar_j0 => borrar_j0,
en_j1 => en_j1,
en_j0 => en_j0,
mov_j0_gt40 => mov_j0_gt40,
mov_j1_gt40 => mov_j1_gt40,
en_sel => en_sel,
gt_1h_j0 => time_gt1h_j0,
gt_1h_j1 => time_gt1h_j1,
gt_16_j1 => gt_16_j1,
gt_16_j0 => gt_16_j0,
reset_1h_j0 => reset_1h_j0,
reset_1h_j1 => reset_1h_j1,
looser_sel => looser_sel,
en_light => en_light);


con_j1: counter_ace port map(
en => en_and_en_j1,
clk => clk,
reset_n => reset_n,
mov_u => mov_u_j1,
mov_d => mov_d_j1,
mov_gt40 => mov_j1_gt40,
mov_c => mov_c_j1);


con_j0: counter_ace port map(
en => en_and_en_j0,
clk => clk,
reset_n => reset_n,
mov_u => mov_u_j0,
mov_d => mov_d_j0,
mov_c => mov_c_j0,
mov_gt40 => mov_j0_gt40);

en_and_en_j0 <= en and en_j0;
en_and_en_j1 <= en and en_j1;
en_and_en_j1_and_mov_j1_gt40 <= en_and_en_j1 and mov_j1_gt40;
en_and_en_j0_and_mov_j0_gt40 <= en_and_en_j0 and mov_j0_gt40;

con1_j0: counter_dect port map(
clk => clk,
en => en_and_en_j0_and_mov_j0_gt40,
reset_n => reset_n,
detected => gt_16_j0);

con1_j1: counter_dect port map(
clk => clk,
en => en_and_en_j1_and_mov_j1_gt40,
reset_n => reset_n,
detected => gt_16_j1);


ligth_controller1: light_controller port map(clk => clk, reset_n => reset_n, leds => leds,en => en_light, jugador=>looser_sel );






end arq;