library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity mealy_teste is
    generic(clock_frequencyHz:integer);
    Port ( clk : in STD_LOGIC;
           w : in STD_LOGIC;
           rst: in std_logic;
           z : out STD_LOGIC
           );
end mealy_teste;

architecture rtl of mealy_teste is
    
    type estados is (A,B);
    signal y: estados;
begin
    process(clk, rst)
    begin
        if(rising_edge(clk)) then
            if(rst='1') then
                y <= A;
            else
                case y is
                    when A =>
                        if(w='0') then
                            y <= A;
                        else
                            y <= B;
                        end if;
                    when B =>
                        if(w='0')then
                            y <= A;
                        else
                            y <= B;
                        end if;
                end case;
            end if;
        end if;
    end process;
    
    process(w, y)
    begin    
        case y is
            when A =>
                z <= '0';
            when B =>
                z <= w;
        end case;        
    end process;    
end rtl;
