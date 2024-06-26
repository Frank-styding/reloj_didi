library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.my_components.all;

entity reloj is
generic (N         : natural := 50000000;        
           BUS_WIDTH : natural := 26);
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
end reloj;

architecture arq of reloj is 
signal clk_en, en_seg, g_reset_n, en_min,en_hor, min_seg, min_min, min_hor,max_seg,max_min, max_hor,reset_n,max_value: std_logic;
signal aux1,aux2,aux3: std_logic_vector(7 downto 0);
signal seg,min,hor,start_hor,start_min,start_seg: std_logic_vector(5 downto 0);

constant numero_0: std_logic_vector(5 downto 0)  := "000000";
constant numero_23: std_logic_vector(5 downto 0) := "010111";
constant numero_59: std_logic_vector(5 downto 0) := "111011";
constant numero_1: std_logic_vector(5 downto 0)  := "000001";
 



constant blitz_hor: std_logic_vector(5 downto 0) :=  "000000";
constant blitz_min: std_logic_vector(5 downto 0) := "000101";
constant blitz_seg: std_logic_vector(5 downto 0) :=  "000000";

constant rapid_hor: std_logic_vector(5 downto 0) :=  "000000";
constant rapid_min: std_logic_vector(5 downto 0) :=  "011001";
constant rapid_seg: std_logic_vector(5 downto 0) :=  "000000";

constant word_hor: std_logic_vector(5 downto 0) :=  "000010";
constant word_min: std_logic_vector(5 downto 0) :=  "000000";
constant word_seg: std_logic_vector(5 downto 0) :=  "000000";

constant manual_hor: std_logic_vector(5 downto 0) :=  "000000";
constant manual_min: std_logic_vector(5 downto 0) :=  "000000";
constant manual_seg: std_logic_vector(5 downto 0) :=  "000101";


begin





divisor1: divisor_freq generic map(N => N,BUS_WIDTH => 26) port map(clk_o => clk_en, reset_n => reset_n, clk => clk );

en_seg <= clk_en and ini_pausa;

g_reset_n <= (reset_n and (ini_pausa or (not borrar)));

en_min <= (en_seg and min_seg);


en_hor <= ( en_min and min_min );

max_value <= max_hor and max_min and max_seg;
min_value <= (min_seg and min_min and min_hor);
 
reset_n <= ((ini_pausa) or (not borrar)) and ((not max_value) or (not reset_1h));


------

process(sel,reset_1h)
begin

if reset_1h = '1' then
start_hor <= numero_1;
start_min <= numero_0;
start_seg <= numero_0;
else
if sel = "00" then
start_hor <= blitz_hor;
start_min <= blitz_min;
start_seg <= blitz_seg;
elsif sel = "01" then 
start_hor <= rapid_hor;
start_min <= rapid_min;
start_seg <= rapid_seg;
elsif sel = "10" then 
start_hor <= word_hor;
start_min <= word_min;
start_seg <= word_seg;
elsif sel = "11" then 
start_hor <= manual_hor;
start_min <= manual_min;
start_seg <= manual_seg;
else
start_hor <= blitz_hor;
start_min <= blitz_min;
start_seg <= blitz_seg;
end if;
end if;
end process;

-------
contador1: counter generic map ( width => 6, N => 60 ) port map( reset_n => g_reset_n, en => en_seg, clk => clk, start => start_seg, q => seg );
comporador1:  comparator generic map(width => 6) port map (A => seg, B => numero_0, EQ => min_seg);
comporador10:  comparator generic map(width => 6) port map (A => seg, B => numero_59, EQ => max_seg);
bin1: bintobcd port map ( a => seg, f => aux1);
hexa1: hexa port map (a => aux1(3 downto 0), f => display_0);
hexa2: hexa port map (a => aux1(7 downto 4), f => display_1);

---------
contador2: counter generic map ( width => 6, N => 60 ) port map( reset_n => g_reset_n, clk => clk, en => en_min,q => min, start => start_min );
comporador2:  comparator generic map(width => 6) port map (A => min, B => numero_0, EQ => min_min);
comporador20:  comparator generic map(width => 6) port map (A => min, B => numero_59, EQ => max_min);

bin2: bintobcd port map ( a => min, f => aux2);
hexa3: hexa port map (a => aux2(3 downto 0), f => display_2);
hexa4: hexa port map (a => aux2(7 downto 4), f => display_3);

--------
contador3: counter generic map ( width => 6, N => 24 ) port map( reset_n => g_reset_n, clk => clk, en => en_hor,q => hor, start => start_hor );
comparator3:  comparator generic map(width => 6) port map (A => hor, B => numero_0, EQ => min_hor);
comparator30:  comparator generic map(width => 6) port map (A => hor, B => numero_23, EQ => max_hor);
comparato_1h: comparator_gt generic map(width => 6) port map(A => hor, B => numero_1, gt => time_gt40);


bin3: bintobcd port map ( a => hor, f => aux3);
hexa5: hexa port map (a => aux3(3 downto 0), f => display_4);
hexa6: hexa port map (a => aux3(7 downto 4), f => display_5);

end arq;