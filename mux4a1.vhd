library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux4a1 is
port ( x0 : in std_logic_vector(6 downto 0);
		 x1 : in std_logic_vector(6 downto 0);
		 x2 : in std_logic_vector(6 downto 0);
		 x3 : in std_logic_vector(6 downto 0);
		 sel : in std_logic_vector(1 downto 0);
		 y : out std_logic_vector(6 downto 0));
	
end mux4a1;

architecture structural of mux4a1 is
begin
	 
	 process (x0,x1,x2,x3,sel)
	 begin
	 if sel = "00" then
	 y<=x0;
	 elsif sel = "01" then
	 y<=x1;
	 elsif sel = "10" then
	 y<=x2;
	 elsif sel = "11" then
	 y<=x3;
	 else 
	 y<=x0;
	 end if;
	 end process;
end structural;