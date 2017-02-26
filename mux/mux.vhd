--------------------------------------------------------------------------------
-- Author:        Parham Alvani (parham.alvani@gmail.com)
--
-- Create Date:   26-02-2017
-- Module Name:   mux.vhd
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity mux is
	port (sel : in std_logic_vector(1 downto 0);
		i : in std_logic_vector(3 downto 0);
		o : out std_logic);
end entity mux;

architecture beh_arch_mux of mux is
begin
	with sel select
		o <= i(0) when "00",
		     i(1) when "01",
		     i(2) when "10",
		     i(3) when "11",
		     'X' when others;
end architecture beh_arch_mux;

