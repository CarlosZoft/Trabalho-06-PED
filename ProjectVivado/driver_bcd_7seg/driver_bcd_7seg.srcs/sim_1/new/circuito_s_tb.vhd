-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2021 21:29:26
-- Design Name: 
-- Module Name: circuito_s_tb - Behavioral
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

entity circuito_s_tb is
--  Port ( );
end circuito_s_tb;

architecture Behavioral of circuito_s_tb is

component mainFile is
    Port ( Am : in STD_LOGIC_VECTOR (3 downto 0);
           Bm : in STD_LOGIC_VECTOR (3 downto 0);
           selm : in STD_LOGIC;
           segm : out STD_LOGIC_VECTOR (0 to 6);
           an : out STD_LOGIC_VECTOR (3 downto 0)
          );
end component;

signal test_inA: STD_LOGIC_VECTOR(3 downto 0);
signal test_inB: STD_LOGIC_VECTOR(3 downto 0);
signal test_dentro: STD_LOGIC;
signal test_fora: STD_LOGIC_VECTOR (0 to 6);
signal test_out: STD_LOGIC_VECTOR (3 downto 0);


begin

UUT: mainFile port map ( Am=>test_inA, Bm=>test_inB, selm=>test_dentro, segm=>test_fora, an=>test_out);

process
begin 
    test_inA <= "0000"; -- numero 0
    test_inB <= "0001"; -- numero 1;
    test_dentro <= '0';
    wait for 10ns;
    
    test_inA <= "0000"; -- numero 0
    test_inB <= "0001"; -- numero 1;
    test_dentro <= '1';
    wait for 10ns;
    --teste 1
    
    test_inA <= "0010"; -- numero 2
    test_inB <= "0011"; -- numero 3;
    test_dentro <= '0';
    wait for 10ns;
    
    test_inA <= "0010"; -- numero 2
    test_inB <= "0011"; -- numero 3;
    test_dentro <= '1';
    wait for 10ns;
    -- teste 2
    
    test_inA <= "0100"; -- numero 4
    test_inB <= "0101"; -- numero 5;
    test_dentro <= '0';
    wait for 10ns;
    
    test_inA <= "0100"; -- numero 4
    test_inB <= "0101"; -- numero 5;
    test_dentro <= '1';
    wait for 10ns;
    -- teste 3
    
    test_inA <= "0110"; -- numero 6
    test_inB <= "0111"; -- numero 7;
    test_dentro <= '0';
    wait for 10ns;
    
    test_inA <= "0110"; -- numero 6
    test_inB <= "0111"; -- numero 7;
    test_dentro <= '1';
    wait for 10ns;
    -- teste 4
    
    test_inA <= "1000"; -- numero 8
    test_inB <= "1001"; -- numero 9;
    test_dentro <= '0';
    wait for 10ns;
    
    test_inA <= "1000"; -- numero 8
    test_inB <= "1001"; -- numero 9;
    test_dentro <= '1';
    wait for 10ns;
    -- teste 5
    
    
    
end process;

end Behavioral;
