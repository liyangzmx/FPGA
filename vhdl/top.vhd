library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           z : out STD_LOGIC_VECTOR (5 downto 0));
end top;

architecture top of top is
begin
    z(0) <= a and b;
    z(1) <= a nand b;
    z(2) <= a or b;
    z(3) <= a nor b;
    z(4) <= a xor b;
    z(5) <= a xnor b;
end top;





