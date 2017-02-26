--------------------------------------------------------------------------------
-- Author:        Parham Alvani (parham.alvani@gmail.com)
--
-- Create Date:   26-02-2017
-- Module Name:   4-bit-adder.vhd
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity four_bit_adder is
	port (a, b : in std_logic_vector(3 downto 0);
		c_in : in std_logic;
		sum : out std_logic_vector(3 downto 0);
		c_out : out std_logic);
end entity;

architecture arch_four_bit_adder of four_bit_adder is
	component fulladdr is
		port (a, b, c_in : in std_logic;
			sum, c_out : out std_logic);
	end component fulladdr;
	signal c : std_logic_vector(4 downto 0);
	for all:fulladdr use entity work.fulladdr(arch_fulladdr);
begin
	c(0) <= c_in;
	c_out <= c(4);
	fa0 : fulladdr port map (a(0), b(0), c(0), sum(0), c(1));
	fa1 : fulladdr port map (a(1), b(1), c(1), sum(1), c(2));
	fa2 : fulladdr port map (a(2), b(2), c(2), sum(2), c(3));
	fa3 : fulladdr port map (a(3), b(3), c(3), sum(3), c(4));
end architecture arch_four_bit_adder;

