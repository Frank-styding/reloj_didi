library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity comparator is

generic( width:natural := 5 );

port(
signal A: in std_logic_vector(width - 1 downto 0);
signal B: in std_logic_vector(width -1 downto 0);
signal EQ: out std_logic);

end comparator;

architecture arq of comparator is 
begin

process(A,B)
begin
if A = B then
EQ <= '1';
else
EQ <= '0';
end if;
end process;
end arq;