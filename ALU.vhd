----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:31:46 03/20/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
PORT (A,B : in STD_LOGIC_VECTOR(15 DOWNTO 0);
		V,C,N,Z : out STD_LOGIC;
		output : out STD_LOGIC_VECTOR(15 DOWNTO 0);
		G: in STD_LOGIC_VECTOR(3 DOWNTO 0));
		
end ALU;

architecture Behavioral of ALU is

component ArithmeticCircuit 
		PORT (
		C: in STD_LOGIC_VECTOR;
		A, B: in STD_LOGIC_VECTOR(15 downto 0);
		s1, s0: in STD_LOGIC_VECTOR;
		G: out STD_LOGIC_VECTOR(15 downto 0);
		C_output, V_output: out STD_LOGIC);
end component;

component LogicCircuit
		PORT ( s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR(15 downto 0);
           B : in  STD_LOGIC_VECTOR(15 downto 0);
           G : out  STD_LOGIC_VECTOR(15 DOWNTO 0));
end component;

component mux2to1
		PORT ( s : in  STD_LOGIC;
           ln0 : in  STD_LOGIC_VECTOR(15 downto 0);
           ln1 : in  STD_LOGIC_VECTOR(15 downto 0);
           G : out  STD_LOGIC_VECTOR(15 downto 0));
end component;

signal ACout, LCout : STD_LOGIC_VECTOR(15 DOWNTO 0);

begin
AC:ArithmeticCircuit PORT MAP (A=>A,
										 B=>B,
										 C=>G(3),
										 s1=>G(1),
										 s0=>G(2),
										 G=>ACout,
										 C_output=>C,
										 V_output=>V);
										 
LC:LogicCircuit PORT MAP		 (s0=>G(2),
										  s1=>G(1),
										  A=>A,
										  B=>B,
										  G=>LCout);
										  
Mux:mux2to1				PORT MAP	 (s=>G(0),
										  ln0=>ACout,
										  ln1=>LCout,
										  G=>output);
end Behavioral;

