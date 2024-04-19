library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is
--        component question1 Port (
--            clk: in std_logic;
--            rst: in std_logic;
--            w: in std_logic;
--            z: out std_logic;
--            y1, y2: inout std_logic
--            );
--        end component;
        
        signal clk, rst, w ,z: std_logic := '0';
        
        signal y1,y2 : std_logic;
        constant clock_period:time:= 100 ns;
begin
        cb: entity work.question1(rtl1) 
               port map( clk => clk,
               rst => rst,
               w => w,
               z => z,
               y1 => y1,
               y2 => y2);
        
        clk <= not clk after clock_period/2;
        
        process
        begin 
        
        rst <= '1';
        w <= '0';
        wait for clock_period/2;
        
        rst <= '0';
        wait for clock_period;
    
        w <= '0';
        wait for clock_period;
        
        w <= '1';
        wait for clock_period;
        
        w <= '0';
        wait for clock_period;
        
        w <= '1';
        wait for clock_period;
        
        w <= '1';
        wait for clock_period;
        
        w <= '0';
        wait for clock_period;
        
        w <= '1';
        wait for clock_period;
        
        w <= '1';
        wait for clock_period;
        
        w <= '1';
        wait for clock_period;
        
        w <= '0';
        wait for clock_period;
        
        w <= '1';
        wait for clock_period;
        
        end process;
end Behavioral;
