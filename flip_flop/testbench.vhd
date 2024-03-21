
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture Behavioral of testbench is
    component latch_teste is
        port(
            s: in std_logic;
            r: in std_logic;
            clock: in std_logic;
            q: inout std_logic
        );
    end component;
    
    component flipflopd_teste is
        port ( 
               clock : in STD_LOGIC;
               D : in STD_LOGIC;
               Q : out STD_LOGIC
        );
    end component;
    constant clock_periodo:time:= 100 ns;
    signal clock: std_logic := '0';
    signal s,r,d: std_logic := '0';
    signal q_sr, q_d: std_logic;
begin
    clock <= not clock after clock_periodo/2;
    DUT1:latch_teste port map(s, r, clock, q_sr);
    DUT2:flipflopd_teste port map(clock, d, q_d);

    estimulos:process
    begin
        --teste1
        r<='0';
        s<='0';
        d<='0';
        wait for clock_periodo;
        --teste2
        r<='0';
        s<='1';
        d<='1';
        wait for clock_periodo;
        --teste3
        r<='1';
        s<='0';
        d<='0';
        wait for clock_periodo;
        --teste4
        r<='1';
        s<='1';
        d<='1';
        wait for clock_periodo;
    
    end process;
end Behavioral;
