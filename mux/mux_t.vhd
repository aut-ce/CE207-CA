--------------------------------------------------------------------------------
-- Author:        Parham Alvani (parham.alvani@gmail.com)
--
-- Create Date:   26-02-2017
-- Module Name:   mux_t.vhd
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity mux_t is
end entity mux_t;

architecture arch_mux_t of mux_t is
	component mux is
		port (sel : in std_logic_vector(1 downto 0);
			i : in std_logic_vector(3 downto 0);
			o : out std_logic);
	end component mux;
	signal i : std_logic_vector(3 downto 0);
	signal sel : std_logic_vector(1 downto 0);
	signal o : std_logic;
	for all:mux use entity work.mux(beh_arch_mux);
	-- for all:mux use entity work.mux(seq_arch_mux);
begin
	m : mux port map (sel, i, o);
	i <= "1101";
	sel <= "00", "10" after 100 ns;
end architecture arch_mux_t;
