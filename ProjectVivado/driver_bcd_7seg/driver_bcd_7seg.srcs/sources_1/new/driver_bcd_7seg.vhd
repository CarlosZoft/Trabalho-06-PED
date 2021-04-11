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
           seg : out STD_LOGIC_VECTOR (0 to 6));
           
end driver_bcd_7seg;

architecture Behavioral of driver_bcd_7seg is

begin

    with entrada select 
    --      abcdefg
    seg <= "0000001" when "0000", --0
           "1111001" when "0001", --1
           "0100100" when "0010", --2
           "0110000" when "0011", --3
           "1011000" when "0100", --4
           "0010010" when "0101", --5
           "0000010" when "0110", --6
           "0111001" when "0111", --7
           "0000000" when "1000", --8
           "0010000" when "1001", --9
           --"0000111" when "1100", --c
           --"1000001" when "1100", --u
           "1111111" when others;
           
end Behavioral;
