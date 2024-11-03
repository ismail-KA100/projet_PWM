----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- Module Name: Generateur_PWM - Archi_Generateur_PWM
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;
entity Generateur_PWM is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Data : in STD_LOGIC_VECTOR (7 downto 0);
           Address : in STD_LOGIC_VECTOR (1 downto 0);
           pin_PWM : out STD_LOGIC);
end Generateur_PWM;
architecture Archi_Generateur_PWM of Generateur_PWM is
signal comptage:  STD_LOGIC_VECTOR (7 downto 0);
signal period:  STD_LOGIC_VECTOR (7 downto 0);
signal duty:  STD_LOGIC_VECTOR (7 downto 0);
signal period_match:  STD_LOGIC;
signal ctl_out:  STD_LOGIC_VECTOR (7 downto 0);
signal raz_count:  STD_LOGIC;
signal duty_match ,ld_ctl, ld_per, ld_duty:  STD_LOGIC;

    begin

 raz_count <= period_match or ctl_out(0);

compteur_0: entity compteur port map(
					clk			=> 		clk,
					raz			=> 		raz_count,
					ce			=> 		ctl_out(1),
					count 		=> 		comptage
				);

reg_ct: entity Reg_ctl port map(
					clk			=> 		clk,
					reset		=> 		reset,
					load		=> 		ld_ctl,
					d_in 		=> 		Data,
					d_out		=> 		ctl_out
				);
reg_period: entity registre_period port map(
					clk			=> 		clk,
					reset		=> 		reset,
					load		=> 		ld_per,
					d_in 		=> 		Data,
					d_out		=>		 period
				);
reg_duty: entity Registre_duty port map(
					clk			=> 		clk,
					reset		=> 		reset,
					load		=> 		ld_duty,
					d_in 		=> 		Data,
					d_out		=> 		duty
				);
decode: entity Decodeur port map(
					E 			=> 		Address,
					S0			=> 		ld_ctl,
					S1			=> 		ld_per,
					S2 			=> 		ld_duty
				);
comp_pe: entity comp_per port map(
					A			=> 		period,
					B  			=> 		comptage,	
					egal		=> 		period_match
				);
comp_dut: entity Comp_duty port map(
					A			=> 		duty,
					B  			=> 		comptage,	
					egal		=> 		duty_match
				);

basc_PIO: entity bascule_PIO port map(
					reset		=> 		reset,
					clk			=> 		clk,
					set			=> 		period_match,
					raz			=> 		duty_match,
					d_out		=> 		pin_pwm
				);



end Archi_Generateur_PWM;
