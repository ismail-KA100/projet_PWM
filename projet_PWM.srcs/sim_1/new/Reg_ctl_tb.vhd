----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.10.2024 13:19:27
-- Design Name: 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Reg_ctl_tb is
--  Port ( );
end Reg_ctl_tb;

architecture Behavioral of Reg_ctl_tb is
  signal load :  STD_LOGIC;
  signal d_in : STD_LOGIC_VECTOR (8 downto 0);
  signal reset :  STD_LOGIC;
  signal clk :  STD_LOGIC:='1';
  signal d_out :  STD_LOGIC_VECTOR (8 downto 0);

component Reg_ctl is 
 port(
     load : in STD_LOGIC;
     d_in : in  STD_LOGIC_VECTOR (8 downto 0);
     reset : in STD_LOGIC;
     clk : in STD_LOGIC;
     d_out : out STD_LOGIC_VECTOR (8 downto 0)
     );
end component Reg_ctl;
begin
dut:

entity work. Reg_ctl(arch_Reg_ctl )port map( clk=>clk, reset => reset ,load  => load , d_in  =>  d_in , d_out =>d_out);

clk<= not(clk) after 10 ns;
 reset<='1';
load<='1'   after 100 ns;
d_in <= "010010000";


end Behavioral;
