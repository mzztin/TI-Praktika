library ieee;
use ieee.std_logic_1164.all;

entity versuch_1a is
	port(
		X0, X1, X2: 	in std_logic;
		Y:					out std_logic
	);
end versuch_1a;

architecture verhalten of versuch_1a is
begin
	Y <= not X1 and (X2 or X0);
end;