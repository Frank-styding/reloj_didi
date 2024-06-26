library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_components.all;

entity light_controller is
port(signal reset_n: in std_logic;
	  signal clk: in std_logic;
	  signal en: in std_logic;
	  signal jugador: in std_logic;
	  signal leds: out std_logic_vector(9 downto 0));
end light_controller;

architecture struct_0 of light_controller is
signal sel_in: std_logic;
signal x_in_1: std_logic_vector(9 downto 0);
signal x_in_2: std_logic_vector(9 downto 0);
signal x_in: std_logic_vector(9 downto 0);
signal sel_next:std_logic;
signal clk_o:std_logic;
begin
div: divisor_freq port map(clk => clk, clk_o => clk_o, reset_n => reset_n);

sel_next <= sel_in;
process(clk_o,sel_next,sel_in)
begin

if rising_edge(clk_o) then 
if sel_next = '1' then
sel_in <= '0';
else
sel_in <= '1';
end if;
end if;
end process;

p1:process(jugador,x_in_1,x_in_2,x_in)
begin
	if(jugador='0') then
		x_in_1<="1010100000";
		x_in_2<="0101000000";
	else
		x_in_1<="0000010101";
		x_in_2<="0000001010";
	end if;
end process p1;

p4:process(en,sel_in,x_in,x_in_1,x_in_2)
begin
   if(sel_in='0') then
		x_in<=x_in_1;
	else
		x_in<=x_in_2;
	end if;

	if(en='0') then
		leds<=x_in;
	else
		leds<="0000000000";
	end if;
end process p4;
end struct_0;