library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity fsm_teste is
generic(clock_frequencyHz : integer);
  Port ( 
    rst   : in std_logic;
    clock : in std_logic;    
    w     : in std_logic;
    z     : out std_logic
  );
end fsm_teste;

architecture rtl of fsm_teste is
    type estados is (A, B, C);
    signal y : estados;    
begin
    process(clock, rst,w)
    begin
       if(rising_edge(clock)) then
       
        if(rst = '1')then
            y <= A;
          --  z <='0';
        else
            case y is
                when A =>
                 --   z <='0';
                    if(w = '1')then
                        y <= B;
                    end if;
                when B =>
                  --  z <='0';
                    if(w = '0')then
                        y <= A;
                    else
                        y <= C;
                    end if;
                when C =>
                   -- z <='1';
                    if(w = '0')then
                        y <= A;
                    end if;
            end case;
        end if;
       end if;
    end process;
    process(y)
    begin
         case y is
            when A =>
                z <= '0';
            when B =>
                z <= '0';
            when C =>
                z <= '1';    
           end case;         
    end process;
    --z <= '1' when y = C else '0';
end rtl;
