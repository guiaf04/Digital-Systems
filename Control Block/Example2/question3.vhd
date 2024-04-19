library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity question3 is
      Port (
            clk: in std_logic;
            rst: in std_logic;
            w: in std_logic;
            y1, y2: inout std_logic;
            r1_in, r1_out, r2_in, r2_out, r3_in, r3_out, done: out std_logic
            );
end question3;

architecture rtl of question3 is
    type estados is (A,B,C);
    signal y: estados;
    begin
    
    process(clk,rst)
    begin
    
    if(rst='1')then
        y <= A;
    elsif(rising_edge(clk)) then
        case y is
            when A =>
                if(w ='0') then
                    y <= A;
                else
                     y <= B;               
                end if;
            when B =>
                y <= C;
            when C =>
                y <= A;
            end case;
    end if;
    
    end process;
    
    process(clk,rst)
    begin
        if(rst = '1') then
            y1      <= '0';
            y2      <= '0';
            r1_in   <= '0';
            r1_out  <= '0';
            r2_in   <= '0';
            r2_out  <= '0';
            r3_in   <= '0';
            r3_out  <= '0';
            done    <= '0';
        elsif(rising_edge(clk)) then
            y1      <= w and (not y2) and not y1;
            y2      <= y1; --(not w) and y1 and (not y2);
            r1_in   <= (not y2) and (not y1);
            r1_out  <= y2;
            r2_in   <= y2;
            r2_out  <= y1;
            r3_in   <= y1;
            r3_out  <= (not y2) and (not y1);
            done    <= (not y2) and (not y1);
        end if;
    end process;
end rtl;
