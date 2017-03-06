--------------------------------------------------------------------------------
-- Author:        Parham Alvani (parham.alvani@gmail.com)
--
-- Create Date:   05-03-2017
-- Module Name:   datapath.vhd
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity datapath is
	port (register_load, register_shift : in std_logic;
		clk : in std_logic;
		register_out : out std_logic;
		register_in : in std_logic_vector (3 downto 0));
end entity;

architecture rtl of datapath is
	component four_register is
		port (d : in std_logic_vector(3 downto 0);
			clk, load, shift : in std_logic;
			qout : out std_logic);
	end component;
begin
	r: four_register port map (register_in, clk, register_load, register_shift, register_out);
end architecture;
