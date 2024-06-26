library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
entity counter_dect is
generic(N:natural := 16);
port(
    signal clk: in std_logic;
    signal en: in std_logic;
    signal reset_n: in std_logic;
    signal detected: out std_logic;
    signal f: out std_logic_vector(7 downto 0));
end counter_dect;

architecture arq of counter_dect is
signal q_reg, q_next: unsigned(7 downto 0);
begin

process(clk,reset_n)
begin
if reset_n = '0' then
q_reg <= (others => '0');
elsif rising_edge(clk) then 
q_reg <= q_next;
end if;
end process;

process(en,q_reg)
begin
if en = '0' then
q_next <= q_reg;
else
if q_reg >= N then 
detected <= '1';
else
detected <= '0';
end if;
if q_reg = 255 then
    q_next <= (others => '0');
else
q_next <= q_reg +1;
end if;
end if;
end process;
f <= std_logic_vector(q_reg);
end arq;