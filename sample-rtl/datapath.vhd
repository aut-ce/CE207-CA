--------------------------------------------------------------------------------
-- Author:        Parham Alvani (parham.alvani@gmail.com)
--
-- Create Date:   05-03-2017
-- Module Name:   datapath.vhd
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity datapath is
	port (register_en : in std_logic;
		clk : in std_logic;
		register_out : out std_logic_vector (3 downto 0);
		register_in : in std_logic_vector (3 downto 0));
end entity;

architecture rtl of datapath is
	component four_register is
		port (d : in std_logic_vector(3 downto 0);
			clk, en : in std_logic;
			q : out std_logic_vector(3 downto 0));
	end component;
begin
	r: four_register port map (register_in, clk, register_en, register_out);
end architecture;
