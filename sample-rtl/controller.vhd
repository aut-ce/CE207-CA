--------------------------------------------------------------------------------
-- Author:        Parham Alvani (parham.alvani@gmail.com)
--
-- Create Date:   05-03-2017
-- Module Name:   controller.vhd
--------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity controller is
	port (register_en : out std_logic;
	     	clk, rst : in std_logic);
end entity;

architecture rtl of controller is
	type state is (S0, S1, S2, S3);
	signal current_state : state;
	signal next_state : state;
begin
	-- next to current
	process (clk, rst)
	begin
		if rst = '1' then
			current_state <= S0;
		elsif clk'event and clk = '1' then
			current_state <= next_state;
		end if;
	end process;

	-- next based on state
	process (current_state)
	begin
		case current_state is
			when S0 =>
				register_en <= '1';
				next_state <= S1;
			when S1 =>
				register_en <= '0';
				next_state <= S2;
			when S2 =>
				next_state <= S3;
			when S3 =>
				next_state <= S0;
		end case;
	end process;
end architecture;
