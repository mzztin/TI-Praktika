library ieee;
use ieee.std_logic_1164.all;

entity versuch_1b is
	port(
		S0, S1, S2, S3: 	in std_logic;
		Y:						out std_logic
	);
end versuch_1b;

architecture verhalten of versuch_1b is
begin
	Y <= S3 or (S0 and S1 and S2);
end verhalten;