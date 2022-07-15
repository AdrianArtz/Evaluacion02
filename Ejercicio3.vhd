----------------------------------------------------------------------------------
-- Company : UNIVERSIDAD NACIONAL DE LOJA 
-- Engineer: ADRIAN HERNANDEZ
-- EJERCICIO 3
-----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity Ejercicio3 is
	port(
		clk: in std_logic;
	   C: in std_logic;
	SAL1, SAL2 : out  STD_LOGIC;  
		  Q: out std_logic_vector(15 downto 0)
   
	);
end Ejercicio3;

architecture Behavioral of Ejercicio3 is
signal aux: std_logic_vector(15 downto 0):="000000000000000";

begin
	Q <= aux;
	process(clk, C) begin
		if (clk'event and clk = '1') then 
			if(C = '0') then
				if(aux = "000000000001001") then
					aux <= "000000000000000";
				else 
					aux <= aux+1;
				end if;
			else
				if(aux = "000000000000000") then
					aux <= "000000000001001";
				else 
					aux <= aux-1;
				end if;
			end if;
			
			-- Ascendente pares
			if(C = '0' and aux(0) = '1') then 
				SAL1 <= '1';
				SAL2 <= '0';
			-- Descendente impares
			elsif(C = '1' and aux(0) = '0') then
				SAL1 <= '0';
				SAL2 <= '1';
			-- Condicion para ocho
			else
				SAL1 <= '0';
				SAL2 <= '0';
			end if;
		end if;
	end process;
end Behavioral;