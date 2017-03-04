--------------------------------------------------------------------------------
-- Author:        Parham Alvani (parham.alvani@gmail.com)
--
-- Create Date:   05-03-2017
-- Module Name:   main.vhd
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity main is
	port (clk, rst: in std_logic;
		data_in: in std_logic_vector (3 downto 0);
		data_out: out std_logic_vector (3 downto 0));
end entity;

architecture rtl of main is
	component controller is
		port (register_en : out std_logic;
	     		clk, rst : in std_logic);
	end component;
	
	component datapath is
		port (register_en : in std_logic;
			clk : in std_logic;
			register_out : out std_logic_vector (3 downto 0);
			register_in : in std_logic_vector (3 downto 0));
	end component;

	signal register_en : std_logic;
begin
	dp: datapath port map (register_en, clk, data_out, data_in);
	c : controller port map (register_en, clk, rst);
end architecture;
