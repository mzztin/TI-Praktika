library ieee;
use ieee.std_logic_1164.all;

entity sieben_segment is
	port(
		BIN: in std_logic_vector(3 downto 0);
		LED: out std_logic_vector(6 downto 0)
	);

end sieben_segment;

architecture verhalten of sieben_segment is
begin
	with BIN select
	LED <= 	"1000000" when "0000",
				"1111001" when "0001",
				"0100100" when "0010",
				"0111111" when others;
end verhalten;