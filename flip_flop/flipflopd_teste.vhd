----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2024 22:56:11
-- Design Name: 
-- Module Name: flipflopd_teste - Behavioral
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

entity flipflopd_teste is
    Port ( clock : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC
           );
end flipflopd_teste;

architecture Behavioral of flipflopd_teste is

begin
    process(clock, d)
    begin
    if(rising_edge(clock)) then
        q <= d;
    end if;
    end process;

end Behavioral;
