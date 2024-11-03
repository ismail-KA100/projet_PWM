----------------------------------------------------------------------------------
-- Company: 
-- Engineer: KA ISMAILA

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use UNISIM.VComponents.all;

entity Generateur_PWM_tb is
--  Port ( );
end Generateur_PWM_tb;

architecture Behavioral of Generateur_PWM_tb is

component  Generateur_PWM is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Data : in STD_LOGIC_VECTOR (7 downto 0);
           Address : in STD_LOGIC_VECTOR (1 downto 0);
           pin_PWM : out STD_LOGIC);
end component Generateur_PWM;
signal clk :  STD_LOGIC:='1';
signal reset :  STD_LOGIC;
signal  Data :  STD_LOGIC_VECTOR (7 downto 0);
signal  Address :  STD_LOGIC_VECTOR (1 downto 0);
signal  pin_PWM :  STD_LOGIC;
begin
dut: 
entity work.Generateur_PWM(Archi_Generateur_PWM )port map(reset=>reset,Data=>Data,
 clk=>clk,Address=>Address,pin_PWM=>pin_PWM);
clk<= not(clk) after 1 ns;

Data <= "01111110";

reset<='0';

test1:process

begin


Address<="00";
wait for 500ns;
Address<="01";
wait for 500ns;
Address<="01";
wait for 500ns;
Address<="10";
wait for 500ns;

end process;


end Behavioral;
