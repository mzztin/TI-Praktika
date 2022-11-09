-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "11/09/2022 00:45:39"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	versuch_1a IS
    PORT (
	X0 : IN std_logic;
	X1 : IN std_logic;
	X2 : IN std_logic;
	Y : OUT std_logic
	);
END versuch_1a;

-- Design Ports Information
-- Y	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X1	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X0	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X2	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF versuch_1a IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X0 : std_logic;
SIGNAL ww_X1 : std_logic;
SIGNAL ww_X2 : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \X0~input_o\ : std_logic;
SIGNAL \X1~input_o\ : std_logic;
SIGNAL \X2~input_o\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \ALT_INV_X1~input_o\ : std_logic;
SIGNAL \ALT_INV_X0~input_o\ : std_logic;
SIGNAL \ALT_INV_X2~input_o\ : std_logic;

BEGIN

ww_X0 <= X0;
ww_X1 <= X1;
ww_X2 <= X2;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_X1~input_o\ <= NOT \X1~input_o\;
\ALT_INV_X0~input_o\ <= NOT \X0~input_o\;
\ALT_INV_X2~input_o\ <= NOT \X2~input_o\;

-- Location: IOOBUF_X6_Y0_N19
\Y~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~0_combout\,
	devoe => ww_devoe,
	o => ww_Y);

-- Location: IOIBUF_X6_Y0_N35
\X0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X0,
	o => \X0~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\X1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X1,
	o => \X1~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\X2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X2,
	o => \X2~input_o\);

-- Location: MLABCELL_X6_Y1_N0
\Y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = ( \X2~input_o\ & ( !\X1~input_o\ ) ) # ( !\X2~input_o\ & ( (\X0~input_o\ & !\X1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X0~input_o\,
	datac => \ALT_INV_X1~input_o\,
	dataf => \ALT_INV_X2~input_o\,
	combout => \Y~0_combout\);

-- Location: LABCELL_X80_Y37_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


