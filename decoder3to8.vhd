----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:57:10 03/16/2017 
-- Design Name: 
-- Module Name:    decoder3to8 - Behavioral 
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
entity decoder3to8 is
    Port ( D : in  STD_LOGIC_VECTOR(2 DOWNTO 0);
           Q0 : out  STD_LOGIC;
           Q1 : out  STD_LOGIC;
           Q2 : out  STD_LOGIC;
           Q3 : out  STD_LOGIC;
           Q4 : out  STD_LOGIC;
           Q5 : out  STD_LOGIC;
           Q6 : out  STD_LOGIC;
           Q7 : out  STD_LOGIC);
end decoder3to8;

architecture Behavioral of decoder3to8 is

begin
Q0<=((not D(0)) and (not D(1)) and (not D(2))) after 5 ns;
Q1<=((not D(0)) and (not D(1)) and  D(2)) after 5 ns;
Q2<=((not D(0)) and D(1) and (not D(2))) after 5 ns;
Q3<=((not D(0)) and D(1) and D(2)) after 5 ns;
Q4<= (D(0) and (not D(1)) and (not D(2))) after 5 ns;
Q5<= (D(0) and (not D(1)) and D(2)) after 5 ns;
Q6<= (D(0) and D(1) and (not D(2))) after 5 ns;
Q7<= (D(0) and D(1) and D(2)) after 5 ns;

end Behavioral;

