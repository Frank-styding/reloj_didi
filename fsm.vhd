library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
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
----------------------------------------------------	  
	  signal gt_16_j0: in std_Logic;
	  signal gt_1h_j0: in std_Logic;
	  
	  signal gt_16_j1: in std_Logic;
	  signal gt_1h_j1: in std_Logic;
	

	  signal reset_1h_j0: out std_logic;
	  signal reset_1h_j1: out std_logic;

	  signal act_16_j0: out std_logic;
	  signal act_16_j1: out std_logic;
	  
	
	  
	  signal looser_sel: out std_logic;
	  signal en_light: out std_logic;
--------------------------------------------------	  
	  signal ini_pausa_j0: out std_logic;
	  signal borrar_j0: out std_logic;
	  signal en_j0: out std_logic;
	  signal ini_pausa_j1: out std_logic;
	  signal borrar_j1: out std_logic;
	  signal en_j1: out std_logic;
	  signal en_sel: out std_logic);
	
end fsm;

architecture strc_1 of fsm is
type state is (ST_IDLE,ST_WAIT_CONFIG,ST_PLAYERS_CONFIG,ST_PLAYER_0_P,ST_PLAYER_0,ST_PLAYER_1,ST_PLAYER_1_P, ST_PLAYER_0_L,ST_PLAYER_1_L,ST_PLAYER_0_M,ST_PLAYER_1_M,ST_PLAYER_1_M_1,ST_PLAYER_1_M_0,ST_PLAYER_0_M_1,ST_PLAYER_0_M_0);
signal state_next,state_reg: state;
begin

seq:process(reset_n,clk,en)
begin

	if reset_n<='0' then 
		state_reg<=ST_IDLE;
	elsif rising_edge(clk) then
		if (en ='1') then
			state_reg<=state_next;
		else
			state_reg <= state_reg;
		end if;
	end if;
	
end process seq;

comb:process(state_reg,config,modo,min_value_j0,min_value_j1,ini_pausa,jugador_act)
begin
case state_reg is
	when ST_IDLE =>
		ini_pausa_j0<='0';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='1';
		borrar_j1<='1';
		en_sel<='0';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j0<='0';
		reset_1h_j1<='0';
		
		if(config='1') then
			state_next<=ST_WAIT_CONFIG;
		else
			state_next<=ST_IDLE;
		end if;

		
		
		
	when ST_WAIT_CONFIG =>
		ini_pausa_j0<='0';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='1';
		borrar_j1<='1';
		en_sel<='1';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j0<='0';
		reset_1h_j1<='0';
		
		if(config='0') then
			state_next<=ST_PLAYERS_CONFIG;
		else
			state_next<=ST_WAIT_CONFIG;
		end if;
		
		
		
		
	when ST_PLAYERS_CONFIG =>
		ini_pausa_j0<='0';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='0';
		borrar_j1<='0';
		en_sel<='0';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j0<='0';
		reset_1h_j1<='0';
		
		if(ini_pausa='1') then
			if(jugador_act='0') then
				state_next<=ST_PLAYER_0_P;
			else
				state_next<=ST_PLAYER_1_P;
			end if;
		else
			state_next<=ST_PLAYERS_CONFIG;
		end if;
		
	
	
	
	
	
	when ST_PLAYER_0_P =>
		ini_pausa_j0<='0';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='0';
		borrar_j1<='0';
		en_sel<='0';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j0<='0';
		reset_1h_j1<='0';
		
		if(ini_pausa='1') then
			state_next<=ST_PLAYER_0;
		else
			state_next<=ST_PLAYER_0_P;
		end if;
		
		
		
	when ST_PLAYER_1_P =>
		ini_pausa_j0<='0';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='0';
		borrar_j1<='0';
		en_sel<='0';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j0<='0';
		reset_1h_j1<='0';
		
		if(ini_pausa='1') then
			state_next<=ST_PLAYER_1;
		else
			state_next<=ST_PLAYER_1_P;
		end if;
		
	
	when ST_PLAYER_0=>
		ini_pausa_j0<='1';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='0';
		borrar_j1<='0';
		en_sel<='0';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j0<='0';
		reset_1h_j1<='0';
		
		if(ini_pausa='0') then
			state_next<=ST_PLAYER_0_P;
		else
			if(min_value_j0='1') and (gt_16_j0='0') then 
				state_next<=ST_PLAYER_0_L;
			else
				if(jugador_act='1') then
					state_next<=ST_PLAYER_0_M;
				else
					state_next<=ST_PLAYER_0;
				end if;
			end if;
			
			
			

		end if;
		
		
		
	when ST_PLAYER_1=>
		ini_pausa_j0<='0';
		ini_pausa_j1<='1';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='0';
		borrar_j1<='0';
		en_sel<='0';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j0<='0';
		reset_1h_j1<='0';
		
		
		if(ini_pausa='0') then
			state_next<=ST_PLAYER_1_P;
		else
			if(min_value_j1='1') and (gt_16_j1='0') then 
				state_next<=ST_PLAYER_1_L;
			else
				if(jugador_act='0') then
					state_next<=ST_PLAYER_1_M;
				else
					state_next<=ST_PLAYER_1;
				end if;
			end if;
		end if;
--------------------------------------------------------------------		
	when ST_PLAYER_0_M =>
--		state_next<=ST_PLAYER_1;

		if(modo="10") and (mov_j0_gt40='1') then
			if(gt_1h_j0='0') then
				state_next<=ST_PLAYER_0_M_0;
			else
				state_next<=ST_PLAYER_0_M_1;
			end if;
		else
			state_next<=ST_PLAYER_1;
		end if;
		
		ini_pausa_j0<='0';
		ini_pausa_j1<='1';
		en_j0<='1';
		en_j1<='0';
		borrar_j0<='0';
		borrar_j1<='0';
		en_sel<='0';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j0<='0';
		reset_1h_j1<='0';
		
		
--		mov_j0_gt40<='1';
--		act_16_j0<=not(min_value_j0) and mov_j0_gt40;
--		reset_1h_j0<=gt_1h_j0;



	when st_plaYER_0_M_0 =>
		state_next<=ST_PLAYER_1;
		ini_pausa_j0<='0';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='0';
		borrar_j1<='0';
		en_sel<='0';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j0<='0';
		reset_1h_j1<='0';

	when ST_PLAYER_0_M_1 =>
		state_next<=ST_PLAYER_1;
		ini_pausa_j0<='0';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='0';
		borrar_j1<='0';
		en_sel<='0';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j0<='1';
		reset_1h_j1<='0';
		
-------------------------------------------------------------------		
	when ST_PLAYER_1_M =>
--		state_next<=ST_PLAYER_0;

	   if(modo="10") and (mov_j1_gt40='1') then
			if(gt_1h_j1='0') then
				state_next<=ST_PLAYER_1_M_0;
			else
				state_next<=ST_PLAYER_1_M_1;
			end if;
		else
			state_next<=ST_PLAYER_0;
		end if;
		
		ini_pausa_j0<='1';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='1';
		borrar_j0<='0';
		borrar_j1<='0';
		en_sel<='0';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j0<='0';
		reset_1h_j1<='0';
		
		
--		mov_j1_gt40<='1';
--		act_16_j1<=not(min_value_j1) and mov_j1_gt40;
--		reset_1h_j1<=gt_1h_j1;

		when st_plaYER_1_M_0 =>
		state_next<=ST_PLAYER_1;
		ini_pausa_j0<='0';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='0';
		borrar_j1<='0';
		en_sel<='0';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j1<='0';
		reset_1h_j0<='0';

	when ST_PLAYER_1_M_1 =>
		state_next<=ST_PLAYER_1;
		ini_pausa_j0<='0';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='0';
		borrar_j1<='0';
		en_sel<='0';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j1<='1';
		reset_1h_j0<='0';


---------------------------------------------------------------		
	
	when ST_PLAYER_0_L =>
		state_next<=ST_PLAYER_0_L;
		ini_pausa_j0<='0';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='0';
		borrar_j1<='0';
		en_sel<='0';
		looser_sel<='0';
		en_light<='1';
		reset_1h_j0<='0';
		reset_1h_j1<='0';
	
		
		
	when ST_PLAYER_1_L =>
		state_next<=ST_PLAYER_1_L;
		ini_pausa_j0<='0';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='0';
		borrar_j1<='0';
		en_sel<='0';
		looser_sel<='1';
	   en_light<='1';	
		reset_1h_j0<='0';
		reset_1h_j1<='0';
	
	
	when others => state_next<=ST_IDLE;
		ini_pausa_j0<='0';
		ini_pausa_j1<='0';
		en_j0<='0';
		en_j1<='0';
		borrar_j0<='1';
		borrar_j1<='1';
		en_sel<='0';
		looser_sel<='0';
		en_light<='0';
		reset_1h_j0<='0';
		reset_1h_j1<='0';
end case;
	


end process comb;

end strc_1;