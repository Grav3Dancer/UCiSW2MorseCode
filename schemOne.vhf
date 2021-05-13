--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schemOne.vhf
-- /___/   /\     Timestamp : 04/28/2021 19:46:16
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl F:/XilinxProjects/u2proj/schemOne.vhf -w F:/XilinxProjects/u2proj/schemOne.sch
--Design Name: schemOne
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schemOne is
   port ( CharIn    : in    std_logic_vector (7 downto 0); 
          CharStart : in    std_logic; 
          Clk_50MHz : in    std_logic; 
          SawAddr   : in    std_logic_vector (3 downto 0); 
          SawCmd    : in    std_logic_vector (3 downto 0); 
          SawStart  : in    std_logic; 
          CharBUSY  : out   std_logic; 
          CharOUT   : out   std_logic; 
          DwrAddr   : out   std_logic_vector (3 downto 0); 
          DwrCmd    : out   std_logic_vector (3 downto 0); 
          DwrData   : out   std_logic_vector (11 downto 0); 
          DwrStart  : out   std_logic);
end schemOne;

architecture BEHAVIORAL of schemOne is
   component SawSignal
      port ( Clk       : in    std_logic; 
             Start     : in    std_logic; 
             Addr      : in    std_logic_vector (3 downto 0); 
             Cmd       : in    std_logic_vector (3 downto 0); 
             DWR_Start : out   std_logic; 
             DWR_Addr  : out   std_logic_vector (3 downto 0); 
             DWR_Cmd   : out   std_logic_vector (3 downto 0); 
             DWR_Data  : out   std_logic_vector (11 downto 0));
   end component;
   
   component SendChar
      port ( CharInput  : in    std_logic_vector (7 downto 0); 
             SendStart  : in    std_logic; 
             CLK        : in    std_logic; 
             CharOutput : out   std_logic; 
             SendBusy   : out   std_logic);
   end component;
   
begin
   XLXI_5 : SawSignal
      port map (Addr(3 downto 0)=>SawAddr(3 downto 0),
                Clk=>Clk_50MHz,
                Cmd(3 downto 0)=>SawCmd(3 downto 0),
                Start=>SawStart,
                DWR_Addr(3 downto 0)=>DwrAddr(3 downto 0),
                DWR_Cmd(3 downto 0)=>DwrCmd(3 downto 0),
                DWR_Data(11 downto 0)=>DwrData(11 downto 0),
                DWR_Start=>DwrStart);
   
   XLXI_6 : SendChar
      port map (CharInput(7 downto 0)=>CharIn(7 downto 0),
                CLK=>Clk_50MHz,
                SendStart=>CharStart,
                CharOutput=>CharOUT,
                SendBusy=>CharBUSY);
   
end BEHAVIORAL;


