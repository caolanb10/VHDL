----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:43:43 03/20/2017 
-- Design Name: 
-- Module Name:    ArithmeticCircuit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ArithmeticCircuit is
PORT (C: in STD_LOGIC;
		A, B: in STD_LOGIC_VECTOR(15 downto 0);
		s1, s0: in STD_LOGIC;
		G: out STD_LOGIC_VECTOR(15 downto  0);
		C_output,V_output: out STD_LOGIC);
		
end ArithmeticCircuit;

architecture Behavioral of ArithmeticCircuit is

	component full_adder
	Port (in1, in2, c_in:in std_ulogic;
			sum, c_out:out std_ulogic );
	end component;

signal c01, c02, c03, c04, c05, c06, c07, c08, c09, c10, c11, c12, c13, c14, c15, c16,
in21, in22, in23, in24, in25, in26, in27, in28, in29, in210, in211, in212, in213, in214, in215, in216 : STD_LOGIC;
begin
in21<=((B(0) and s0) or ((not B(0)) and s1));
in22<=((B(1) and s0) or ((not B(1)) and s1));
in23<=((B(2) and s0) or ((not B(2)) and s1));
in24<=((B(3) and s0) or ((not B(3)) and s1));
in25<=((B(4) and s0) or ((not B(4)) and s1));
in26<=((B(5) and s0) or ((not B(5)) and s1));
in27<=((B(6) and s0) or ((not B(6)) and s1));
in28<=((B(7) and s0) or ((not B(7)) and s1));
in29<=((B(8) and s0) or ((not B(8)) and s1));
in210<=((B(9) and s0) or ((not B(9)) and s1));
in211<=((B(10) and s0) or ((not B(10)) and s1));
in212<=((B(11) and s0) or ((not B(11)) and s1));
in213<=((B(12) and s0) or ((not B(12)) and s1));
in214<=((B(13) and s0) or ((not B(13)) and s1));
in215<=((B(14) and s0) or ((not B(14)) and s1));
in216<=((B(15) and s0) or ((not B(15)) and s1));

FA01:full_adder PORT MAP(in1=>A(0),
								 in2=>in21,
								 c_in=>C,
								 sum=>G(0),
								 c_out=>c01);
FA02:full_adder PORT MAP(in1=>A(1),
								 in2=>in22,
								 c_in=>c01,
								 sum=>G(01),
								 c_out=>c02);
FA03:full_adder PORT MAP(in1=>A(2),
								 in2=>in23,
								 c_in=>c02,
								 sum=>G(2),
								 c_out=>c03);
FA04:full_adder PORT MAP(in1=>A(3),
								 in2=>in24,
								 c_in=>c03,
								 sum=>G(3),
								 c_out=>c04);
FA05:full_adder PORT MAP(in1=>A(4),
								 in2=>in25,
								 c_in=>c04,
								 sum=>G(4),
								 c_out=>c05);
FA06:full_adder PORT MAP(in1=>A(5),
								 in2=>in26,
								 c_in=>c05,
								 sum=>G(5),
								 c_out=>c06);
FA07:full_adder PORT MAP(in1=>A(6),
								 in2=>in27,
								 c_in=>c06,
								 sum=>G(6),
								 c_out=>c07);
FA08:full_adder PORT MAP(in1=>A(7),
								 in2=>in28,
								 c_in=>c07,
								 sum=>G(7),
								 c_out=>c08);
FA09:full_adder PORT MAP(in1=>A(8),
								 in2=>in29,
								 c_in=>c08,
								 sum=>G(8),
								 c_out=>c09);
FA10:full_adder PORT MAP(in1=>A(9),
								 in2=>in210,
								 c_in=>c09,
								 sum=>G(9),
								 c_out=>c10);
FA11:full_adder PORT MAP(in1=>A(10),
								 in2=>in211,
								 c_in=>c10,
								 sum=>G(10),
								 c_out=>c11);
FA12:full_adder PORT MAP(in1=>A(11),
								 in2=>in212,
								 c_in=>c11,
								 sum=>G(11),
								 c_out=>c12);
FA13:full_adder PORT MAP(in1=>A(12),
								 in2=>in213,
								 c_in=>c12,
								 sum=>G(12),
								 c_out=>c13);
FA14:full_adder PORT MAP(in1=>A(13),
								 in2=>in214,
								 c_in=>c13,
								 sum=>G(13),
								 c_out=>c14);
FA15:full_adder PORT MAP(in1=>A(14),
								 in2=>in215,
								 c_in=>c14,
								 sum=>G(14),
								 c_out=>c15);
FA16:full_adder PORT MAP(in1=>A(15),
								 in2=>in216,
								 c_in=>c15,
								 sum=>G(15),
								 c_out=>c16);
								 
V_output<=c16 xor c15;
C_output<=c16; 
end Behavioral;

