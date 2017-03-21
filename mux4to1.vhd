----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:18:53 03/20/2017 
-- Design Name: 
-- Module Name:    mux4to1 - Behavioral 
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

entity mux4to1 is
    Port ( s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           in0 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           in1 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           in2 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           in3 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           output : out  STD_LOGIC_VECTOR(15 DOWNTO 0));
end mux4to1;

architecture Behavioral of mux4to1 is

begin
output<= in0 after 5 ns when s0 = '0' and s1 = '0' else
			in1 after 5 ns when s0 = '0' and s1 = '1' else
			in2 after 5 ns when s0 = '1' and s1 = '0' else
			in3 after 5 ns when s0 = '1' and s1 = '1' else
			"0000000000000000" after 5 ns;
end Behavioral;

