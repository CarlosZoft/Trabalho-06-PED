----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2021 17:38:35
-- Design Name: 
-- Module Name: mainFile - Behavioral
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

entity mainFile is
    Port ( Am : in STD_LOGIC_VECTOR (3 downto 0);
           Bm : in STD_LOGIC_VECTOR (3 downto 0);
           selm : in STD_LOGIC;
           segm : out STD_LOGIC_VECTOR (0 to 6);
           an : out STD_LOGIC_VECTOR (3 downto 0)
          );
end mainFile;

architecture Behavioral of mainFile is



component MUX_Quad_2_entradas
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component driver_bcd_7seg
    Port ( entrada : in STD_LOGIC_VECTOR (0 to 3);
           seg : out STD_LOGIC_VECTOR (0 to 6));
end component;

component logicaSeletora
    Port (selecao : in STD_LOGIC;
          saida : out STD_LOGIC_VECTOR(0 to 3));
end component;

signal Selin : STD_LOGIC;
signal Sout : STD_LOGIC_VECTOR(0 to 3);
signal segmentos : STD_LOGIC_VECTOR(0 to 6);


begin

    mux : MUX_Quad_2_entradas port map (A => Am, B => Bm, sel => Selin, S => Sout);
    
   logica : logicaSeletora port map (selecao => Selin, saida => an);
-- logica : logicaSeletora port map (selecao => Sout(0), saida => an); -- para imprimir no display correspondente par ou impar
        
    display : driver_bcd_7seg port map (entrada => Sout, seg => segmentos);
    


end Behavioral;
