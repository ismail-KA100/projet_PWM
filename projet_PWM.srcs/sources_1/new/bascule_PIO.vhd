----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2024 23:43:40
-- Design Name: 
-- Module Name: bascule_PIO - archi_bascule_PIO
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

entity bascule_PIO is
    Port ( set : in STD_LOGIC;
           raz : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           d_out : out STD_LOGIC);
end bascule_PIO;

architecture archi_bascule_PIO of bascule_PIO is
begin
process(clk,reset)
begin
if reset='1' then
 d_out<='0';
elsif rising_edge (clk) then 
 if raz='1' then
   d_out<='0';
 elsif set='1' then
   d_out<='1';
    
end if;
end if;
end process;
end archi_bascule_PIO;
