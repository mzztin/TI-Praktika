library ieee;
use ieee.std_logic_1164.all;


entity demultiplexer is 

	port(
		A:		in std_logic;			-- zu demultiplexendes Eingangssignal SW0 
		S:		in std_logic_vector(2 downto 0); -- Adresse: Key 2..0			
		X:		out std_logic_vector(7 downto 0) -- Output auf LEDs
	);

end demultiplexer;

architecture verhalten of demultiplexer is
begin
	X(0) <= A when S = "000" else '1';
	X(1) <= A when S = "001" else '1';
	X(2) <= A when S = "010" else '1';
	X(3) <= A when S = "011" else '1';
	X(4) <= A when S = "100" else '1';
	X(5) <= A when S = "101" else '1';
	X(6) <= A when S = "110" else '1';
	X(7) <= A when S = "111" else '1';
end verhalten;
