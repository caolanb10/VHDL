----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:37:40 03/16/2017 
-- Design Name: 
-- Module Name:    registerFile - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;


library UNISIM;
use UNISIM.VComponents.all;

entity registerFile is
    Port ( A_select : in  STD_LOGIC_VECTOR(2 downto 0);
           B_select : in  STD_LOGIC(2 downto 0);
           load_enable : in  STD_LOGIC;
           Dest_select : in  STD_LOGIC_VECTOR(2 downto 0);
           D_data : in  STD_LOGIC_VECTOR(15 downto 0);
           A_data : out  STD_LOGIC_VECTOR(15 downto 0);
           B_data : out  STD_LOGIC_VECTOR(15 downto 0));
end registerFile;

architecture Behavioral of registerFile is

	component decoder3to8
		Port(D: in STD_LOGIC_VECTOR(2 downto 0);
			R0: out STD_LOGIC;
			R1: out STD_LOGIC;
			R2: out STD_LOGIC;
			R3: out STD_LOGIC;
			R4: out STD_LOGIC;
			R5: out STD_LOGIC;
			R6: out STD_LOGIC;
			R7: out STD_LOGIC);
	end component;
		
	component mux8to1
		Port(S: in STD_LOGIC_VECTOR(2 downto 0);
				in0: in STD_LOGIC_VECTOR(15 downto 0);
				in1: in STD_LOGIC_VECTOR(15 downto 0);
				in2: in STD_LOGIC_VECTOR(15 downto 0);
				in3: in STD_LOGIC_VECTOR(15 downto 0);
				in4: in STD_LOGIC_VECTOR(15 downto 0);
				in5: in STD_LOGIC_VECTOR(15 downto 0);
				in6: in STD_LOGIC_VECTOR(15 downto 0);
				in7: in STD_LOGIC_VECTOR(15 downto 0);
				output: out STD_LOGIC_VECTOR(15 downto 0));
	end component;

	component theRegister
    Port ( D : in  STD_LOGIC_VECTOR(15 downto 0);
           load : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(15 downto 0));
	end component;
	
signal loadReg : STD_LOGIC;
signal r0,r1,r2,r3,r4,r5,r6,r7 : STD_LOGIC;
signal o0,o1,o2,o3,o4,o5,o6,o7 : STD_LOGIC;
signal Data, A_data, B_data : STD_LOGIC_VECTOR(15 downto 0);
signal A_select, B_select, D_select : STD_LOGIC_VECTOR(2 downto 0);

begin
muxA:mux8to1 PORT MAP(
								S=>A_select,
								in0=>o0,
								in1=>o1,
								in2=>o2,
								in3=>o3,
								in4=>o4,
								in5=>o5,
								in6=>o6,
								in7=>o7,
								output=>A_data);
muxB:mux8to1 PORT MAP(
								S=>B_select,
								in0=>o0,
								in1=>o1,
								in2=>o2,
								in3=>o3,
								in4=>o4,
								in5=>o5,
								in6=>o6,
								in7=>o7,
								output=>B_data);
								
decoder:decoder3to8 PORT MAP(
										D=>D_select,
										R0=>r0,
										R1=>r1,
										R2=>r2,
										R3=>r3,
										R4=>r4,
										R5=>r5,
										R6=>r6,
										R7=>r7);

reg00:theRegister PORT MAP(
										D=> Data,
										load=>loadReg and r0,
										Q=>o0
										);
reg01:theRegister PORT MAP(
										D=> Data,
										load=>loadReg and r1,
										Q=>o1
										);
reg02:theRegister PORT MAP(
										D=> Data,
										load=>loadReg and r2,
										Q=>o2
										);
reg03:theRegister PORT MAP(
										D=> Data,
										load=>loadReg and r3,
										Q=>o3
										);
reg04:theRegister PORT MAP(
										D=> Data,
										load=>loadReg and r4,
										Q=>o4
										);
reg05:theRegister PORT MAP(
										D=> Data,
										load=>loadReg and r5,
										Q=>o5
										);
reg06:theRegister PORT MAP(
										D=> Data,
										load=>loadReg and r6,
										Q=>o6
										);
reg07:theRegister PORT MAP(
										D=> Data,
										load=>loadReg and r7,
										Q=>o7
										);

end Behavioral;

