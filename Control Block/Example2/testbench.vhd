library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is
        signal clk, rst, w: std_logic := '0';
        signal y1,y2 : std_logic;
        signal  r1_in, r1_out, r2_in, r2_out, r3_in, r3_out, done : std_logic;
        constant clock_period:time:= 100 ns;
begin
        cb: entity work.question3(rtl) 
               port map( clk => clk,
               rst      => rst,
               w        => w,
               y1       => y1,
               y2       => y2,
               r1_in    => r1_in,
               r1_out   => r1_out,
               r2_in    => r2_in,
               r2_out   => r2_out,
               r3_in    => r3_in,
               r3_out   => r3_out,
               done     => done);
        
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
