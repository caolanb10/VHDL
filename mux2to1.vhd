----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:11:43 03/21/2017 
-- Design Name: 
-- Module Name:    mux2to1 - Behavioral 
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

entity mux2to1 is
    Port ( s : in  STD_LOGIC;
           ln0 : in  STD_LOGIC_VECTOR(15 downto 0);
           ln1 : in  STD_LOGIC_VECTOR(15 downto 0);
           G : out  STD_LOGIC_VECTOR(15 downto 0));
end mux2to1;

architecture Behavioral of mux2to1 is
begin
G<=ln0 after 5 ns when s='0' else
	ln1 after 5 ns when s='1' else
	"0000000000000000" after 5 ns;
end Behavioral;