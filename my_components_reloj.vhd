library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package my_components_reloj is

component reloj is
generic (N         : natural := 50000000);
port(
signal clk:in std_logic;
signal sel:in std_logic_vector(1 downto 0);
signal ini_pausa: in std_logic;
signal borrar: in std_logic;
signal reset_1h: in std_logic;
signal time_gt40: out std_logic;
signal min_value: out std_logic;
signal display_0: out std_logic_vector(6 downto 0);
signal display_1: out std_logic_vector(6 downto 0);
signal display_2: out std_logic_vector(6 downto 0);
signal display_3: out std_logic_vector(6 downto 0);
signal display_4: out std_logic_vector(6 downto 0);
signal display_5: out std_logic_vector(6 downto 0));
end component;

component mux4a1 is
port ( x0 : in std_logic_vector(6 downto 0);
		 x1 : in std_logic_vector(6 downto 0);
		 x2 : in std_logic_vector(6 downto 0);
		 x3 : in std_logic_vector(6 downto 0);
		 sel : in std_logic_vector(1 downto 0);
		 y : out std_logic_vector(6 downto 0));
	
end component;

component reg is 
port(
signal en: in std_logic;
signal clk: in std_logic;
signal reset_n: in std_logic;
signal q: in std_logic_vector(1 downto 0);
signal q_reg: out std_logic_vector(1 downto 0));
end component;


component fsm is
port(signal modo: in std_logic_vector(1 downto 0);
     signal clk: in std_logic;
     signal en: in std_logic;
	  signal mov_j0_gt40: in std_logic;
	  signal mov_j1_gt40: in std_logic;
	  signal min_value_j0: in std_logic;
	  signal min_value_j1: in std_logic;
	  signal config: in std_logic;
	  signal ini_pausa: in std_logic;
	  signal reset_n: in std_logic;
	  signal jugador_act: in std_logic;
	  
	  signal ini_pausa_j0: out std_logic;
	  signal borrar_j0: out std_logic;
	  signal en_j0: out std_logic;
	  signal ini_pausa_j1: out std_logic;
	  signal borrar_j1: out std_logic;
	  signal en_j1: out std_logic;
	  signal en_sel: out std_logic;
	  signal leds: out std_logic_vector(9 downto 0));
	
end component;





component contador_ace is
port(
signal clk : in std_logic;
signal en: in std_logic;
signal reset_n: in std_logic;
signal mov_u: out std_logic_vector(6 downto 0);
signal mov_d: out std_logic_vector(6 downto 0);
signal mov_c: out std_logic_vector(6 downto 0);
signal mov_gt40: out std_logic);
end component;

end package;