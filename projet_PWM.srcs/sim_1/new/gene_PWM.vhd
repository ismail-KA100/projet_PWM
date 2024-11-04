----------------------------------------------------------------------------------
-- Company: 
-- Engineer:
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity gene_PWM is
    Port ( clk : in STD_LOGIC;
           pin_pwm : out STD_LOGIC;
           dirty : in unsigned(3 downto 0);
           reset : in STD_LOGIC);
end gene_PWM;

architecture  Archi_gene_PWM of gene_PWM is
signal count: unsigned(3 downto 0):="0000";
signal dirtyc :  unsigned(3 downto 0);
begin
Process(clk,reset)
begin
if reset= '1' then 
      count<="0000";
elsif rising_edge (clk) then
   count <= count + "0001";
    if count< dirtyc then 
     pin_pwm<='1';
    else
     pin_pwm<='0';
    end if;
    end if;
end process;
 dirtyc<=dirty;
end Archi_gene_PWM;
