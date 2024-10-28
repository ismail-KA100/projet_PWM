----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.10.2024 12:25:49
-- Design Name: 
-- Module Name: Compteur_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Descriptio
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Compteur_tb is
--  Port ( );
end Compteur_tb;

architecture Behavioral of Compteur_tb is
signal ce :  STD_LOGIC;
signal raz :  STD_LOGIC;
signal clk :  STD_LOGIC:='1';
signal count :  STD_LOGIC_VECTOR (7 downto 0):="00000000";
component  Compteur is
    Port ( ce : in STD_LOGIC;
           raz : in STD_LOGIC;
           clk : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (7 downto 0));
end component Compteur;
begin
dut: 
entity work.Compteur(Archi_Compteur )port map(ce=>ce,raz=>raz,clk=>clk,count=>count);
clk<= not(clk) after 10 ns;

ce<='1';
process
begin
wait for 100ns;
raz<='1' ;
wait for 100ns;

raz<='0' ;
end process; 
end Behavioral;
