--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schemOne.vhf
-- /___/   /\     Timestamp : 05/13/2021 10:43:54
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
          DwrStart  : out   std_logic; 
          VGA_Busy  : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_RGB   : out   std_logic; 
          VGA_VS    : out   std_logic);
end schemOne;

architecture BEHAVIORAL of schemOne is
   attribute BOX_TYPE   : string ;
   signal XLXN_2    : std_logic_vector (7 downto 0);
   signal XLXN_3    : std_logic;
   signal XLXN_4    : std_logic;
   signal XLXN_5    : std_logic;
   signal XLXN_6    : std_logic;
   signal XLXN_8    : std_logic;
   signal XLXN_9    : std_logic;
   signal XLXN_10   : std_logic;
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
      port ( CharInput        : in    std_logic_vector (7 downto 0); 
             SendStart        : in    std_logic; 
             CLK              : in    std_logic; 
             CharOutput       : out   std_logic; 
             SendBusy         : out   std_logic; 
             CharOutputVector : out   std_logic_vector (7 downto 0); 
             CharOut          : out   std_logic);
   end component;
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
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
                CharOut=>XLXN_3,
                CharOutput=>CharOUT,
                CharOutputVector(7 downto 0)=>XLXN_2(7 downto 0),
                SendBusy=>CharBUSY);
   
   XLXI_8 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_2(7 downto 0),
                Char_WE=>XLXN_3,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                CursorOn=>XLXN_4,
                Goto00=>XLXN_8,
                Home=>XLXN_10,
                NewLine=>XLXN_9,
                ScrollClear=>XLXN_6,
                ScrollEn=>XLXN_5,
                Busy=>VGA_Busy,
                VGA_HS=>VGA_HS,
                VGA_RGB=>VGA_RGB,
                VGA_VS=>VGA_VS);
   
   XLXI_9 : VCC
      port map (P=>XLXN_4);
   
   XLXI_10 : VCC
      port map (P=>XLXN_5);
   
   XLXI_11 : VCC
      port map (P=>XLXN_6);
   
   XLXI_13 : GND
      port map (G=>XLXN_8);
   
   XLXI_14 : GND
      port map (G=>XLXN_9);
   
   XLXI_15 : GND
      port map (G=>XLXN_10);
   
end BEHAVIORAL;


