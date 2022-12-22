library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity akkumulator is 
	port (
		d	: in std_logic_vector(3 downto 0); -- Daten-Eingang
      ld : in std_logic; -- MUX Steuereingang: 0(gedrückt)=Ergebnis durchschalten, 1(nicht gedrückt)= Dateneingang durchschalten
		sub : in std_logic; -- 0=+, 1=-
		e	: in std_logic; -- enable Auffangregister 0(gedrückt)= enabled
		clk : in std_logic; -- Takt

		c : out std_logic; -- LEDG(4) carry out
		q : out std_logic_vector(3 downto 0); -- LEDG(3..0) Daten-Ausgang
		
		-- debug pins:
		z_out : out std_logic_vector(4 downto 0)	-- LEDR(4..0), z4 = carry	
		);
end entity akkumulator;

architecture Arch of akkumulator is
	signal mux_resultat: std_logic_vector(4 downto 0) := "00000"; -- Mux resultat
	signal z_int: std_logic_vector(4 downto 0) := "00000"; -- Operation resultat von alu
	signal q_out: std_logic_vector(3 downto 0) := "0000"; -- was aus dem register kommt
	signal c_out: std_logic := '0'; -- das carry aus dem register
	
	signal reg: std_logic_vector(4 downto 0) := "00000"; -- das ganze teil im register
	signal resultat: std_logic_vector(4 downto 0) := "00000"; -- 5 bit anstatt 4 bit
	
	begin
	
	-- MUX
	with ld select
		mux_resultat <= ('0' & d) when '1', -- Load
							 z_int when '0'; -- Berechnetes letzes Element
	
	p: process(clk) is -- Register
	begin
		if rising_edge(clk) then
			if e = '1' then
				reg <= mux_resultat;
			end if;
			
			c_out <= reg(4);
			q_out <= reg(3 downto 0);
		end if;	
	end process p;
		
	-- ALU
	with sub select
		resultat <= std_logic_vector(signed('0' & q_out) + signed('0' & d)) when '0', -- Addition
						std_logic_vector(signed('0' & q_out) + signed('1' & (not d))) when '1'; -- Subtraktion
	
	-- LEDS
	q <= q_out;
	c <= c_out;
	
	-- Interne Signale Setzen
	z_int <= resultat;
	z_out <= resultat;
end Arch;
