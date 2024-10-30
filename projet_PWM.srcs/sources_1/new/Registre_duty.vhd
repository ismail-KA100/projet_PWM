----------------------------------------------------------------------------------
-- Company: 
-- Engineer:  
-- Create Date: 30.10.2024 16:08:39
-- Design Name: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Registre_duty is
    Port ( load : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           d_in : in STD_LOGIC_VECTOR (7 downto 0);
           d_out : out STD_LOGIC_VECTOR (7 downto 0));
end Registre_duty;

architecture  Archi_Registre_duty of Registre_duty is

begin
process(clk,reset)
 begin
 if reset='1' then
      d_out <="00000000";
  elsif rising_edge(clk) then
     if load ='1' then 
      d_out <=d_in;
     end if;
   end if; 

end process;
end Archi_Registre_duty ;
