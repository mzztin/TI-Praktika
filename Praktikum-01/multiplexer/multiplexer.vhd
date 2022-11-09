library ieee;
use ieee.std_logic_1164.all;
 
entity multiplexer is
	port(
		SW: 	in std_logic_vector(7 downto 0);
		PB: 	in std_logic_vector(2 downto 0);
		LED: 	out std_logic
	);
end multiplexer;
 
architecture verhalten of multiplexer is
begin
	with PB select
		LED <= 	SW(0) when "000",
					SW(1) when "001",
					Sw(2) when "010",
					SW(3) when "011",
					SW(4) when "100",
					SW(5) when "101",
					SW(6) when "110",
					SW(7) when "111";
end verhalten;