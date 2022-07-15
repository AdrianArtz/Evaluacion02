----------------------------------------------------------------------------------
-- Company : UNIVERSIDAD NACIONAL DE LOJA 
-- Engineer: ADRIAN HERNANDEZ
-- EJERCICIO 2
-----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity Ejercicio2 is
	port(
    numAleatorio: inout std_logic_vector(3 downto 0);
		  ControlX: in std_logic;		   
				 clk: in std_logic;
				 rst: in std_logic; 
					Q: out std_logic_vector(3 downto 0)
	);
end Ejercicio2;

architecture Behavioral of Ejercicio2 is
	signal counter : STD_LOGIC_VECTOR (2 downto 0) := "000";
begin
	process(rst,clk)
begin
	if rst='1' then
		counter <= "000";
	elsif clk'event and clk = '1' then
			if ControlX = '0' then 
				counter <= counter + 1;
			else
				counter <= numAleatorio;
			end if;
			Q <= counter;
	end if;
	end process;
end Behavioral;