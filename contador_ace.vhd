library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.my_components.all;

entity contador_ace is
port(
signal clk : in std_logic;
signal en: in std_logic;
signal reset_n: in std_logic;
signal mov_u: out std_logic_vector(6 downto 0);
signal mov_d: out std_logic_vector(6 downto 0);
signal mov_c: out std_logic_vector(6 downto 0);
signal mov_gt40: out std_logic);
end contador_ace;

architecture arq of contador_ace is
signal q_reg_u, q_reg_d, q_reg_c: unsigned(3 downto 0);
signal q_next_u, q_next_d, q_next_c: unsigned(3 downto 0);

begin
process(reset_n,clk)
begin
if reset_n = '0' then
q_reg_u <= (others => '0');
q_reg_d <= (others => '0');
q_reg_c <= (others => '0');
elsif rising_edge(clk) then
q_reg_u <= q_next_u;
q_reg_d <= q_next_d;
q_reg_c <= q_next_c;
end if;
end process;


process(en,q_reg_u,q_reg_d,q_reg_c,q_next_u,q_next_d,q_next_c)
begin
if en = '0' then 
q_next_u <= q_reg_u;
q_next_d <= q_reg_d;
q_next_c <= q_reg_c;
else
q_next_u <= q_reg_u + 1;

if q_reg_u = 9 then 
q_next_u <= (others => '0');
q_next_d <= q_reg_d + 1;
end if;


if q_reg_d = 9 then 
q_next_d <= (others => '0');
q_next_c <= q_reg_c + 1;
end if;

if q_reg_u = 2 and q_reg_d = 5 and q_reg_c = 6 then
q_next_u <= (others => '0');
q_next_d <= (others => '0');
q_next_c <= (others => '0');
end if;
end if;
end process;

process(q_reg_u,q_reg_d)
begin

if q_reg_d >= 4 and q_reg_u >= 0 then
mov_gt40 <= '1';
else
mov_gt40 <= '0';
end if;
end process;

hexa_u: hexa port map(a => std_logic_vector(q_reg_u), f => mov_u);
hexa_d: hexa port map(a => std_logic_vector(q_reg_d), f => mov_d);
hexa_c: hexa port map(a => std_logic_vector(q_reg_c), f => mov_c);
end arq;