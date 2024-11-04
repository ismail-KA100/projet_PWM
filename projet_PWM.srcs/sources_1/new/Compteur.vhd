----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity Compteur is
    Port ( ce : in STD_LOGIC;
           raz : in STD_LOGIC;
           clk : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (7 downto 0));
end Compteur;

architecture Archi_Compteur  of Compteur is

signal countc: unsigned(7 downto 0);
begin
process(clk,raz)
begin
if rising_edge (clk) then 
if raz='1' then 
 countc<="00000000";
elsif ce='1' then
   if  countc = "11111111" then 
      countc<="00000000";
      else
      countc <= countc + "00000001";
  end if;
 end if;
 end if;
end process;
count<=STD_LOGIC_VECTOR (countc);
end Archi_Compteur ;
