----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:30:15 03/20/2017 
-- Design Name: 
-- Module Name:    FunctionalUnit - Behavioral 
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

entity FunctionalUnit is
    Port ( A_in : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           B_in  : in  STD_LOGIC_VECTOR(15 DOWNTO 0);
           Output : out  STD_LOGIC_VECTOR(15 DOWNTO 0);
           V : out  STD_LOGIC;
           C : out  STD_LOGIC;
           N : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end FunctionalUnit;

architecture Behavioral of FunctionalUnit is

	component
begin


end Behavioral;

