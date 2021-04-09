----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2021 12:18:54
-- Design Name: 
-- Module Name: driver_bcd_7seg - Behavioral
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

entity driver_bcd_7seg is
    Port ( entrada : in STD_LOGIC_VECTOR (0 to 3);
           seg : out STD_LOGIC_VECTOR (0 to 6);
           an : out STD_LOGIC_VECTOR (0 to 3));
           
end driver_bcd_7seg;

architecture Behavioral of driver_bcd_7seg is

begin

    an <= "0011";


    with entrada select 
    
    seg <= "0000001" when "0000",
           "1001111" when "0001",
           "0010010" when "0010",
           "0000110" when "0011",
           "1001100" when "0100",
           "0100100" when "0101",
           "0001111" when "0111",
           "0000000" when "1000",
           "0000100" when "1001",
           "1111111" when others;
           
end Behavioral;
