--------------------------------------------------------------------------------
-- Author:        Parham Alvani (parham.alvani@gmail.com)
--
-- Create Date:   26-02-2017
-- Module Name:   4-bit-adder_t.vhd
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity four_bit_adder_t is
end entity;

architecture arch_four_bit_adder_t of four_bit_adder_t is
	component four_bit_adder is
		port (a, b : in std_logic_vector(3 downto 0);
			c_in : in std_logic;
		      	sum : out std_logic_vector(3 downto 0);
		      	c_out : out std_logic);
	end component four_bit_adder;
	signal a, b, sum : std_logic_vector (3 downto 0);
	signal c_in, c_out : std_logic;
	for all:four_bit_adder use entity work.four_bit_adder(arch_four_bit_adder);
begin
	a <= "0011";
	b <= "1110";
	c_in <= '0';
	four_fa : four_bit_adder port map (a, b, c_in, sum, c_out);
end architecture arch_four_bit_adder_t;

