library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_Quad_2_entradas is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0));
end MUX_Quad_2_entradas;

architecture Behavioral of MUX_Quad_2_entradas is
    
begin
    
    --S(0) <= (A(0) and sel) or (B(0) and (not sel));
    --S(1) <= (A(1) and sel) or (B(1) and (not sel));
    --S(2) <= (A(2) and sel) or (B(2) and (not sel));
    --S(3) <= (A(3) and sel) or (B(3) and (not sel));
    
    with sel select
        S <= A when '0',
             B when '1',
             B when others;
                
    
end Behavioral;
