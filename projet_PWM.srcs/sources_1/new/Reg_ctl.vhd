----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.10.2024 12:31:56
-- Design Name: 
-- Module Name: Reg_ctl - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reg_ctl is
    Port ( load : in STD_LOGIC;
           d_in : in STD_LOGIC_VECTOR (8 downto 0);
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           d_out : out STD_LOGIC_VECTOR (8 downto 0));
end Reg_ctl;

architecture arch_Reg_ctl of Reg_ctl is

--signal d_outc: STD_LOGIC_VECTOR (8 downto 0):= (others => '0');
begin
process(clk,reset)
 begin 
if reset ='0' then
   d_out <=(others => '0');
 elsif rising_edge(clk) then 
  if load='1' then
    d_out <= d_in;
    end if;
end if; 
 end process;
--d_out<=d_outc;
end arch_Reg_ctl;
