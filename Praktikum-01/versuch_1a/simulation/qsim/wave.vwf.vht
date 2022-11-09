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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/09/2022 00:45:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          versuch_1a
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY versuch_1a_vhd_vec_tst IS
END versuch_1a_vhd_vec_tst;
ARCHITECTURE versuch_1a_arch OF versuch_1a_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL X0 : STD_LOGIC;
SIGNAL X1 : STD_LOGIC;
SIGNAL X2 : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT versuch_1a
	PORT (
	X0 : IN STD_LOGIC;
	X1 : IN STD_LOGIC;
	X2 : IN STD_LOGIC;
	Y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : versuch_1a
	PORT MAP (
-- list connections between master ports and signals
	X0 => X0,
	X1 => X1,
	X2 => X2,
	Y => Y
	);

-- X0
t_prcs_X0: PROCESS
BEGIN
LOOP
	X0 <= '0';
	WAIT FOR 20000 ps;
	X0 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X0;

-- X1
t_prcs_X1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		X1 <= '0';
		WAIT FOR 40000 ps;
		X1 <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	X1 <= '0';
WAIT;
END PROCESS t_prcs_X1;

-- X2
t_prcs_X2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		X2 <= '0';
		WAIT FOR 80000 ps;
		X2 <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	X2 <= '0';
WAIT;
END PROCESS t_prcs_X2;
END versuch_1a_arch;
