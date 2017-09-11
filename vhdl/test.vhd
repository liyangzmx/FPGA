library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.all;

entity test is
end test;

architecture test of test is
component top
    port(   a: in std_logic;
            b: in std_logic;
            z: out std_logic_vector(5 downto 0);
        );
end component;
signal a : std_logic := '0';
signal b : std_logic := '0';
signal z : std_logic_vector(5 downto 0);

begin
uut : top port_map(
    a => a,
    b => b,
    z => z);
    
process begin
    a <= '0';
    b <= '0';
    wait for 200ns;
    a <= '0';
    b <= '1';
    wait for 200ns;
    a <= '1';
    b <= '0';
    wait for 200ns;
    a <= '1';
    b <= '1';
    wait for 200sn;
end process

end;




