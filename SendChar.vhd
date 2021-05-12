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
          SendBusy   : out   std_logic);
end SendChar;

architecture BEHAVIORAL of SendChar is
--
type state_type is (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, Non);

signal symbolState : state_type;
signal symbolLen : UNSIGNED(3 downto 0) := "0000";
signal symbolCode : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";

signal symbolCount : UNSIGNED(3 downto 0) := "1110";
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
		case symbol is
			when "01100001" =>
					symbolState <= A;
					symbolLen <= "0110";
					symbolCode <= "101110000000000";
			when "01100010" =>
					symbolState <= B;
					symbolLen <= "1010";
					symbolCode <= "111010101000000";
			when "01100011" =>
					symbolState <= C;
					symbolLen <= "1100";
					symbolCode <= "111010111010000";
			when "01100100" =>
					symbolState <= D;
					symbolLen <= "1000";
					symbolCode <= "111010100000000";
			when "01100101" =>
					symbolState <= E;
					symbolLen <= "0010";
					symbolCode <= "100000000000000";
			when "01100110" =>
					symbolState <= F;
					symbolLen <= "1010";
					symbolCode <= "101011101000000";
			when "01100111" =>
					symbolState <= G;
					symbolLen <= "1010";
					symbolCode <= "111011101000000";
			when "01101000" =>
					symbolState <= H;
					symbolLen <= "1000";
					symbolCode <= "101010100000000";
			when "01101001" =>
					symbolState <= I;
					symbolLen <= "0100";
					symbolCode <= "101000000000000";
			when "01101010" =>
					symbolState <= J;
					symbolLen <= "1110";
					symbolCode <= "101110111011100";
			when "01101011" =>
					symbolState <= K;
					symbolLen <= "1010";
					symbolCode <= "111010111000000";
			when "01101100" =>
					symbolState <= L;
					symbolLen <= "1010";
					symbolCode <= "101110101000000";
			when "01101101" =>
					symbolState <= M;
					symbolLen <= "1000";
					symbolCode <= "111011100000000";
			when "01101110" =>
					symbolState <= N;
					symbolLen <= "0110";
					symbolCode <= "111010000000000";
			when "01101111" =>
					symbolState <= O;
					symbolLen <= "1100";
					symbolCode <= "111011101110000";
			when "01110000" =>
					symbolState <= P;
					symbolLen <= "1100";
					symbolCode <= "101110111010000";
			when "01110001" =>
					symbolState <= Q;
					symbolLen <= "1110";
					symbolCode <= "111011101011100";
			when "01110010" =>
					symbolState <= R;
					symbolLen <= "1000";
					symbolCode <= "101110100000000";
			when "01110011" =>
					symbolState <= S;
					symbolLen <= "0110";
					symbolCode <= "101010000000000";
			when "01110100" =>
					symbolState <= T;
					symbolLen <= "0100";
					symbolCode <= "111000000000000";
			when "01110101" =>
					symbolState <= U;
					symbolLen <= "1000";
					symbolCode <= "101011100000000";
			when "01110110" =>
					symbolState <= V;
					symbolLen <= "1010";
					symbolCode <= "101010111000000";
			when "01110111" =>
					symbolState <= W;
					symbolLen <= "1010";
					symbolCode <= "101110111000000";
			when "01111000" =>
					symbolState <= X;
					symbolLen <= "1100";
					symbolCode <= "111010101110000";
			when "01111001" =>
					symbolState <= Y;
					symbolLen <= "1110";
					symbolCode <= "111010111011100";
			when "01111010" =>
					symbolState <= Z;
					symbolLen <= "1100";
					symbolCode <= "111011101010000";
			when others =>
					symbolState <= Non;
					symbolLen <= "0000";
					symbolCode <= "000000000000000";
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
		unitCount <= unitCount + 1;
		ending <= '0';
		if unitCount = 100 then --10000000
			symbolCount <= symbolCount - 1;
			unitCount <= "000000000000000000000000";
			if (to_integer(symbolCount) = (14-to_integer(symbolLen)+1)) then
				sendOut <= '0';
				symbolCount <= "1110";
				ending <= '1';
				
			end if;
		end if;
	end if;
	
	

end process send_process;





SendBusy <= sending;
CharOutput <= sendOut;


end BEHAVIORAL;

