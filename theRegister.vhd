----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:25:10 02/21/2017 
-- Design Name: 
-- Module Name:    register - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity theRegister is
    Port ( D : in  STD_LOGIC_VECTOR(15 downto 0);
           load : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(15 downto 0));
end theRegister;

architecture Behavioral of theRegister is
begin
Q<=D after 5 ns when load=1 else
	0 after 5 ns;
end Behavioral;