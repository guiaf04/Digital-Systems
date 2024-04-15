library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity testbench is
end testbench;

architecture sim of testbench is   
    constant clock_frequencyHz:integer := 100;
    constant clock_period:time:= 100 ns; --/ clock_frequencyHz;
    
    signal rst: std_logic := '1';
    signal clk: std_logic:='0';
    signal w,z: std_logic:='0';
begin
    i_fsm : entity work.mealy_teste(rtl)
    generic map(clock_frequencyHz => clock_frequencyHz)
    port map( clk => clk,
               rst => rst,
               w => w,
               z => z);

    clk <= not clk after clock_period/2;
    
    process is
    begin
        -- w = 0 1 0 1 1 0 1 1 1 0 1
        -- z = 0 0 0 0 0 1 0 0 1 1 0
     wait for clock_period/2;   
        
     rst <= '1';
     w <= '0';
     wait for clock_period;
     
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
end sim;
