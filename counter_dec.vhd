library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity counter_dec is
generic(
width: natural := 5;
N:natural := 24);
port(
signal reset_n: in std_logic;
signal en: in std_logic;
signal clk: in std_logic;
signal start: in std_logic_vector(width - 1 downto 0);
signal q: out std_logic_vector(width - 1 downto 0));
end counter_dec;
architecture arq of counter_dec is
signal q_reg, q_next: unsigned(width - 1 downto 0);
begin


process(clk, reset_n , start)
begin

if reset_n = '0' then
q_reg <= unsigned(start);
elsif rising_edge(clk) then 
q_reg <= q_next;
end if;
end process;


process(en, q_reg)
begin
if en = '0' then
q_next <= q_reg;
elsif q_reg = 0 then
q_next <= to_unsigned(N - 1, width);
else
q_next <= q_reg - 1;
end if;
end process;

q <= std_logic_vector(q_reg);

end arq;