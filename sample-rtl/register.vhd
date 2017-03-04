--------------------------------------------------------------------------------
-- Author:        Parham Alvani (parham.alvani@gmail.com)
--
-- Create Date:   05-03-2017
-- Module Name:   register.vhd
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity four_register is
	port (d : in std_logic_vector(3 downto 0);
		clk, en : in std_logic;
		q : out std_logic_vector(3 downto 0));
end entity;

architecture behavior of four_register is
begin
	process (clk)
	begin
		if clk = '1' and clk'event then
			if en = '1' then
				q <= d;
			end if;
		end if;
	end process;
end architecture;
