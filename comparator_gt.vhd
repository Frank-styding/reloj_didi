library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity comparator_gt is
generic(width: natural := 6);
port(
signal a: in std_logic_vector(width - 1 downto 0);
signal b: in std_logic_vector(width - 1 downto 0);
signal gt: out std_logic);
end comparator_gt;

architecture arq of comparator_gt is
begin
gt <= '1' when a > b else '0';
end arq;