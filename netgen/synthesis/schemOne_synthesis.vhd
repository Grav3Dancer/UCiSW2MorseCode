--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: schemOne_synthesis.vhd
-- /___/   /\     Timestamp: Wed Apr 28 22:15:56 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm schemOne -w -dir netgen/synthesis -ofmt vhdl -sim schemOne.ngc schemOne_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: schemOne.ngc
-- Output file	: F:\XilinxProjects\u2proj\netgen\synthesis\schemOne_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: schemOne
-- Xilinx	: F:\Xilinx_14.7\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity schemOne is
  port (
    DwrStart : out STD_LOGIC; 
    CharOUT : out STD_LOGIC; 
    CharBUSY : out STD_LOGIC; 
    CharStart : in STD_LOGIC := 'X'; 
    Clk_50MHz : in STD_LOGIC := 'X'; 
    SawStart : in STD_LOGIC := 'X'; 
    DwrData : out STD_LOGIC_VECTOR ( 11 downto 0 ); 
    DwrAddr : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    DwrCmd : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    CharIn : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    SawCmd : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    SawAddr : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end schemOne;

architecture Structure of schemOne is
  signal CharIn_0_IBUF_9 : STD_LOGIC; 
  signal CharIn_1_IBUF_10 : STD_LOGIC; 
  signal CharIn_2_IBUF_11 : STD_LOGIC; 
  signal CharIn_3_IBUF_12 : STD_LOGIC; 
  signal CharIn_4_IBUF_13 : STD_LOGIC; 
  signal CharIn_5_IBUF_14 : STD_LOGIC; 
  signal CharIn_6_IBUF_15 : STD_LOGIC; 
  signal CharIn_7_IBUF_16 : STD_LOGIC; 
  signal CharStart_IBUF_19 : STD_LOGIC; 
  signal Clk_50MHz_BUFGP_21 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal SawAddr_0_IBUF_59 : STD_LOGIC; 
  signal SawAddr_1_IBUF_60 : STD_LOGIC; 
  signal SawAddr_2_IBUF_61 : STD_LOGIC; 
  signal SawAddr_3_IBUF_62 : STD_LOGIC; 
  signal SawCmd_0_IBUF_67 : STD_LOGIC; 
  signal SawCmd_1_IBUF_68 : STD_LOGIC; 
  signal SawCmd_2_IBUF_69 : STD_LOGIC; 
  signal SawCmd_3_IBUF_70 : STD_LOGIC; 
  signal SawStart_IBUF_72 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_10_rt_74 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_3_rt_77 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_4_rt_79 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_5_rt_81 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_6_rt_83 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_8_rt_86 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_9_rt_88 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_lut_2_Q : STD_LOGIC; 
  signal XLXI_5_Maccum_x_lut_7_Q : STD_LOGIC; 
  signal XLXI_5_Maccum_x_xor_11_rt_91 : STD_LOGIC; 
  signal XLXI_5_Mcount_timeCnt_cy_1_rt_94 : STD_LOGIC; 
  signal XLXI_5_Mcount_timeCnt_cy_2_rt_96 : STD_LOGIC; 
  signal XLXI_5_Mcount_timeCnt_cy_3_rt_98 : STD_LOGIC; 
  signal XLXI_5_Mcount_timeCnt_cy_4_rt_100 : STD_LOGIC; 
  signal XLXI_5_Mcount_timeCnt_cy_5_rt_102 : STD_LOGIC; 
  signal XLXI_5_Mcount_timeCnt_cy_6_rt_104 : STD_LOGIC; 
  signal XLXI_5_Mcount_timeCnt_cy_7_rt_106 : STD_LOGIC; 
  signal XLXI_5_Mcount_timeCnt_cy_8_rt_108 : STD_LOGIC; 
  signal XLXI_5_Mcount_timeCnt_cy_9_rt_110 : STD_LOGIC; 
  signal XLXI_5_Mcount_timeCnt_xor_10_rt_112 : STD_LOGIC; 
  signal XLXI_5_N3 : STD_LOGIC; 
  signal XLXI_5_N5 : STD_LOGIC; 
  signal XLXI_5_Result_0_1 : STD_LOGIC; 
  signal XLXI_5_Result_10_1 : STD_LOGIC; 
  signal XLXI_5_Result_1_1 : STD_LOGIC; 
  signal XLXI_5_Result_2_1 : STD_LOGIC; 
  signal XLXI_5_Result_2_2 : STD_LOGIC; 
  signal XLXI_5_Result_3_1 : STD_LOGIC; 
  signal XLXI_5_Result_3_2 : STD_LOGIC; 
  signal XLXI_5_Result_4_1 : STD_LOGIC; 
  signal XLXI_5_Result_4_2 : STD_LOGIC; 
  signal XLXI_5_Result_5_1 : STD_LOGIC; 
  signal XLXI_5_Result_5_2 : STD_LOGIC; 
  signal XLXI_5_Result_6_1 : STD_LOGIC; 
  signal XLXI_5_Result_7_1 : STD_LOGIC; 
  signal XLXI_5_Result_8_1 : STD_LOGIC; 
  signal XLXI_5_Result_9_1 : STD_LOGIC; 
  signal XLXI_5_counter_and0000 : STD_LOGIC; 
  signal XLXI_5_counter_and00001_149 : STD_LOGIC; 
  signal XLXI_5_counter_not0001 : STD_LOGIC; 
  signal XLXI_5_sendStart_151 : STD_LOGIC; 
  signal XLXI_5_sendStart_cmp_eq0000_152 : STD_LOGIC; 
  signal XLXI_6_Mcount_symbolCount : STD_LOGIC; 
  signal XLXI_6_Mcount_symbolCount1 : STD_LOGIC; 
  signal XLXI_6_Mcount_symbolCount2 : STD_LOGIC; 
  signal XLXI_6_Mcount_symbolCount3 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_10_rt_180 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_11_rt_182 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_12_rt_184 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_13_rt_186 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_14_rt_188 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_15_rt_190 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_16_rt_192 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_17_rt_194 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_18_rt_196 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_19_rt_198 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_1_rt_200 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_20_rt_202 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_21_rt_204 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_22_rt_206 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_2_rt_208 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_3_rt_210 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_4_rt_212 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_5_rt_214 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_6_rt_216 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_7_rt_218 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_8_rt_220 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_9_rt_222 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_xor_23_rt_224 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_3_f6_225 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_4_f5_226 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_4_f5_rt_227 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_4_f6_228 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_5_f5_229 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_5_f51 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_6_231 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_61_232 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_62_233 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_6_f5_234 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_7_235 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_71_236 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_72_237 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_8_238 : STD_LOGIC; 
  signal XLXI_6_N3 : STD_LOGIC; 
  signal XLXI_6_ending_283 : STD_LOGIC; 
  signal XLXI_6_ending_mux0002 : STD_LOGIC; 
  signal XLXI_6_sendOut_285 : STD_LOGIC; 
  signal XLXI_6_sendOut_mux0000 : STD_LOGIC; 
  signal XLXI_6_sendOut_not0001 : STD_LOGIC; 
  signal XLXI_6_sending_288 : STD_LOGIC; 
  signal XLXI_6_symbolCode_mux0001 : STD_LOGIC; 
  signal XLXI_6_symbolCount_cmp_eq0000 : STD_LOGIC; 
  signal XLXI_6_symbolCount_cmp_eq0000632_325 : STD_LOGIC; 
  signal XLXI_6_symbolCount_cmp_eq0000665_326 : STD_LOGIC; 
  signal XLXI_6_symbolCount_not0001 : STD_LOGIC; 
  signal XLXI_6_symbolCount_not00011_328 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000 : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DO_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DO_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DO_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DO_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DO_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DO_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DO_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DO_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DO_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DO_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DO_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DO_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DO_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DOP_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DOP_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DOP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_6_Mrom_rom0000_DOP_0_UNCONNECTED : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy : STD_LOGIC_VECTOR ( 10 downto 2 ); 
  signal XLXI_5_Mcount_timeCnt_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal XLXI_5_Mcount_timeCnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_5_Result : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_5_counter : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_5_timeCnt : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal XLXI_5_x : STD_LOGIC_VECTOR ( 11 downto 2 ); 
  signal XLXI_6_Mcount_unitCount_cy : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal XLXI_6_Mcount_unitCount_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_6_Result : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal XLXI_6_rom0000 : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal XLXI_6_symbolCode : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal XLXI_6_symbolCode_mux0002 : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal XLXI_6_symbolCount : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_6_symbolLen : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_6_symbolLen_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_6_symbol : STD_LOGIC_VECTOR ( 7 downto 5 ); 
  signal XLXI_6_unitCount : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal XLXI_6_unitCount_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  XLXI_5_Mcount_timeCnt_xor_10_Q : XORCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(9),
      LI => XLXI_5_Mcount_timeCnt_xor_10_rt_112,
      O => XLXI_5_Result(10)
    );
  XLXI_5_Mcount_timeCnt_xor_9_Q : XORCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(8),
      LI => XLXI_5_Mcount_timeCnt_cy_9_rt_110,
      O => XLXI_5_Result(9)
    );
  XLXI_5_Mcount_timeCnt_cy_9_Q : MUXCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(8),
      DI => N0,
      S => XLXI_5_Mcount_timeCnt_cy_9_rt_110,
      O => XLXI_5_Mcount_timeCnt_cy(9)
    );
  XLXI_5_Mcount_timeCnt_xor_8_Q : XORCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(7),
      LI => XLXI_5_Mcount_timeCnt_cy_8_rt_108,
      O => XLXI_5_Result(8)
    );
  XLXI_5_Mcount_timeCnt_cy_8_Q : MUXCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(7),
      DI => N0,
      S => XLXI_5_Mcount_timeCnt_cy_8_rt_108,
      O => XLXI_5_Mcount_timeCnt_cy(8)
    );
  XLXI_5_Mcount_timeCnt_xor_7_Q : XORCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(6),
      LI => XLXI_5_Mcount_timeCnt_cy_7_rt_106,
      O => XLXI_5_Result(7)
    );
  XLXI_5_Mcount_timeCnt_cy_7_Q : MUXCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(6),
      DI => N0,
      S => XLXI_5_Mcount_timeCnt_cy_7_rt_106,
      O => XLXI_5_Mcount_timeCnt_cy(7)
    );
  XLXI_5_Mcount_timeCnt_xor_6_Q : XORCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(5),
      LI => XLXI_5_Mcount_timeCnt_cy_6_rt_104,
      O => XLXI_5_Result(6)
    );
  XLXI_5_Mcount_timeCnt_cy_6_Q : MUXCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(5),
      DI => N0,
      S => XLXI_5_Mcount_timeCnt_cy_6_rt_104,
      O => XLXI_5_Mcount_timeCnt_cy(6)
    );
  XLXI_5_Mcount_timeCnt_xor_5_Q : XORCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(4),
      LI => XLXI_5_Mcount_timeCnt_cy_5_rt_102,
      O => XLXI_5_Result(5)
    );
  XLXI_5_Mcount_timeCnt_cy_5_Q : MUXCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(4),
      DI => N0,
      S => XLXI_5_Mcount_timeCnt_cy_5_rt_102,
      O => XLXI_5_Mcount_timeCnt_cy(5)
    );
  XLXI_5_Mcount_timeCnt_xor_4_Q : XORCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(3),
      LI => XLXI_5_Mcount_timeCnt_cy_4_rt_100,
      O => XLXI_5_Result(4)
    );
  XLXI_5_Mcount_timeCnt_cy_4_Q : MUXCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(3),
      DI => N0,
      S => XLXI_5_Mcount_timeCnt_cy_4_rt_100,
      O => XLXI_5_Mcount_timeCnt_cy(4)
    );
  XLXI_5_Mcount_timeCnt_xor_3_Q : XORCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(2),
      LI => XLXI_5_Mcount_timeCnt_cy_3_rt_98,
      O => XLXI_5_Result(3)
    );
  XLXI_5_Mcount_timeCnt_cy_3_Q : MUXCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(2),
      DI => N0,
      S => XLXI_5_Mcount_timeCnt_cy_3_rt_98,
      O => XLXI_5_Mcount_timeCnt_cy(3)
    );
  XLXI_5_Mcount_timeCnt_xor_2_Q : XORCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(1),
      LI => XLXI_5_Mcount_timeCnt_cy_2_rt_96,
      O => XLXI_5_Result(2)
    );
  XLXI_5_Mcount_timeCnt_cy_2_Q : MUXCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(1),
      DI => N0,
      S => XLXI_5_Mcount_timeCnt_cy_2_rt_96,
      O => XLXI_5_Mcount_timeCnt_cy(2)
    );
  XLXI_5_Mcount_timeCnt_xor_1_Q : XORCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(0),
      LI => XLXI_5_Mcount_timeCnt_cy_1_rt_94,
      O => XLXI_5_Result(1)
    );
  XLXI_5_Mcount_timeCnt_cy_1_Q : MUXCY
    port map (
      CI => XLXI_5_Mcount_timeCnt_cy(0),
      DI => N0,
      S => XLXI_5_Mcount_timeCnt_cy_1_rt_94,
      O => XLXI_5_Mcount_timeCnt_cy(1)
    );
  XLXI_5_Mcount_timeCnt_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => XLXI_5_Mcount_timeCnt_lut(0),
      O => XLXI_5_Result(0)
    );
  XLXI_5_Mcount_timeCnt_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => XLXI_5_Mcount_timeCnt_lut(0),
      O => XLXI_5_Mcount_timeCnt_cy(0)
    );
  XLXI_5_Maccum_x_xor_11_Q : XORCY
    port map (
      CI => XLXI_5_Maccum_x_cy(10),
      LI => XLXI_5_Maccum_x_xor_11_rt_91,
      O => XLXI_5_Result(11)
    );
  XLXI_5_Maccum_x_xor_10_Q : XORCY
    port map (
      CI => XLXI_5_Maccum_x_cy(9),
      LI => XLXI_5_Maccum_x_cy_10_rt_74,
      O => XLXI_5_Result_10_1
    );
  XLXI_5_Maccum_x_cy_10_Q : MUXCY
    port map (
      CI => XLXI_5_Maccum_x_cy(9),
      DI => N0,
      S => XLXI_5_Maccum_x_cy_10_rt_74,
      O => XLXI_5_Maccum_x_cy(10)
    );
  XLXI_5_Maccum_x_xor_9_Q : XORCY
    port map (
      CI => XLXI_5_Maccum_x_cy(8),
      LI => XLXI_5_Maccum_x_cy_9_rt_88,
      O => XLXI_5_Result_9_1
    );
  XLXI_5_Maccum_x_cy_9_Q : MUXCY
    port map (
      CI => XLXI_5_Maccum_x_cy(8),
      DI => N0,
      S => XLXI_5_Maccum_x_cy_9_rt_88,
      O => XLXI_5_Maccum_x_cy(9)
    );
  XLXI_5_Maccum_x_xor_8_Q : XORCY
    port map (
      CI => XLXI_5_Maccum_x_cy(7),
      LI => XLXI_5_Maccum_x_cy_8_rt_86,
      O => XLXI_5_Result_8_1
    );
  XLXI_5_Maccum_x_cy_8_Q : MUXCY
    port map (
      CI => XLXI_5_Maccum_x_cy(7),
      DI => N0,
      S => XLXI_5_Maccum_x_cy_8_rt_86,
      O => XLXI_5_Maccum_x_cy(8)
    );
  XLXI_5_Maccum_x_xor_7_Q : XORCY
    port map (
      CI => XLXI_5_Maccum_x_cy(6),
      LI => XLXI_5_Maccum_x_lut_7_Q,
      O => XLXI_5_Result_7_1
    );
  XLXI_5_Maccum_x_cy_7_Q : MUXCY
    port map (
      CI => XLXI_5_Maccum_x_cy(6),
      DI => N1,
      S => XLXI_5_Maccum_x_lut_7_Q,
      O => XLXI_5_Maccum_x_cy(7)
    );
  XLXI_5_Maccum_x_xor_6_Q : XORCY
    port map (
      CI => XLXI_5_Maccum_x_cy(5),
      LI => XLXI_5_Maccum_x_cy_6_rt_83,
      O => XLXI_5_Result_6_1
    );
  XLXI_5_Maccum_x_cy_6_Q : MUXCY
    port map (
      CI => XLXI_5_Maccum_x_cy(5),
      DI => N0,
      S => XLXI_5_Maccum_x_cy_6_rt_83,
      O => XLXI_5_Maccum_x_cy(6)
    );
  XLXI_5_Maccum_x_xor_5_Q : XORCY
    port map (
      CI => XLXI_5_Maccum_x_cy(4),
      LI => XLXI_5_Maccum_x_cy_5_rt_81,
      O => XLXI_5_Result_5_2
    );
  XLXI_5_Maccum_x_cy_5_Q : MUXCY
    port map (
      CI => XLXI_5_Maccum_x_cy(4),
      DI => N0,
      S => XLXI_5_Maccum_x_cy_5_rt_81,
      O => XLXI_5_Maccum_x_cy(5)
    );
  XLXI_5_Maccum_x_xor_4_Q : XORCY
    port map (
      CI => XLXI_5_Maccum_x_cy(3),
      LI => XLXI_5_Maccum_x_cy_4_rt_79,
      O => XLXI_5_Result_4_2
    );
  XLXI_5_Maccum_x_cy_4_Q : MUXCY
    port map (
      CI => XLXI_5_Maccum_x_cy(3),
      DI => N0,
      S => XLXI_5_Maccum_x_cy_4_rt_79,
      O => XLXI_5_Maccum_x_cy(4)
    );
  XLXI_5_Maccum_x_xor_3_Q : XORCY
    port map (
      CI => XLXI_5_Maccum_x_cy(2),
      LI => XLXI_5_Maccum_x_cy_3_rt_77,
      O => XLXI_5_Result_3_2
    );
  XLXI_5_Maccum_x_cy_3_Q : MUXCY
    port map (
      CI => XLXI_5_Maccum_x_cy(2),
      DI => N0,
      S => XLXI_5_Maccum_x_cy_3_rt_77,
      O => XLXI_5_Maccum_x_cy(3)
    );
  XLXI_5_Maccum_x_xor_2_Q : XORCY
    port map (
      CI => N0,
      LI => XLXI_5_Maccum_x_lut_2_Q,
      O => XLXI_5_Result_2_2
    );
  XLXI_5_Maccum_x_cy_2_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => XLXI_5_Maccum_x_lut_2_Q,
      O => XLXI_5_Maccum_x_cy(2)
    );
  XLXI_5_counter_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_5_1,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_counter(5)
    );
  XLXI_5_counter_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_4_1,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_counter(4)
    );
  XLXI_5_counter_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_3_1,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_counter(3)
    );
  XLXI_5_counter_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_2_1,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_counter(2)
    );
  XLXI_5_counter_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_1_1,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_counter(1)
    );
  XLXI_5_counter_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_0_1,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_counter(0)
    );
  XLXI_5_x_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result(11),
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_x(11)
    );
  XLXI_5_x_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_10_1,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_x(10)
    );
  XLXI_5_x_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_9_1,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_x(9)
    );
  XLXI_5_x_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_8_1,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_x(8)
    );
  XLXI_5_x_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_7_1,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_x(7)
    );
  XLXI_5_x_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_6_1,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_x(6)
    );
  XLXI_5_x_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_5_2,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_x(5)
    );
  XLXI_5_x_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_4_2,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_x(4)
    );
  XLXI_5_x_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_3_2,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_x(3)
    );
  XLXI_5_x_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_5_counter_and00001_149,
      D => XLXI_5_Result_2_2,
      R => XLXI_5_counter_and0000,
      Q => XLXI_5_x(2)
    );
  XLXI_5_timeCnt_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => SawStart_IBUF_72,
      D => XLXI_5_Result(10),
      R => XLXI_5_counter_not0001,
      Q => XLXI_5_timeCnt(10)
    );
  XLXI_5_timeCnt_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => SawStart_IBUF_72,
      D => XLXI_5_Result(9),
      R => XLXI_5_counter_not0001,
      Q => XLXI_5_timeCnt(9)
    );
  XLXI_5_timeCnt_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => SawStart_IBUF_72,
      D => XLXI_5_Result(8),
      R => XLXI_5_counter_not0001,
      Q => XLXI_5_timeCnt(8)
    );
  XLXI_5_timeCnt_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => SawStart_IBUF_72,
      D => XLXI_5_Result(7),
      R => XLXI_5_counter_not0001,
      Q => XLXI_5_timeCnt(7)
    );
  XLXI_5_timeCnt_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => SawStart_IBUF_72,
      D => XLXI_5_Result(6),
      R => XLXI_5_counter_not0001,
      Q => XLXI_5_timeCnt(6)
    );
  XLXI_5_timeCnt_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => SawStart_IBUF_72,
      D => XLXI_5_Result(5),
      R => XLXI_5_counter_not0001,
      Q => XLXI_5_timeCnt(5)
    );
  XLXI_5_timeCnt_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => SawStart_IBUF_72,
      D => XLXI_5_Result(4),
      R => XLXI_5_counter_not0001,
      Q => XLXI_5_timeCnt(4)
    );
  XLXI_5_timeCnt_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => SawStart_IBUF_72,
      D => XLXI_5_Result(3),
      R => XLXI_5_counter_not0001,
      Q => XLXI_5_timeCnt(3)
    );
  XLXI_5_timeCnt_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => SawStart_IBUF_72,
      D => XLXI_5_Result(2),
      R => XLXI_5_counter_not0001,
      Q => XLXI_5_timeCnt(2)
    );
  XLXI_5_timeCnt_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => SawStart_IBUF_72,
      D => XLXI_5_Result(1),
      R => XLXI_5_counter_not0001,
      Q => XLXI_5_timeCnt(1)
    );
  XLXI_5_timeCnt_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => SawStart_IBUF_72,
      D => XLXI_5_Result(0),
      R => XLXI_5_counter_not0001,
      Q => XLXI_5_timeCnt(0)
    );
  XLXI_5_sendStart : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => SawStart_IBUF_72,
      D => XLXI_5_sendStart_cmp_eq0000_152,
      Q => XLXI_5_sendStart_151
    );
  XLXI_6_Mcount_unitCount_xor_23_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(22),
      LI => XLXI_6_Mcount_unitCount_xor_23_rt_224,
      O => XLXI_6_Result(23)
    );
  XLXI_6_Mcount_unitCount_xor_22_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(21),
      LI => XLXI_6_Mcount_unitCount_cy_22_rt_206,
      O => XLXI_6_Result(22)
    );
  XLXI_6_Mcount_unitCount_cy_22_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(21),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_22_rt_206,
      O => XLXI_6_Mcount_unitCount_cy(22)
    );
  XLXI_6_Mcount_unitCount_xor_21_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(20),
      LI => XLXI_6_Mcount_unitCount_cy_21_rt_204,
      O => XLXI_6_Result(21)
    );
  XLXI_6_Mcount_unitCount_cy_21_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(20),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_21_rt_204,
      O => XLXI_6_Mcount_unitCount_cy(21)
    );
  XLXI_6_Mcount_unitCount_xor_20_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(19),
      LI => XLXI_6_Mcount_unitCount_cy_20_rt_202,
      O => XLXI_6_Result(20)
    );
  XLXI_6_Mcount_unitCount_cy_20_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(19),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_20_rt_202,
      O => XLXI_6_Mcount_unitCount_cy(20)
    );
  XLXI_6_Mcount_unitCount_xor_19_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(18),
      LI => XLXI_6_Mcount_unitCount_cy_19_rt_198,
      O => XLXI_6_Result(19)
    );
  XLXI_6_Mcount_unitCount_cy_19_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(18),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_19_rt_198,
      O => XLXI_6_Mcount_unitCount_cy(19)
    );
  XLXI_6_Mcount_unitCount_xor_18_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(17),
      LI => XLXI_6_Mcount_unitCount_cy_18_rt_196,
      O => XLXI_6_Result(18)
    );
  XLXI_6_Mcount_unitCount_cy_18_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(17),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_18_rt_196,
      O => XLXI_6_Mcount_unitCount_cy(18)
    );
  XLXI_6_Mcount_unitCount_xor_17_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(16),
      LI => XLXI_6_Mcount_unitCount_cy_17_rt_194,
      O => XLXI_6_Result(17)
    );
  XLXI_6_Mcount_unitCount_cy_17_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(16),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_17_rt_194,
      O => XLXI_6_Mcount_unitCount_cy(17)
    );
  XLXI_6_Mcount_unitCount_xor_16_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(15),
      LI => XLXI_6_Mcount_unitCount_cy_16_rt_192,
      O => XLXI_6_Result(16)
    );
  XLXI_6_Mcount_unitCount_cy_16_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(15),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_16_rt_192,
      O => XLXI_6_Mcount_unitCount_cy(16)
    );
  XLXI_6_Mcount_unitCount_xor_15_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(14),
      LI => XLXI_6_Mcount_unitCount_cy_15_rt_190,
      O => XLXI_6_Result(15)
    );
  XLXI_6_Mcount_unitCount_cy_15_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(14),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_15_rt_190,
      O => XLXI_6_Mcount_unitCount_cy(15)
    );
  XLXI_6_Mcount_unitCount_xor_14_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(13),
      LI => XLXI_6_Mcount_unitCount_cy_14_rt_188,
      O => XLXI_6_Result(14)
    );
  XLXI_6_Mcount_unitCount_cy_14_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(13),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_14_rt_188,
      O => XLXI_6_Mcount_unitCount_cy(14)
    );
  XLXI_6_Mcount_unitCount_xor_13_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(12),
      LI => XLXI_6_Mcount_unitCount_cy_13_rt_186,
      O => XLXI_6_Result(13)
    );
  XLXI_6_Mcount_unitCount_cy_13_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(12),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_13_rt_186,
      O => XLXI_6_Mcount_unitCount_cy(13)
    );
  XLXI_6_Mcount_unitCount_xor_12_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(11),
      LI => XLXI_6_Mcount_unitCount_cy_12_rt_184,
      O => XLXI_6_Result(12)
    );
  XLXI_6_Mcount_unitCount_cy_12_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(11),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_12_rt_184,
      O => XLXI_6_Mcount_unitCount_cy(12)
    );
  XLXI_6_Mcount_unitCount_xor_11_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(10),
      LI => XLXI_6_Mcount_unitCount_cy_11_rt_182,
      O => XLXI_6_Result(11)
    );
  XLXI_6_Mcount_unitCount_cy_11_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(10),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_11_rt_182,
      O => XLXI_6_Mcount_unitCount_cy(11)
    );
  XLXI_6_Mcount_unitCount_xor_10_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(9),
      LI => XLXI_6_Mcount_unitCount_cy_10_rt_180,
      O => XLXI_6_Result(10)
    );
  XLXI_6_Mcount_unitCount_cy_10_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(9),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_10_rt_180,
      O => XLXI_6_Mcount_unitCount_cy(10)
    );
  XLXI_6_Mcount_unitCount_xor_9_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(8),
      LI => XLXI_6_Mcount_unitCount_cy_9_rt_222,
      O => XLXI_6_Result(9)
    );
  XLXI_6_Mcount_unitCount_cy_9_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(8),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_9_rt_222,
      O => XLXI_6_Mcount_unitCount_cy(9)
    );
  XLXI_6_Mcount_unitCount_xor_8_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(7),
      LI => XLXI_6_Mcount_unitCount_cy_8_rt_220,
      O => XLXI_6_Result(8)
    );
  XLXI_6_Mcount_unitCount_cy_8_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(7),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_8_rt_220,
      O => XLXI_6_Mcount_unitCount_cy(8)
    );
  XLXI_6_Mcount_unitCount_xor_7_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(6),
      LI => XLXI_6_Mcount_unitCount_cy_7_rt_218,
      O => XLXI_6_Result(7)
    );
  XLXI_6_Mcount_unitCount_cy_7_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(6),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_7_rt_218,
      O => XLXI_6_Mcount_unitCount_cy(7)
    );
  XLXI_6_Mcount_unitCount_xor_6_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(5),
      LI => XLXI_6_Mcount_unitCount_cy_6_rt_216,
      O => XLXI_6_Result(6)
    );
  XLXI_6_Mcount_unitCount_cy_6_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(5),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_6_rt_216,
      O => XLXI_6_Mcount_unitCount_cy(6)
    );
  XLXI_6_Mcount_unitCount_xor_5_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(4),
      LI => XLXI_6_Mcount_unitCount_cy_5_rt_214,
      O => XLXI_6_Result(5)
    );
  XLXI_6_Mcount_unitCount_cy_5_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(4),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_5_rt_214,
      O => XLXI_6_Mcount_unitCount_cy(5)
    );
  XLXI_6_Mcount_unitCount_xor_4_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(3),
      LI => XLXI_6_Mcount_unitCount_cy_4_rt_212,
      O => XLXI_6_Result(4)
    );
  XLXI_6_Mcount_unitCount_cy_4_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(3),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_4_rt_212,
      O => XLXI_6_Mcount_unitCount_cy(4)
    );
  XLXI_6_Mcount_unitCount_xor_3_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(2),
      LI => XLXI_6_Mcount_unitCount_cy_3_rt_210,
      O => XLXI_6_Result(3)
    );
  XLXI_6_Mcount_unitCount_cy_3_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(2),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_3_rt_210,
      O => XLXI_6_Mcount_unitCount_cy(3)
    );
  XLXI_6_Mcount_unitCount_xor_2_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(1),
      LI => XLXI_6_Mcount_unitCount_cy_2_rt_208,
      O => XLXI_6_Result(2)
    );
  XLXI_6_Mcount_unitCount_cy_2_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(1),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_2_rt_208,
      O => XLXI_6_Mcount_unitCount_cy(2)
    );
  XLXI_6_Mcount_unitCount_xor_1_Q : XORCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(0),
      LI => XLXI_6_Mcount_unitCount_cy_1_rt_200,
      O => XLXI_6_Result(1)
    );
  XLXI_6_Mcount_unitCount_cy_1_Q : MUXCY
    port map (
      CI => XLXI_6_Mcount_unitCount_cy(0),
      DI => N0,
      S => XLXI_6_Mcount_unitCount_cy_1_rt_200,
      O => XLXI_6_Mcount_unitCount_cy(1)
    );
  XLXI_6_Mcount_unitCount_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => XLXI_6_Mcount_unitCount_lut(0),
      O => XLXI_6_Result(0)
    );
  XLXI_6_Mcount_unitCount_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => XLXI_6_Mcount_unitCount_lut(0),
      O => XLXI_6_Mcount_unitCount_cy(0)
    );
  XLXI_6_Mmux_symbolCode_mux0001_6 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_6_symbolCode(13),
      I1 => XLXI_6_symbolCode(12),
      I2 => XLXI_6_symbolCount(0),
      O => XLXI_6_Mmux_symbolCode_mux0001_6_231
    );
  XLXI_6_Mmux_symbolCode_mux0001_4_f5 : MUXF5
    port map (
      I0 => XLXI_6_Mmux_symbolCode_mux0001_6_231,
      I1 => XLXI_6_Mmux_symbolCode_mux0001_4_f5_rt_227,
      S => XLXI_6_symbolCount(1),
      O => XLXI_6_Mmux_symbolCode_mux0001_4_f5_226
    );
  XLXI_6_Mmux_symbolCode_mux0001_61 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_6_symbolCode(11),
      I1 => XLXI_6_symbolCode(10),
      I2 => XLXI_6_symbolCount(0),
      O => XLXI_6_Mmux_symbolCode_mux0001_61_232
    );
  XLXI_6_Mmux_symbolCode_mux0001_7 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_6_symbolCode(9),
      I1 => XLXI_6_symbolCode(8),
      I2 => XLXI_6_symbolCount(0),
      O => XLXI_6_Mmux_symbolCode_mux0001_7_235
    );
  XLXI_6_Mmux_symbolCode_mux0001_5_f5 : MUXF5
    port map (
      I0 => XLXI_6_Mmux_symbolCode_mux0001_7_235,
      I1 => XLXI_6_Mmux_symbolCode_mux0001_61_232,
      S => XLXI_6_symbolCount(1),
      O => XLXI_6_Mmux_symbolCode_mux0001_5_f5_229
    );
  XLXI_6_Mmux_symbolCode_mux0001_3_f6 : MUXF6
    port map (
      I0 => XLXI_6_Mmux_symbolCode_mux0001_5_f5_229,
      I1 => XLXI_6_Mmux_symbolCode_mux0001_4_f5_226,
      S => XLXI_6_symbolCount(2),
      O => XLXI_6_Mmux_symbolCode_mux0001_3_f6_225
    );
  XLXI_6_Mmux_symbolCode_mux0001_62 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_6_symbolCode(7),
      I1 => XLXI_6_symbolCode(6),
      I2 => XLXI_6_symbolCount(0),
      O => XLXI_6_Mmux_symbolCode_mux0001_62_233
    );
  XLXI_6_Mmux_symbolCode_mux0001_71 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_6_symbolCode(5),
      I1 => XLXI_6_symbolCode(4),
      I2 => XLXI_6_symbolCount(0),
      O => XLXI_6_Mmux_symbolCode_mux0001_71_236
    );
  XLXI_6_Mmux_symbolCode_mux0001_5_f5_0 : MUXF5
    port map (
      I0 => XLXI_6_Mmux_symbolCode_mux0001_71_236,
      I1 => XLXI_6_Mmux_symbolCode_mux0001_62_233,
      S => XLXI_6_symbolCount(1),
      O => XLXI_6_Mmux_symbolCode_mux0001_5_f51
    );
  XLXI_6_Mmux_symbolCode_mux0001_72 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_6_symbolCode(3),
      I1 => XLXI_6_symbolCode(2),
      I2 => XLXI_6_symbolCount(0),
      O => XLXI_6_Mmux_symbolCode_mux0001_72_237
    );
  XLXI_6_Mmux_symbolCode_mux0001_8 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_6_symbolCode(1),
      I1 => XLXI_6_symbolCode(0),
      I2 => XLXI_6_symbolCount(0),
      O => XLXI_6_Mmux_symbolCode_mux0001_8_238
    );
  XLXI_6_Mmux_symbolCode_mux0001_6_f5 : MUXF5
    port map (
      I0 => XLXI_6_Mmux_symbolCode_mux0001_8_238,
      I1 => XLXI_6_Mmux_symbolCode_mux0001_72_237,
      S => XLXI_6_symbolCount(1),
      O => XLXI_6_Mmux_symbolCode_mux0001_6_f5_234
    );
  XLXI_6_Mmux_symbolCode_mux0001_4_f6 : MUXF6
    port map (
      I0 => XLXI_6_Mmux_symbolCode_mux0001_6_f5_234,
      I1 => XLXI_6_Mmux_symbolCode_mux0001_5_f51,
      S => XLXI_6_symbolCount(2),
      O => XLXI_6_Mmux_symbolCode_mux0001_4_f6_228
    );
  XLXI_6_Mmux_symbolCode_mux0001_2_f7 : MUXF7
    port map (
      I0 => XLXI_6_Mmux_symbolCode_mux0001_4_f6_228,
      I1 => XLXI_6_Mmux_symbolCode_mux0001_3_f6_225,
      S => XLXI_6_symbolCount(3),
      O => XLXI_6_symbolCode_mux0001
    );
  XLXI_6_unitCount_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(23),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(23)
    );
  XLXI_6_unitCount_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(22),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(22)
    );
  XLXI_6_unitCount_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(21),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(21)
    );
  XLXI_6_unitCount_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(20),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(20)
    );
  XLXI_6_unitCount_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(19),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(19)
    );
  XLXI_6_unitCount_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(18),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(18)
    );
  XLXI_6_unitCount_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(17),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(17)
    );
  XLXI_6_unitCount_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(16),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(16)
    );
  XLXI_6_unitCount_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(15),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(15)
    );
  XLXI_6_unitCount_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(14),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(14)
    );
  XLXI_6_unitCount_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(13),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(13)
    );
  XLXI_6_unitCount_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(12),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(12)
    );
  XLXI_6_unitCount_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(11),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(11)
    );
  XLXI_6_unitCount_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(10),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(10)
    );
  XLXI_6_unitCount_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(9),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(9)
    );
  XLXI_6_unitCount_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(8),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(8)
    );
  XLXI_6_unitCount_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(7),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(7)
    );
  XLXI_6_unitCount_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(6),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(6)
    );
  XLXI_6_unitCount_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(5),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(5)
    );
  XLXI_6_unitCount_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(4),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(4)
    );
  XLXI_6_unitCount_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(3),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(3)
    );
  XLXI_6_unitCount_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(2),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(2)
    );
  XLXI_6_unitCount_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(1),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(1)
    );
  XLXI_6_unitCount_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_Result(0),
      R => XLXI_6_symbolCount_not0001,
      Q => XLXI_6_unitCount(0)
    );
  XLXI_6_symbolCount_3 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_symbolCount_not00011_328,
      D => XLXI_6_Mcount_symbolCount3,
      Q => XLXI_6_symbolCount(3)
    );
  XLXI_6_symbolCount_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_symbolCount_not00011_328,
      D => XLXI_6_Mcount_symbolCount2,
      Q => XLXI_6_symbolCount(2)
    );
  XLXI_6_symbolCount_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_symbolCount_not00011_328,
      D => XLXI_6_Mcount_symbolCount1,
      Q => XLXI_6_symbolCount(1)
    );
  XLXI_6_symbolCount_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_symbolCount_not00011_328,
      D => XLXI_6_Mcount_symbolCount,
      Q => XLXI_6_symbolCount(0)
    );
  XLXI_6_Mrom_rom0000 : RAMB16_S36
    generic map(
      WRITE_MODE => "WRITE_FIRST",
      INIT_02 => X"0005DC0A00055C0A0005700800070004000540060005D008000775CE0005DD0C",
      INIT_00 => X"0007740A0005740A000400020007500800075D0C0007540A0005C00600000000",
      INIT_01 => X"0007770C00074006000770080005D40A00075C0A0005DDCE0005000400055008",
      INIT_03 => X"00000000000000000000000000000000000000000007750C00075DCE0007570C"
    )
    port map (
      CLK => Clk_50MHz_BUFGP_21,
      EN => CharStart_IBUF_19,
      SSR => N0,
      WE => N0,
      ADDR(8) => N0,
      ADDR(7) => N0,
      ADDR(6) => N0,
      ADDR(5) => N0,
      ADDR(4) => CharIn_4_IBUF_13,
      ADDR(3) => CharIn_3_IBUF_12,
      ADDR(2) => CharIn_2_IBUF_11,
      ADDR(1) => CharIn_1_IBUF_10,
      ADDR(0) => CharIn_0_IBUF_9,
      DI(31) => N0,
      DI(30) => N0,
      DI(29) => N0,
      DI(28) => N0,
      DI(27) => N0,
      DI(26) => N0,
      DI(25) => N0,
      DI(24) => N0,
      DI(23) => N0,
      DI(22) => N0,
      DI(21) => N0,
      DI(20) => N0,
      DI(19) => N0,
      DI(18) => N0,
      DI(17) => N0,
      DI(16) => N0,
      DI(15) => N0,
      DI(14) => N0,
      DI(13) => N0,
      DI(12) => N0,
      DI(11) => N0,
      DI(10) => N0,
      DI(9) => N0,
      DI(8) => N0,
      DI(7) => N0,
      DI(6) => N0,
      DI(5) => N0,
      DI(4) => N0,
      DI(3) => N0,
      DI(2) => N0,
      DI(1) => N0,
      DI(0) => N0,
      DIP(3) => N0,
      DIP(2) => N0,
      DIP(1) => N0,
      DIP(0) => N0,
      DO(31) => NLW_XLXI_6_Mrom_rom0000_DO_31_UNCONNECTED,
      DO(30) => NLW_XLXI_6_Mrom_rom0000_DO_30_UNCONNECTED,
      DO(29) => NLW_XLXI_6_Mrom_rom0000_DO_29_UNCONNECTED,
      DO(28) => NLW_XLXI_6_Mrom_rom0000_DO_28_UNCONNECTED,
      DO(27) => NLW_XLXI_6_Mrom_rom0000_DO_27_UNCONNECTED,
      DO(26) => NLW_XLXI_6_Mrom_rom0000_DO_26_UNCONNECTED,
      DO(25) => NLW_XLXI_6_Mrom_rom0000_DO_25_UNCONNECTED,
      DO(24) => NLW_XLXI_6_Mrom_rom0000_DO_24_UNCONNECTED,
      DO(23) => NLW_XLXI_6_Mrom_rom0000_DO_23_UNCONNECTED,
      DO(22) => NLW_XLXI_6_Mrom_rom0000_DO_22_UNCONNECTED,
      DO(21) => NLW_XLXI_6_Mrom_rom0000_DO_21_UNCONNECTED,
      DO(20) => NLW_XLXI_6_Mrom_rom0000_DO_20_UNCONNECTED,
      DO(19) => NLW_XLXI_6_Mrom_rom0000_DO_19_UNCONNECTED,
      DO(18) => XLXI_6_rom0000(18),
      DO(17) => XLXI_6_rom0000(17),
      DO(16) => XLXI_6_rom0000(16),
      DO(15) => XLXI_6_rom0000(15),
      DO(14) => XLXI_6_rom0000(14),
      DO(13) => XLXI_6_rom0000(13),
      DO(12) => XLXI_6_rom0000(12),
      DO(11) => XLXI_6_rom0000(11),
      DO(10) => XLXI_6_rom0000(10),
      DO(9) => XLXI_6_rom0000(9),
      DO(8) => XLXI_6_rom0000(8),
      DO(7) => XLXI_6_rom0000(7),
      DO(6) => XLXI_6_rom0000(6),
      DO(5) => XLXI_6_rom0000(5),
      DO(4) => XLXI_6_rom0000(4),
      DO(3) => XLXI_6_rom0000(3),
      DO(2) => XLXI_6_rom0000(2),
      DO(1) => XLXI_6_rom0000(1),
      DO(0) => XLXI_6_rom0000(0),
      DOP(3) => NLW_XLXI_6_Mrom_rom0000_DOP_3_UNCONNECTED,
      DOP(2) => NLW_XLXI_6_Mrom_rom0000_DOP_2_UNCONNECTED,
      DOP(1) => NLW_XLXI_6_Mrom_rom0000_DOP_1_UNCONNECTED,
      DOP(0) => NLW_XLXI_6_Mrom_rom0000_DOP_0_UNCONNECTED
    );
  XLXI_6_sending : FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_ending_283,
      D => N0,
      S => CharStart_IBUF_19,
      Q => XLXI_6_sending_288
    );
  XLXI_6_symbol_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => CharIn_7_IBUF_16,
      Q => XLXI_6_symbol(7)
    );
  XLXI_6_symbol_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => CharIn_6_IBUF_15,
      Q => XLXI_6_symbol(6)
    );
  XLXI_6_symbol_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => CharIn_5_IBUF_14,
      Q => XLXI_6_symbol(5)
    );
  XLXI_6_symbolLen_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolLen_mux0001(0),
      Q => XLXI_6_symbolLen(3)
    );
  XLXI_6_symbolLen_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolLen_mux0001(1),
      Q => XLXI_6_symbolLen(2)
    );
  XLXI_6_symbolLen_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolLen_mux0001(2),
      Q => XLXI_6_symbolLen(1)
    );
  XLXI_6_symbolLen_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolLen_mux0001(3),
      Q => XLXI_6_symbolLen(0)
    );
  XLXI_6_sendOut : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sendOut_not0001,
      D => XLXI_6_sendOut_mux0000,
      Q => XLXI_6_sendOut_285
    );
  XLXI_6_ending : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => XLXI_6_sending_288,
      D => XLXI_6_ending_mux0002,
      Q => XLXI_6_ending_283
    );
  XLXI_6_symbolCode_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(0),
      Q => XLXI_6_symbolCode(14)
    );
  XLXI_6_symbolCode_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(1),
      Q => XLXI_6_symbolCode(13)
    );
  XLXI_6_symbolCode_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(2),
      Q => XLXI_6_symbolCode(12)
    );
  XLXI_6_symbolCode_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(3),
      Q => XLXI_6_symbolCode(11)
    );
  XLXI_6_symbolCode_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(4),
      Q => XLXI_6_symbolCode(10)
    );
  XLXI_6_symbolCode_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(5),
      Q => XLXI_6_symbolCode(9)
    );
  XLXI_6_symbolCode_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(6),
      Q => XLXI_6_symbolCode(8)
    );
  XLXI_6_symbolCode_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(7),
      Q => XLXI_6_symbolCode(7)
    );
  XLXI_6_symbolCode_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(8),
      Q => XLXI_6_symbolCode(6)
    );
  XLXI_6_symbolCode_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(9),
      Q => XLXI_6_symbolCode(5)
    );
  XLXI_6_symbolCode_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(10),
      Q => XLXI_6_symbolCode(4)
    );
  XLXI_6_symbolCode_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(11),
      Q => XLXI_6_symbolCode(3)
    );
  XLXI_6_symbolCode_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(12),
      Q => XLXI_6_symbolCode(2)
    );
  XLXI_6_symbolCode_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(13),
      Q => XLXI_6_symbolCode(1)
    );
  XLXI_6_symbolCode_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_50MHz_BUFGP_21,
      CE => CharStart_IBUF_19,
      D => XLXI_6_symbolCode_mux0002(14),
      Q => XLXI_6_symbolCode(0)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => XLXI_6_unitCount(6),
      I1 => XLXI_6_unitCount(8),
      I2 => XLXI_6_unitCount(4),
      I3 => XLXI_6_unitCount(7),
      O => XLXI_6_unitCount_cmp_eq0000_wg_lut(0)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => XLXI_6_unitCount_cmp_eq0000_wg_lut(0),
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy(0)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_6_unitCount(11),
      I1 => XLXI_6_unitCount(9),
      I2 => XLXI_6_unitCount(3),
      I3 => XLXI_6_unitCount(10),
      O => XLXI_6_unitCount_cmp_eq0000_wg_lut(1)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => XLXI_6_unitCount_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => XLXI_6_unitCount_cmp_eq0000_wg_lut(1),
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy(1)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => XLXI_6_unitCount(5),
      I1 => XLXI_6_unitCount(14),
      I2 => XLXI_6_unitCount(12),
      I3 => XLXI_6_unitCount(13),
      O => XLXI_6_unitCount_cmp_eq0000_wg_lut(2)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => XLXI_6_unitCount_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => XLXI_6_unitCount_cmp_eq0000_wg_lut(2),
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy(2)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_6_unitCount(17),
      I1 => XLXI_6_unitCount(15),
      I2 => XLXI_6_unitCount(1),
      I3 => XLXI_6_unitCount(16),
      O => XLXI_6_unitCount_cmp_eq0000_wg_lut(3)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => XLXI_6_unitCount_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => XLXI_6_unitCount_cmp_eq0000_wg_lut(3),
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy(3)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_6_unitCount(20),
      I1 => XLXI_6_unitCount(18),
      I2 => XLXI_6_unitCount(0),
      I3 => XLXI_6_unitCount(19),
      O => XLXI_6_unitCount_cmp_eq0000_wg_lut(4)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => XLXI_6_unitCount_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => XLXI_6_unitCount_cmp_eq0000_wg_lut(4),
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy(4)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => XLXI_6_unitCount(2),
      I1 => XLXI_6_unitCount(23),
      I2 => XLXI_6_unitCount(21),
      I3 => XLXI_6_unitCount(22),
      O => XLXI_6_unitCount_cmp_eq0000_wg_lut(5)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => XLXI_6_unitCount_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => XLXI_6_unitCount_cmp_eq0000_wg_lut(5),
      O => XLXI_6_unitCount_cmp_eq0000
    );
  XLXI_5_Mcount_counter_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_5_counter(1),
      I1 => XLXI_5_counter(0),
      O => XLXI_5_Result_1_1
    );
  XLXI_5_Mcount_counter_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => XLXI_5_counter(2),
      I1 => XLXI_5_counter(1),
      I2 => XLXI_5_counter(0),
      O => XLXI_5_Result_2_1
    );
  XLXI_5_Mcount_counter_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => XLXI_5_counter(3),
      I1 => XLXI_5_counter(1),
      I2 => XLXI_5_counter(0),
      I3 => XLXI_5_counter(2),
      O => XLXI_5_Result_3_1
    );
  XLXI_5_Mcount_counter_xor_4_12 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => XLXI_5_counter(4),
      I1 => XLXI_5_N3,
      O => XLXI_5_Result_4_1
    );
  XLXI_5_Mcount_counter_xor_5_11 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => XLXI_5_counter(5),
      I1 => N17,
      I2 => XLXI_5_counter(4),
      O => XLXI_5_Result_5_1
    );
  XLXI_5_sendStart_cmp_eq0000_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => XLXI_5_timeCnt(0),
      I1 => XLXI_5_timeCnt(9),
      I2 => XLXI_5_timeCnt(4),
      O => N2
    );
  XLXI_5_sendStart_cmp_eq0000 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => XLXI_5_N5,
      I1 => XLXI_5_timeCnt(3),
      I2 => XLXI_5_timeCnt(10),
      I3 => N2,
      O => XLXI_5_sendStart_cmp_eq0000_152
    );
  XLXI_6_Mcount_symbolCount_xor_2_11 : LUT4
    generic map(
      INIT => X"FFA9"
    )
    port map (
      I0 => XLXI_6_symbolCount(2),
      I1 => XLXI_6_symbolCount(0),
      I2 => XLXI_6_symbolCount(1),
      I3 => XLXI_6_symbolCount_cmp_eq0000,
      O => XLXI_6_Mcount_symbolCount2
    );
  XLXI_6_symbolCount_cmp_eq0000666 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_symbolCount_cmp_eq0000665_326,
      I1 => N18,
      O => XLXI_6_symbolCount_cmp_eq0000
    );
  XLXI_6_symbolLen_mux0001_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(0),
      I1 => N16,
      O => XLXI_6_symbolLen_mux0001(3)
    );
  XLXI_6_symbolLen_mux0001_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(1),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolLen_mux0001(2)
    );
  XLXI_6_symbolLen_mux0001_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(2),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolLen_mux0001(1)
    );
  XLXI_6_symbolLen_mux0001_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(3),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolLen_mux0001(0)
    );
  XLXI_6_symbolCode_mux0002_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(9),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(9)
    );
  XLXI_6_symbolCode_mux0002_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(10),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(8)
    );
  XLXI_6_sendOut_not00011 : LUT4
    generic map(
      INIT => X"C444"
    )
    port map (
      I0 => XLXI_6_ending_283,
      I1 => XLXI_6_sending_288,
      I2 => XLXI_6_unitCount_cmp_eq0000,
      I3 => XLXI_6_symbolCount_cmp_eq0000,
      O => XLXI_6_sendOut_not0001
    );
  XLXI_6_symbolCode_mux0002_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(11),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(7)
    );
  XLXI_6_symbolCode_mux0002_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(12),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(6)
    );
  XLXI_6_symbolCode_mux0002_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(13),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(5)
    );
  XLXI_6_symbolCode_mux0002_4_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(14),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(4)
    );
  XLXI_6_symbolCode_mux0002_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(15),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(3)
    );
  XLXI_6_symbolCode_mux0002_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(16),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(2)
    );
  XLXI_6_symbolCode_mux0002_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(17),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(1)
    );
  XLXI_6_symbolCode_mux0002_14_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(4),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(14)
    );
  XLXI_6_symbolCode_mux0002_13_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(5),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(13)
    );
  XLXI_6_symbolCode_mux0002_12_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(6),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(12)
    );
  XLXI_6_symbolCode_mux0002_11_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(7),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(11)
    );
  XLXI_6_symbolCode_mux0002_10_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(8),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(10)
    );
  XLXI_6_symbolCode_mux0002_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_rom0000(18),
      I1 => XLXI_6_N3,
      O => XLXI_6_symbolCode_mux0002(0)
    );
  XLXI_6_symbolCount_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_sending_288,
      I1 => XLXI_6_unitCount_cmp_eq0000,
      O => XLXI_6_symbolCount_not0001
    );
  XLXI_6_sendOut_mux00001 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => XLXI_6_unitCount_cmp_eq0000,
      I1 => XLXI_6_symbolCode_mux0001,
      I2 => XLXI_6_symbolCount_cmp_eq0000,
      O => XLXI_6_sendOut_mux0000
    );
  XLXI_5_counter_and000011 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_5_timeCnt(8),
      I1 => XLXI_5_timeCnt(7),
      I2 => XLXI_5_timeCnt(6),
      I3 => N6,
      O => XLXI_5_N5
    );
  CharStart_IBUF : IBUF
    port map (
      I => CharStart,
      O => CharStart_IBUF_19
    );
  SawStart_IBUF : IBUF
    port map (
      I => SawStart,
      O => SawStart_IBUF_72
    );
  CharIn_7_IBUF : IBUF
    port map (
      I => CharIn(7),
      O => CharIn_7_IBUF_16
    );
  CharIn_6_IBUF : IBUF
    port map (
      I => CharIn(6),
      O => CharIn_6_IBUF_15
    );
  CharIn_5_IBUF : IBUF
    port map (
      I => CharIn(5),
      O => CharIn_5_IBUF_14
    );
  CharIn_4_IBUF : IBUF
    port map (
      I => CharIn(4),
      O => CharIn_4_IBUF_13
    );
  CharIn_3_IBUF : IBUF
    port map (
      I => CharIn(3),
      O => CharIn_3_IBUF_12
    );
  CharIn_2_IBUF : IBUF
    port map (
      I => CharIn(2),
      O => CharIn_2_IBUF_11
    );
  CharIn_1_IBUF : IBUF
    port map (
      I => CharIn(1),
      O => CharIn_1_IBUF_10
    );
  CharIn_0_IBUF : IBUF
    port map (
      I => CharIn(0),
      O => CharIn_0_IBUF_9
    );
  SawCmd_3_IBUF : IBUF
    port map (
      I => SawCmd(3),
      O => SawCmd_3_IBUF_70
    );
  SawCmd_2_IBUF : IBUF
    port map (
      I => SawCmd(2),
      O => SawCmd_2_IBUF_69
    );
  SawCmd_1_IBUF : IBUF
    port map (
      I => SawCmd(1),
      O => SawCmd_1_IBUF_68
    );
  SawCmd_0_IBUF : IBUF
    port map (
      I => SawCmd(0),
      O => SawCmd_0_IBUF_67
    );
  SawAddr_3_IBUF : IBUF
    port map (
      I => SawAddr(3),
      O => SawAddr_3_IBUF_62
    );
  SawAddr_2_IBUF : IBUF
    port map (
      I => SawAddr(2),
      O => SawAddr_2_IBUF_61
    );
  SawAddr_1_IBUF : IBUF
    port map (
      I => SawAddr(1),
      O => SawAddr_1_IBUF_60
    );
  SawAddr_0_IBUF : IBUF
    port map (
      I => SawAddr(0),
      O => SawAddr_0_IBUF_59
    );
  DwrStart_OBUF : OBUF
    port map (
      I => XLXI_5_sendStart_151,
      O => DwrStart
    );
  CharOUT_OBUF : OBUF
    port map (
      I => XLXI_6_sendOut_285,
      O => CharOUT
    );
  CharBUSY_OBUF : OBUF
    port map (
      I => XLXI_6_sending_288,
      O => CharBUSY
    );
  DwrData_11_OBUF : OBUF
    port map (
      I => XLXI_5_x(11),
      O => DwrData(11)
    );
  DwrData_10_OBUF : OBUF
    port map (
      I => XLXI_5_x(10),
      O => DwrData(10)
    );
  DwrData_9_OBUF : OBUF
    port map (
      I => XLXI_5_x(9),
      O => DwrData(9)
    );
  DwrData_8_OBUF : OBUF
    port map (
      I => XLXI_5_x(8),
      O => DwrData(8)
    );
  DwrData_7_OBUF : OBUF
    port map (
      I => XLXI_5_x(7),
      O => DwrData(7)
    );
  DwrData_6_OBUF : OBUF
    port map (
      I => XLXI_5_x(6),
      O => DwrData(6)
    );
  DwrData_5_OBUF : OBUF
    port map (
      I => XLXI_5_x(5),
      O => DwrData(5)
    );
  DwrData_4_OBUF : OBUF
    port map (
      I => XLXI_5_x(4),
      O => DwrData(4)
    );
  DwrData_3_OBUF : OBUF
    port map (
      I => XLXI_5_x(3),
      O => DwrData(3)
    );
  DwrData_2_OBUF : OBUF
    port map (
      I => XLXI_5_x(2),
      O => DwrData(2)
    );
  DwrData_1_OBUF : OBUF
    port map (
      I => N0,
      O => DwrData(1)
    );
  DwrData_0_OBUF : OBUF
    port map (
      I => N0,
      O => DwrData(0)
    );
  DwrAddr_3_OBUF : OBUF
    port map (
      I => SawAddr_3_IBUF_62,
      O => DwrAddr(3)
    );
  DwrAddr_2_OBUF : OBUF
    port map (
      I => SawAddr_2_IBUF_61,
      O => DwrAddr(2)
    );
  DwrAddr_1_OBUF : OBUF
    port map (
      I => SawAddr_1_IBUF_60,
      O => DwrAddr(1)
    );
  DwrAddr_0_OBUF : OBUF
    port map (
      I => SawAddr_0_IBUF_59,
      O => DwrAddr(0)
    );
  DwrCmd_3_OBUF : OBUF
    port map (
      I => SawCmd_3_IBUF_70,
      O => DwrCmd(3)
    );
  DwrCmd_2_OBUF : OBUF
    port map (
      I => SawCmd_2_IBUF_69,
      O => DwrCmd(2)
    );
  DwrCmd_1_OBUF : OBUF
    port map (
      I => SawCmd_1_IBUF_68,
      O => DwrCmd(1)
    );
  DwrCmd_0_OBUF : OBUF
    port map (
      I => SawCmd_0_IBUF_67,
      O => DwrCmd(0)
    );
  XLXI_5_Mcount_timeCnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_timeCnt(9),
      O => XLXI_5_Mcount_timeCnt_cy_9_rt_110
    );
  XLXI_5_Mcount_timeCnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_timeCnt(8),
      O => XLXI_5_Mcount_timeCnt_cy_8_rt_108
    );
  XLXI_5_Mcount_timeCnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_timeCnt(7),
      O => XLXI_5_Mcount_timeCnt_cy_7_rt_106
    );
  XLXI_5_Mcount_timeCnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_timeCnt(6),
      O => XLXI_5_Mcount_timeCnt_cy_6_rt_104
    );
  XLXI_5_Mcount_timeCnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_timeCnt(5),
      O => XLXI_5_Mcount_timeCnt_cy_5_rt_102
    );
  XLXI_5_Mcount_timeCnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_timeCnt(4),
      O => XLXI_5_Mcount_timeCnt_cy_4_rt_100
    );
  XLXI_5_Mcount_timeCnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_timeCnt(3),
      O => XLXI_5_Mcount_timeCnt_cy_3_rt_98
    );
  XLXI_5_Mcount_timeCnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_timeCnt(2),
      O => XLXI_5_Mcount_timeCnt_cy_2_rt_96
    );
  XLXI_5_Mcount_timeCnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_timeCnt(1),
      O => XLXI_5_Mcount_timeCnt_cy_1_rt_94
    );
  XLXI_5_Maccum_x_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_x(10),
      O => XLXI_5_Maccum_x_cy_10_rt_74
    );
  XLXI_5_Maccum_x_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_x(9),
      O => XLXI_5_Maccum_x_cy_9_rt_88
    );
  XLXI_5_Maccum_x_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_x(8),
      O => XLXI_5_Maccum_x_cy_8_rt_86
    );
  XLXI_5_Maccum_x_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_x(6),
      O => XLXI_5_Maccum_x_cy_6_rt_83
    );
  XLXI_5_Maccum_x_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_x(5),
      O => XLXI_5_Maccum_x_cy_5_rt_81
    );
  XLXI_5_Maccum_x_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_x(4),
      O => XLXI_5_Maccum_x_cy_4_rt_79
    );
  XLXI_5_Maccum_x_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_x(3),
      O => XLXI_5_Maccum_x_cy_3_rt_77
    );
  XLXI_6_Mcount_unitCount_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(22),
      O => XLXI_6_Mcount_unitCount_cy_22_rt_206
    );
  XLXI_6_Mcount_unitCount_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(21),
      O => XLXI_6_Mcount_unitCount_cy_21_rt_204
    );
  XLXI_6_Mcount_unitCount_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(20),
      O => XLXI_6_Mcount_unitCount_cy_20_rt_202
    );
  XLXI_6_Mcount_unitCount_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(19),
      O => XLXI_6_Mcount_unitCount_cy_19_rt_198
    );
  XLXI_6_Mcount_unitCount_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(18),
      O => XLXI_6_Mcount_unitCount_cy_18_rt_196
    );
  XLXI_6_Mcount_unitCount_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(17),
      O => XLXI_6_Mcount_unitCount_cy_17_rt_194
    );
  XLXI_6_Mcount_unitCount_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(16),
      O => XLXI_6_Mcount_unitCount_cy_16_rt_192
    );
  XLXI_6_Mcount_unitCount_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(15),
      O => XLXI_6_Mcount_unitCount_cy_15_rt_190
    );
  XLXI_6_Mcount_unitCount_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(14),
      O => XLXI_6_Mcount_unitCount_cy_14_rt_188
    );
  XLXI_6_Mcount_unitCount_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(13),
      O => XLXI_6_Mcount_unitCount_cy_13_rt_186
    );
  XLXI_6_Mcount_unitCount_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(12),
      O => XLXI_6_Mcount_unitCount_cy_12_rt_184
    );
  XLXI_6_Mcount_unitCount_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(11),
      O => XLXI_6_Mcount_unitCount_cy_11_rt_182
    );
  XLXI_6_Mcount_unitCount_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(10),
      O => XLXI_6_Mcount_unitCount_cy_10_rt_180
    );
  XLXI_6_Mcount_unitCount_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(9),
      O => XLXI_6_Mcount_unitCount_cy_9_rt_222
    );
  XLXI_6_Mcount_unitCount_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(8),
      O => XLXI_6_Mcount_unitCount_cy_8_rt_220
    );
  XLXI_6_Mcount_unitCount_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(7),
      O => XLXI_6_Mcount_unitCount_cy_7_rt_218
    );
  XLXI_6_Mcount_unitCount_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(6),
      O => XLXI_6_Mcount_unitCount_cy_6_rt_216
    );
  XLXI_6_Mcount_unitCount_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(5),
      O => XLXI_6_Mcount_unitCount_cy_5_rt_214
    );
  XLXI_6_Mcount_unitCount_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(4),
      O => XLXI_6_Mcount_unitCount_cy_4_rt_212
    );
  XLXI_6_Mcount_unitCount_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(3),
      O => XLXI_6_Mcount_unitCount_cy_3_rt_210
    );
  XLXI_6_Mcount_unitCount_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(2),
      O => XLXI_6_Mcount_unitCount_cy_2_rt_208
    );
  XLXI_6_Mcount_unitCount_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(1),
      O => XLXI_6_Mcount_unitCount_cy_1_rt_200
    );
  XLXI_5_Mcount_timeCnt_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_timeCnt(10),
      O => XLXI_5_Mcount_timeCnt_xor_10_rt_112
    );
  XLXI_5_Maccum_x_xor_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_5_x(11),
      O => XLXI_5_Maccum_x_xor_11_rt_91
    );
  XLXI_6_Mcount_unitCount_xor_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_unitCount(23),
      O => XLXI_6_Mcount_unitCount_xor_23_rt_224
    );
  XLXI_6_Mmux_symbolCode_mux0001_4_f5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_6_symbolCode(14),
      O => XLXI_6_Mmux_symbolCode_mux0001_4_f5_rt_227
    );
  XLXI_5_counter_and00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_5_timeCnt(0),
      I1 => XLXI_5_timeCnt(10),
      I2 => N10,
      I3 => XLXI_5_N5,
      O => XLXI_5_counter_not0001
    );
  XLXI_5_counter_and00001_SW0 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => XLXI_5_counter(5),
      I1 => XLXI_5_counter(4),
      I2 => XLXI_5_timeCnt(10),
      I3 => XLXI_5_timeCnt(0),
      O => N12
    );
  XLXI_5_counter_and00002 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => N20,
      I1 => N12,
      I2 => XLXI_5_N3,
      I3 => XLXI_5_N5,
      O => XLXI_5_counter_and0000
    );
  XLXI_6_ending_mux00021 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_6_symbolCount_cmp_eq0000632_325,
      I1 => XLXI_6_symbolCount_cmp_eq0000665_326,
      I2 => XLXI_6_unitCount_cmp_eq0000,
      O => XLXI_6_ending_mux0002
    );
  XLXI_6_Mcount_symbolCount_xor_1_11 : LUT4
    generic map(
      INIT => X"F999"
    )
    port map (
      I0 => XLXI_6_symbolCount(1),
      I1 => XLXI_6_symbolCount(0),
      I2 => XLXI_6_symbolCount_cmp_eq0000632_325,
      I3 => XLXI_6_symbolCount_cmp_eq0000665_326,
      O => XLXI_6_Mcount_symbolCount1
    );
  XLXI_6_Mcount_symbolCount_xor_3_1 : LUT4
    generic map(
      INIT => X"F666"
    )
    port map (
      I0 => XLXI_6_symbolCount(3),
      I1 => N14,
      I2 => XLXI_6_symbolCount_cmp_eq0000665_326,
      I3 => XLXI_6_symbolCount_cmp_eq0000632_325,
      O => XLXI_6_Mcount_symbolCount3
    );
  XLXI_6_Mcount_symbolCount_xor_0_11 : LUT3
    generic map(
      INIT => X"13"
    )
    port map (
      I0 => N19,
      I1 => XLXI_6_symbolCount(0),
      I2 => XLXI_6_symbolCount_cmp_eq0000632_325,
      O => XLXI_6_Mcount_symbolCount
    );
  XLXI_5_counter_and00001_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_5_timeCnt(0),
      I1 => XLXI_5_timeCnt(10),
      I2 => N10,
      I3 => XLXI_5_N5,
      O => XLXI_5_counter_and00001_149
    );
  XLXI_6_symbolCount_not00011_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_6_sending_288,
      I1 => XLXI_6_unitCount_cmp_eq0000,
      O => XLXI_6_symbolCount_not00011_328
    );
  Clk_50MHz_BUFGP : BUFGP
    port map (
      I => Clk_50MHz,
      O => Clk_50MHz_BUFGP_21
    );
  XLXI_5_Mcount_timeCnt_lut_0_INV_0 : INV
    port map (
      I => XLXI_5_timeCnt(0),
      O => XLXI_5_Mcount_timeCnt_lut(0)
    );
  XLXI_5_Maccum_x_lut_7_INV_0 : INV
    port map (
      I => XLXI_5_x(7),
      O => XLXI_5_Maccum_x_lut_7_Q
    );
  XLXI_5_Maccum_x_lut_2_INV_0 : INV
    port map (
      I => XLXI_5_x(2),
      O => XLXI_5_Maccum_x_lut_2_Q
    );
  XLXI_6_Mcount_unitCount_lut_0_INV_0 : INV
    port map (
      I => XLXI_6_unitCount(0),
      O => XLXI_6_Mcount_unitCount_lut(0)
    );
  XLXI_5_Mcount_counter_xor_0_11_INV_0 : INV
    port map (
      I => XLXI_5_counter(0),
      O => XLXI_5_Result_0_1
    );
  XLXI_6_symbolCode_mux0002_0_11 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_6_symbol(5),
      I1 => XLXI_6_symbol(6),
      I2 => XLXI_6_symbol(7),
      LO => N16,
      O => XLXI_6_N3
    );
  XLXI_5_Mcount_counter_xor_4_111 : LUT4_D
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => XLXI_5_counter(3),
      I1 => XLXI_5_counter(2),
      I2 => XLXI_5_counter(1),
      I3 => XLXI_5_counter(0),
      LO => N17,
      O => XLXI_5_N3
    );
  XLXI_6_symbolCount_cmp_eq0000632 : LUT4_D
    generic map(
      INIT => X"1248"
    )
    port map (
      I0 => XLXI_6_symbolLen(1),
      I1 => XLXI_6_symbolLen(0),
      I2 => XLXI_6_symbolCount(1),
      I3 => XLXI_6_symbolCount(0),
      LO => N18,
      O => XLXI_6_symbolCount_cmp_eq0000632_325
    );
  XLXI_6_symbolCount_cmp_eq0000665 : LUT4_D
    generic map(
      INIT => X"1248"
    )
    port map (
      I0 => XLXI_6_symbolLen(3),
      I1 => XLXI_6_symbolLen(2),
      I2 => XLXI_6_symbolCount(3),
      I3 => XLXI_6_symbolCount(2),
      LO => N19,
      O => XLXI_6_symbolCount_cmp_eq0000665_326
    );
  XLXI_5_counter_and000011_SW0 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => XLXI_5_timeCnt(5),
      I1 => XLXI_5_timeCnt(2),
      I2 => XLXI_5_timeCnt(1),
      LO => N6
    );
  XLXI_5_counter_and00001_SW0_SW0 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => SawStart_IBUF_72,
      I1 => XLXI_5_timeCnt(9),
      I2 => XLXI_5_timeCnt(4),
      I3 => XLXI_5_timeCnt(3),
      LO => N20,
      O => N10
    );
  XLXI_6_Mcount_symbolCount_xor_3_1_SW1 : LUT3_L
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => XLXI_6_symbolCount(0),
      I1 => XLXI_6_symbolCount(1),
      I2 => XLXI_6_symbolCount(2),
      LO => N14
    );

end Structure;

