library ieee;
use ieee.std_logic_1164.all;

entity demultiplexer is
	port(
		SW: 		in std_logic_vector(0 downto 0);
		PB: 		in std_logic_vector(2 downto 0);
		LEDG: 	out std_logic_vector(7 downto 0)
	);	
end demultiplexer;

architecture verhalten of demultiplexer is
begin
	LEDG(0) <= SW(0) when PB = "000" else '1';
	LEDG(1) <= SW(0) when PB = "001" else '1';
	LEDG(2) <= SW(0) when PB = "010" else '1';
	LEDG(3) <= SW(0) when PB = "011" else '1';
	LEDG(4) <= SW(0) when PB = "100" else '1';
	LEDG(5) <= SW(0) when PB = "101" else '1';
	LEDG(6) <= SW(0) when PB = "110" else '1';
	LEDG(7) <= SW(0) when PB = "111" else '1';
end verhalten;