----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:03:50 03/21/2017 
-- Design Name: 
-- Module Name:    mux3to1 - Behavioral 
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

entity mux3to1 is
    Port ( S : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           in0 : in  STD_LOGIC;
           in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           H : out  STD_LOGIC);
end mux3to1;

architecture Behavioral of mux3to1 is

begin
H<=in0 after 5 ns when S(0)='0' and S(1)='0' else
	in1 after 5 ns when S(0)='1' and S(1)='0' else
	in2 after 5 ns when S(0)='0' and S(1)='1' else
	'0' after 5 ns;
end Behavioral;

