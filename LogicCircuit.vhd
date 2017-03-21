----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:17:21 03/20/2017 
-- Design Name: 
-- Module Name:    LogicCircuit - Behavioral 
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

entity LogicCircuit is
    Port ( s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR(15 downto 0);
           B : in  STD_LOGIC_VECTOR(15 downto 0);
           G : out  STD_LOGIC_VECTOR(15 DOWNTO 0));
end LogicCircuit;

architecture Behavioral of LogicCircuit is
component mux4to1 PORT
			 (s0 : in  STD_LOGIC;
			  s1 : in  STD_LOGIC;
           in0, in1, in2, in3 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           output : out  STD_LOGIC_VECTOR(15 DOWNTO 0));
end component;
signal AandB, AorB, AxorB, notA : STD_LOGIC_VECTOR(15 downto 0);
begin

AandB<=A and B;
AxorB<= A xor B;
AorB<= A or B;
notA<= not A;

mux:mux4to1 PORT MAP(s0=>s0,
							s1=>s1,
							in0=>AandB,
							in1=>AorB,
							in2=>AxorB,
							in3=>notA,
							output=>G);
end Behavioral;

