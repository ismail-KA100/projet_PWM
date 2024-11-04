----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2024 20:50:50
-- Design Name: 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Comp_duty is
Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           egal : out STD_LOGIC);
end Comp_duty;

architecture Archi_Comp_duty of Comp_duty is

begin
process(A,B)
begin
if A=B then 
   egal<='1';
   else 
   egal<='0';
end if;
end process;

end Archi_Comp_duty;
