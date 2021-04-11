----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2021 18:40:06
-- Design Name: 
-- Module Name: logicaSeletora - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity logicaSeletora is
    Port (selecao : in STD_LOGIC;
          saida : out STD_LOGIC_VECTOR(0 to 3));
end logicaSeletora;

architecture Behavioral of logicaSeletora is

begin

    with selecao select
        saida <= "0111" when '1',
                 --"0011" when '1',
                 "1011" when '0',
                 --"0011" when '0',
                 "1111" when others;

end Behavioral;
