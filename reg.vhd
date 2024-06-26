library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity reg is 
port(
signal en: in std_logic;
signal clk: in std_logic;
signal reset_n: in std_logic;
signal q: in std_logic_vector(1 downto 0);
signal q_reg: out std_logic_vector(1 downto 0));
end reg;

architecture arq of reg is
signal q_next, q_reg_1: unsigned(1 downto 0);
begin

process(clk,reset_n)
begin
if reset_n = '0' then
q_reg_1 <= (others => '0');
elsif rising_edge(clk) then
q_reg_1 <= q_next;
end if;
end process;

process(en,q,q_next,q_reg_1)
begin
if en = '0' then
q_next <= q_reg_1;
else 
q_next <= unsigned(q);
end if;
end process;

q_reg <= std_logic_vector(q_reg_1);
end arq;
