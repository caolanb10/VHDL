----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:13:04 03/21/2017 
-- Design Name: 
-- Module Name:    Shifter - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity Shifter is
    Port ( B : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           Ir : in  STD_LOGIC;
           IL : in  STD_LOGIC;
           Hsel : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           H : out  STD_LOGIC_VECTOR(15 DOWNTO 0));
end Shifter;

architecture Behavioral of Shifter is
component mux3to1 PORT ( S : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           in0 : in  STD_LOGIC;
           in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           H : out  STD_LOGIC);
end component;

begin
S0: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(0),
							in1=>B(1),
							in2=>IL,
							H=>H(0));
S1: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(1),
							in1=>B(2),
							in2=>B(0),
							H=>H(1));
S2: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(2),
							in1=>B(3),
							in2=>B(1),
							H=>H(2));
S3: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(3),
							in1=>B(4),
							in2=>B(2),
							H=>H(3));
S4: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(4),
							in1=>B(5),
							in2=>B(3),
							H=>H(4));
S5: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(5),
							in1=>B(6),
							in2=>B(4),
							H=>H(5));
S6: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(6),
							in1=>B(7),
							in2=>B(5),
							H=>H(6));
S7: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(7),
							in1=>B(8),
							in2=>B(6),
							H=>H(7));
S8: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(8),
							in1=>B(9),
							in2=>B(7),
							H=>H(8));
S9: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(9),
							in1=>B(10),
							in2=>B(8),
							H=>H(9));
S10: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(10),
							in1=>B(11),
							in2=>B(9),
							H=>H(10));
S11: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(11),
							in1=>B(12),
							in2=>B(10),
							H=>H(11));
S12: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(12),
							in1=>B(13),
							in2=>B(11),
							H=>H(12));
S13: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(13),
							in1=>B(14),
							in2=>B(12),
							H=>H(13));
S14: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(14),
							in1=>B(15),
							in2=>B(13),
							H=>H(14));
S15: mux3to1 PORT MAP(S=>Hsel,
							in0=>B(15),
							in1=>Ir,
							in2=>B(14),
							H=>H(15));

end Behavioral;

