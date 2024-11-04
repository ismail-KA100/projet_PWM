----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2024 14:07:50
-- Design Name: 
-- Module Name: gene_pwm_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity gene_pwm_tb is
--  Port ( );
end gene_pwm_tb;

architecture Behavioral of gene_pwm_tb is
signal clk :  STD_LOGIC:='1';
signal pin_pwm :  STD_LOGIC:='1';
signal reset :  STD_LOGIC;
signal dirty :  unsigned(3 downto 0);
component  gene_PWM is
    Port ( clk : in STD_LOGIC;
           pin_pwm : out STD_LOGIC;
            dirty : in unsigned(3 downto 0);
           reset : in STD_LOGIC);
end component  gene_PWM;
begin
dut: 
entity work. gene_PWM(Archi_gene_PWM)port map( clk=>clk,dirty=>dirty, reset => reset , pin_pwm=>pin_pwm);

clk<= not(clk) after 10 ns;
 reset<='0';
 dirty<="0010";


end Behavioral;
