----------------------------------------------------------------------------------
-- Company: 
-- Engineer: KA ISMAILA
-- 
-- Create Date: 27.10.2024 17:21:26
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Decodeur is
    Port ( E : in STD_LOGIC_VECTOR (1 downto 0);
           S0 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC);
end Decodeur;

architecture archi_Decodeur of Decodeur is
begin
	S0<='1' when E="00" else '0';
	S1<='1' when E="01" else '0';
	S2<='1' when E="10" else '0';
end archi_Decodeur ;
