--------------------------------------------------------------------------------
-- Author:        Parham Alvani (parham.alvani@gmail.com)
--
-- Create Date:   05-03-2017
-- Module Name:   main_t.vhd
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity main_t is
end entity main_t;

architecture rtl of main_t is
	component main
		port (clk, rst : in std_logic;
			data_in : in std_logic_vector(3 downto 0);
			data_out : out std_logic);
	end component;

	signal clk, reset : std_logic := '0';
	signal data_in : std_logic_vector(3 downto 0);
	signal data_out : std_logic;
begin
	m : main port map (clk, reset, data_in, data_out);
	reset <= '1', '0' after 10 ns;
	clk <= not clk after 50 ns;
	data_in <= "0101", "1010" after 100 ns;
end architecture;
