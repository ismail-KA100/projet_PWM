----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decodeur_tb is
--  Port ( );
end Decodeur_tb;

architecture Behavioral of Decodeur_tb is
 signal E :  STD_LOGIC_VECTOR (1 downto 0);
 signal S0 :  STD_LOGIC;
 signal S1 :  STD_LOGIC;
 signal S2 :  STD_LOGIC; 
 component Decodeur is
 port(E : in STD_LOGIC_VECTOR (1 downto 0);
           S0 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC
       );
end component Decodeur;
begin
dut: 
entity work.Decodeur(archi_Decodeur )port map(E=>E,S0=>S0,S1=>S1,S2=>S2);
process 
begin
E <= "00"; 
report"l'activation du ctld";
 wait for 100ns ;
E <="01" ; 
report"lactivation du per";
wait for 100ns ;
E <="10"; 
wait for 100ns ;
E <="11";
 wait for 100ns ; 
end process;
end Behavioral;
