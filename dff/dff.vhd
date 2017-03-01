--------------------------------------------------------------------------------
-- Author:        Parham Alvani (parham.alvani@gmail.com)
--
-- Create Date:   01-03-2017
-- Module Name:   dff.vhd
--------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity dff is
	port (
		d, clk : in std_logic;
		q : out std_logic);
end entity;

architecture arch_1_dff of dff is
begin
	process
	begin
		wait until clk = '1';
		q <= d;
	end process;
end architecture;

architecture arch_2_dff of dff is
begin
	process (clk)
	begin
		if clk'event and clk = '1' then
			q <= d;
		end if;
	end process;
end architecture;
