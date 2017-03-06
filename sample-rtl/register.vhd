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
		clk, load, shift : in std_logic;
		qout : out std_logic);
end entity;

architecture behavior of four_register is
	signal q : std_logic_vector(3 downto 0);
begin
	process (clk)
	begin
		if clk = '1' and clk'event then
			if load = '1' then
				q <= d;
			elsif shift='1' then
				qout <= q(3);
				q <= q(2 downto 0) & '0';
			end if;
		end if;
	end process;
end architecture;
