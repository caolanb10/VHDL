----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:22:48 03/20/2017 
-- Design Name: 
-- Module Name:    fulladder - Behavioral 
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
entity full_adder is

Port (in1, in2, c_in:in std_ulogic;
		sum, c_out:out std_ulogic );


end full_adder;
architecture dataflow of full_adder is

signal s1,s2,s3: std_ulogic;

constant gate_delay: Time := 5 ns;

begin

s1 <= (in1 xor in2) after gate_delay;

s2 <= (c_in and s1) after gate_delay;

s3 <= (in1 and in2) after gate_delay;

sum <= (s1 xor c_in) after gate_delay;

c_out <= (s2 or s3) after gate_delay;

end dataflow;