----------------------------------------------------------------------------------
-- Company : UNIVERSIDAD NACIONAL DE LOJA 
-- Engineer: ADRIAN HERNANDEZ
-- EJERCICIO 1
-----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
entity Ejercicio1 is
	port(
		clk: in std_logic;
	   rst: in std_logic;
  sentido: in STD_LOGIC := '0'; 
		  Q: out std_logic_vector(2 downto 0)
   
	);
end Ejercicio1;

architecture Behavioral of Ejercicio1 is
	signal counter : STD_LOGIC_VECTOR (2 downto 0) := "000";
begin
	process(rst,clk)
begin
	if rst='1' then
		counter <= "000";
	elsif clk'event and clk = '1' then
		if sentido = '1' then
			counter <= counter + 1;
		else
			counter <= counter - 1;
		end if;
			Q <= counter;
	end if;
	end process;
end Behavioral;



