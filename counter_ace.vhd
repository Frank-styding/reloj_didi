library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.my_components_reloj.all;
use work.my_components.all;
entity counter_ace is
port(
signal clk : in std_logic;
signal en: in std_logic;
signal reset_n: in std_logic;
signal mov_u: out std_logic_vector(6 downto 0);
signal mov_d: out std_logic_vector(6 downto 0);
signal mov_c: out std_logic_vector(6 downto 0);
signal mov_gt40: out std_logic);
end counter_ace;

architecture arq of counter_ace is
signal out_binto: std_logic_vector(11 downto 0);
signal f : std_logic_vector(7 downto 0);
begin
counter_1: counter_dect generic map(N => 40) port map(clk => clk, en => en, reset_n => reset_n,detected => mov_gt40, f => f);
binto1: bintobcd255 port map(a => f,f => out_binto);
hexa0: hexa port map(a => out_binto(3 downto 0), f=> mov_u);
hexa1: hexa port map(a => out_binto(7 downto 4), f=> mov_d);
hexa2: hexa port map(a => out_binto(11 downto 8), f=> mov_c);
end arq;