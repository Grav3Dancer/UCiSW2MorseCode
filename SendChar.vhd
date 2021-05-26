--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : 
--  /   /         Filename : xil_8772_39
-- /___/   /\     Timestamp : 04/28/2021 17:30:53
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SendChar is
   port ( CharInput  : in    std_logic_vector (7 downto 0); 
          CLK        : in    std_logic; 
          SendStart  : in    std_logic; 
          CharOutput : out   std_logic; 
          SendBusy   : out   std_logic;
			 CharOutputVector : out	std_logic_vector (7 downto 0);
			 CharOut		: out	std_logic);
end SendChar;

architecture BEHAVIORAL of SendChar is
--
signal symbolLen : UNSIGNED(4 downto 0) := "00000";
signal symbolCode : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000000";

signal symbolCount : UNSIGNED(4 downto 0) := "10101";
signal unitCount : UNSIGNED(23 downto 0) := "000000000000000000000000";

signal sendOut : STD_LOGIC := '0';
signal sending : std_logic := '0';
signal ending : STD_LOGIC := '0';
signal symbol : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
--
begin

start_process: process(CLK)
begin

	if (rising_edge(CLK)) then
	if SendStart = '1' then
		symbol <= CharInput;
		case CharInput is
			when "01100001" => --A
					symbolLen <= "00110";
					symbolCode <= "1011100000000000000000";
			when "01100010" => --B
					symbolLen <= "01010";
					symbolCode <= "1110101010000000000000";
			when "01100011" => --C
					symbolLen <= "01100";
					symbolCode <= "1110101110100000000000";
			when "01100100" => --D
					symbolLen <= "01000";
					symbolCode <= "1110101000000000000000";
			when "01100101" => --E
					symbolLen <= "00010";
					symbolCode <= "1000000000000000000000";
			when "01100110" => --F
					symbolLen <= "01010";
					symbolCode <= "1010111010000000000000";
			when "01100111" => --G
					symbolLen <= "01010";
					symbolCode <= "1110111010000000000000";
			when "01101000" => --H
					symbolLen <= "01000";
					symbolCode <= "1010101000000000000000";
			when "01101001" => --I
					symbolLen <= "00100";
					symbolCode <= "1010000000000000000000";
			when "01101010" => --J
					symbolLen <= "01110";
					symbolCode <= "1011101110111000000000";
			when "01101011" => --K
					symbolLen <= "01010";
					symbolCode <= "1110101110000000000000";
			when "01101100" => --L
					symbolLen <= "01010";
					symbolCode <= "1011101010000000000000";
			when "01101101" => --M
					symbolLen <= "01000";
					symbolCode <= "1110111000000000000000";
			when "01101110" => --N
					symbolLen <= "00110";
					symbolCode <= "1110100000000000000000";
			when "01101111" => --O
					symbolLen <= "01100";
					symbolCode <= "1110111011100000000000";
			when "01110000" => --P
					symbolLen <= "01100";
					symbolCode <= "1011101110100000000000";
			when "01110001" => --Q
					symbolLen <= "01110";
					symbolCode <= "1110111010111000000000";
			when "01110010" => --R
					symbolLen <= "01000";
					symbolCode <= "1011101000000000000000";
			when "01110011" => --S
					symbolLen <= "00110";
					symbolCode <= "1010100000000000000000";
			when "01110100" => --T
					symbolLen <= "00100";
					symbolCode <= "1110000000000000000000";
			when "01110101" => --U
					symbolLen <= "01000";
					symbolCode <= "1010111000000000000000";
			when "01110110" => --V
					symbolLen <= "01010";
					symbolCode <= "1010101110000000000000";
			when "01110111" => --W
					symbolLen <= "01010";
					symbolCode <= "1011101110000000000000";
			when "01111000" => --X
					symbolLen <= "01100";
					symbolCode <= "1110101011100000000000";
			when "01111001" => --Y
					symbolLen <= "01110";
					symbolCode <= "1110101110111000000000";
			when "01111010" => --Z
					symbolLen <= "01100";
					symbolCode <= "1110111010100000000000";
			when "00110000" => --0
					symbolLen <= "10100";
					symbolCode <= "1110111011101110111000";
			when "00110001" => --1
					symbolLen <= "10010";
					symbolCode <= "1011101110111011100000";
			when "00110010" => --2
					symbolLen <= "10000";
					symbolCode <= "1010111011101110000000";
			when "00110011" => --3
					symbolLen <= "01110";
					symbolCode <= "1010101110111000000000";
			when "00110100" => --4
					symbolLen <= "01100";
					symbolCode <= "1010101011100000000000";
			when "00110101" => --5
					symbolLen <= "01010";
					symbolCode <= "1010101010000000000000";
			when "00110110" => --6
					symbolLen <= "01100";
					symbolCode <= "1110101010100000000000";
			when "00110111" => --7
					symbolLen <= "01110";
					symbolCode <= "1110111010101000000000";
			when "00111000" => --8
					symbolLen <= "10000";
					symbolCode <= "1110111011101010000000";
			when "00111001" => --9
					symbolLen <= "10010";
					symbolCode <= "1110111011101110100000";
			when others => --Nie wiadomo co
					symbolLen <= "00000";
					symbolCode <= "0000000000000000000000";
		end case;
		
		sending <= '1';
		elsif ending = '1' then
			sending <= '0';
		end if;
	end if;
end process start_process;

send_process: process(CLK)
begin
	if (rising_edge(CLK)) and (sending = '1') then
		if ending = '0' then -- bez tego nie dzia³a ?
		sendOut <= symbolCode(to_integer(symbolCount));
		end if;
		
--		if (unitCount = 1) and (symbolCount = 21) then
--			CharOut <= '1';
--		else
--			CharOut <= '0';
--		end if;
		
		if (unitCount = 1) then
			if (symbolCount = 21) then
				CharOutputVector <= symbol;
				CharOut <= '1';
			elsif ((symbolCount = 20) and (symbolCode(20) = '0')) then
				CharOutputVector <= "00101110"; --kropka
				CharOut <= '1';
			elsif ((symbolCount < 20) and (symbolCode(to_integer(symbolCount)) = '0')) then --koniec znaku ( . lub - )
				if (symbolCode(to_integer(symbolCount)+1) = '1') and (symbolCode(to_integer(symbolCount)+2) = '1') then
					CharOutputVector <= "00101101"; --kreska
					CharOut <= '1';
				elsif (symbolCode(to_integer(symbolCount)+1) = '1') and (symbolCode(to_integer(symbolCount)+2) = '0') then
					CharOutputVector <= "00101110"; --kropka
					CharOut <= '1';
				end if;
			end if;
			
		else
			CharOut <= '0';
		end if;
		
		unitCount <= unitCount + 1;
		ending <= '0';
		if unitCount = 100 then --10000000
			symbolCount <= symbolCount - 1;
			unitCount <= "000000000000000000000000";
			if (to_integer(symbolCount) = (21-to_integer(symbolLen))+1) then
				sendOut <= '0';
				CharOut <= '0';
				symbolCount <= "10101";
				ending <= '1';
				
			end if;
		end if;
	end if;
end process send_process;


--CharOutputVector <= symbol;
SendBusy <= sending;
CharOutput <= sendOut;


end BEHAVIORAL;

