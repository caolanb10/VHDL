----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:55:34 03/16/2017 
-- Design Name: 
-- Module Name:    mux8to1 - Behavioral 
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
entity mux8to1 is
    Port (
			  s: in STD_LOGIC_VECTOR(2 downto 0);
			  in0 : in  STD_LOGIC_VECTOR(15 downto 0);
           in1 : in  STD_LOGIC_VECTOR(15 downto 0);
           in2 : in  STD_LOGIC_VECTOR(15 downto 0);
           in3 : in  STD_LOGIC_VECTOR(15 downto 0);
			  in4 : in  STD_LOGIC_VECTOR(15 downto 0);
           in5 : in  STD_LOGIC_VECTOR(15 downto 0);
			  in6 : in  STD_LOGIC_VECTOR(15 downto 0);
           in7 : in  STD_LOGIC_VECTOR(15 downto 0);
           output : out  STD_LOGIC_VECTOR(15 downto 0));
end mux8to1;

architecture Behavioral of mux8to1 is
begin
output <=in0 after 5 ns when s(0) = '0' and s(1)='0' and s(2)='0' else
			in1 after 5 ns when s(0) = '0' and s(1)='0' and s(2)='1' else
			in2 after 5 ns when s(0) = '0' and s(1)='1' and s(2)='0' else
			in3 after 5 ns when s(0) = '0' and s(1)='1' and s(2)='1' else
			in4 after 5 ns when s(0) ='1' and s(1)='0' and s(2)='0' else
			in5 after 5 ns when s(0) ='1' and s(1)='0' and s(2)='1' else
			in6 after 5 ns when s(0) = '1' and s(1) = '1' and s(2) ='0' else
			in7 after 5 ns when s(0)='1' and s(1)='1' and s(2)='1' else
			"0000000000000000" after 5 ns;
end Behavioral;