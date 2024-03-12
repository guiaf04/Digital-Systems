library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
  Port (
         a: inout std_logic;
         b: inout std_logic;
         clock: inout std_logic; 
         x_and: out std_logic);
end testbench;

architecture Behavioral of testbench is
    component AND_TESTE is
        port(
            clock: in std_logic;
            a: in std_logic;
            b: in std_logic;
            x: out std_logic
        );
    end component;
   component or_TESTE is
        port(
            clock: in std_logic;
            a: in std_logic;
            b: in std_logic;
            x: out std_logic
        );    
    end component;
    component xor_TESTE is
        port(
            clock: in std_logic;
            a: in std_logic;
            b: in std_logic;
            x: out std_logic
        );    
    end component;
    component inversor_TESTE is
        port(
            clock: in std_logic;
            a: in std_logic;
            x: out std_logic
        );    
    end component;
    component nor_TESTE is
        port(
            clock: in std_logic;
            a: in std_logic;
            b: in std_logic;
            x: out std_logic
        );    
    end component;
    component nand_TESTE is
         port(
            clock: in std_logic;
            a: in std_logic;
            b: in std_logic;
            x: out std_logic
        );    
    end component;
        component xnor_TESTE is
        port(
            clock: in std_logic;
            a: in std_logic;
            b: in std_logic;
            x: out std_logic
        );    
    end component;
    --signal clock: std_logic := '0';
    --signal a,b: std_logic := '0';
    --signal x_and: std_logic := '0';
    signal x_or: std_logic := '0';
    signal x_xor: std_logic := '0';
    signal x_inversor: std_logic := '0';
    signal x_nor: std_logic := '0';
    signal x_nand: std_logic := '0';
    signal x_xnor: std_logic := '0';
    constant clock_periodo:time:= 100 ns;
        
begin
    clock<= not clock after clock_periodo/2;
    DUT1:and_teste port map(clock,a,b,x_and);
    DUT2:or_teste port map(clock,a,b,x_or);
    DUT3:xor_teste port map(clock,a,b,x_xor);
    DUT4:inversor_teste port map(clock,a,x_inversor);
    DUT5:nor_teste port map(clock,a,b,x_nor);
    DUT6:nand_teste port map(clock,a,b,x_nand);
    DUT7:xnor_teste port map(clock,a,b,x_xnor);

    estimulos:process
    begin
        --teste1 
        a<='0';
        b<='0';
        wait for clock_periodo;
        --teste2
        a<='0';
        b<='1';
        wait for clock_periodo;
        --teste3
        a<='1';
        b<='0';
        wait for clock_periodo;
        --teste4
        a<='1';
        b<='1';
        wait for clock_periodo;
    
    end process;
end Behavioral;










