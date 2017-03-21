----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:27:12 03/20/2017 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
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

entity datapath is
    Port ( load_enable : in  STD_LOGIC;
           A_select : in  STD_LOGIC_VECTOR(2 downto 0);
           B_select : in  STD_LOGIC_VECTOR(2 downto 0);
           D_select : in  STD_LOGIC_VECTOR(2 downto 0);
           Data_in : in  STD_LOGIC_VECTOR(15 downto 0);
           Add_out : out  STD_LOGIC_VECTOR(15 downto 0);
           Data_out : out  STD_LOGIC_VECTOR(15 downto 0));
end datapath;

architecture Behavioral of datapath is

begin


end Behavioral;

