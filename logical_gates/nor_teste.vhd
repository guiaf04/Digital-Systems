library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor_teste is
    Port ( clock : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           x : out STD_LOGIC);
end nor_teste;

architecture Behavioral of nor_teste is

begin
    process
    begin
    
    wait until clock'event and clock='1';
    if(a='0' and b='0')then
        x<='1';
    else
        x<='0';
    end if;
    
    end process;

end Behavioral;
