library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity question1 is
      Port (
            clk: in std_logic;
            rst: in std_logic;
            w: in std_logic;
            z: out std_logic;
            y1, y2: inout std_logic
            );
end question1;

architecture rtl1 of question1 is
    signal y1_in, y2_in : std_logic;
begin

    process(clk,rst)
    begin
        if(rst='1') then
            y1_in <= '0';
        elsif(rising_edge(clk)) then
            y1_in <= (not y2_in) and w and (not y1_in);
        end if;
    end process;
    
    process(clk,rst)
    begin
        if(rst='1') then
            y2_in <= '0';
        elsif(rising_edge(clk)) then
            y2_in <= (y2_in or y1_in) and w;
        end if;
    end process;   
    
    process(clk,rst)
    begin
        if(rst = '1') then
            y1 <= '0';
            y2 <= '0';
            z  <= '0';
        elsif(rising_edge(clk)) then
            y1 <= y1_in;
            y2 <= y2_in;
            z <= y2_in;
        end if;
    end process;
    
--    process(clk,rst)
--    begin
--        if(rst = '1') then
--            z  <= '0';
--        elsif(rising_edge(clk)) then
--            z <= y2;
--        end if;
--    end process;
    
end rtl1;
