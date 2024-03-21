library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity latch_teste is
    Port ( s : in STD_LOGIC;
           r : in STD_LOGIC;
           clock: in std_logic;
           q: inout std_logic);
end latch_teste;

architecture Behavioral of latch_teste is

begin
    process(clock, r, s)
    begin
    if(rising_edge(clock))then
        if(clock='1')then
            if(s='0' and r='0')then
                q <= q;
            elsif(s='0' and r='1') then
                q <= '1';
            elsif(s = '1' and r ='0') then
                q <= '0';
            else
                q <='X';      
            end if;  
        else
            q <= q;
        end if;
    end if;
    end process;

end Behavioral;
