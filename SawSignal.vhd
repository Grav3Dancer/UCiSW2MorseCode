--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : 
--  /   /         Filename : xil_25580_21
-- /___/   /\     Timestamp : 04/13/2021 17:29:39
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
use ieee.std_logic_1164.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SawSignal is
   port ( Addr      : in    std_logic_vector (3 downto 0); 
          Clk       : in    std_logic; 
          Cmd       : in    std_logic_vector (3 downto 0); 
          Start     : in    std_logic; 
          DWR_Addr  : out   std_logic_vector (3 downto 0); 
          DWR_Cmd   : out   std_logic_vector (3 downto 0); 
          DWR_Data  : out   std_logic_vector (11 downto 0); 
          DWR_Start : out   std_logic);
end SawSignal;

architecture BEHAVIORAL of SawSignal is
signal x : UNSIGNED(11 downto 0) :="000000000000";
signal timeCnt : UNSIGNED(10 downto 0) := "00000000000";
signal counter : UNSIGNED(5 downto 0) := "000000";
signal sendStart : STD_LOGIC := '0';
begin

send_process: process(Clk, Start)
begin
	if rising_edge(Clk) then
		if Start = '1' then
			timeCnt <= timeCnt + 1;
			if timeCnt = 1561 then
				timeCnt <= "00000000000";
				counter <= counter + 1;
				if counter = 31 then
					counter <= "000000";
					x <= "000000000000";
				else
					x <= x + 132;
				end if;
			end if;
			if timeCnt = 0 then
				sendStart <= '1';
			else
				sendStart <= '0';
			end if;
		end if;
	end if;
end process send_process;
DWR_Addr <= Addr;
DWR_Cmd <= Cmd;
DWR_Start <= sendStart;
DWR_Data <= STD_LOGIC_VECTOR(x);
end BEHAVIORAL;


