----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2024 16:48:39
-- Design Name: 
-- Module Name: comp_per_tb - Behavioral
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

entity comp_per_tb is
--  Port ( );
end comp_per_tb;

architecture Behavioral of comp_per_tb is
signal A:STD_LOGIC_VECTOR (7 downto 0);
signal B:STD_LOGIC_VECTOR (7 downto 0);
signal egal:STD_LOGIC;
component  comp_per is 
port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           egal : out STD_LOGIC);
end component  comp_per;

begin
dut: 
entity work.comp_per(archi_comp_per )port map(A=>A,B=>B,egal=>egal);
process
begin

A<="10110101" ;
B<="11110101" ;
wait for 200ns;
A<="01001010";
B<="01001010";
wait for 200ns;
end process;
end Behavioral;
