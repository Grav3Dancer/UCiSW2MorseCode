--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: schemOne_timesim.vhd
-- /___/   /\     Timestamp: Wed Apr 28 22:16:51 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf schemOne.pcf -rpw 100 -tpw 0 -ar Structure -tm schemOne -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim schemOne.ncd schemOne_timesim.vhd 
-- Device	: 3s500efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: schemOne.ncd
-- Output file	: F:\XilinxProjects\u2proj\netgen\par\schemOne_timesim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  signal XLXI_6_sending_927 : STD_LOGIC; 
  signal Clk_50MHz_BUFGP : STD_LOGIC; 
  signal XLXI_6_symbolCount_not0001_0 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_1_Q : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_3_Q : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_5_Q : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_7_Q : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_9_Q : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_11_Q : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_13_Q : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_15_Q : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_17_Q : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_19_Q : STD_LOGIC; 
  signal SawStart_IBUF_965 : STD_LOGIC; 
  signal XLXI_5_counter_not0001_0 : STD_LOGIC; 
  signal XLXI_5_counter_and00001_0 : STD_LOGIC; 
  signal XLXI_5_counter_and0000_0 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_3_Q : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_5_Q : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_7_Q : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_4_f5 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_5_f5 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_3_f6 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_4_f6 : STD_LOGIC; 
  signal XLXI_6_symbolCode_mux0001 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_5_f51 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_6_f5 : STD_LOGIC; 
  signal XLXI_5_sendStart_1037 : STD_LOGIC; 
  signal CharIn_0_IBUF_1038 : STD_LOGIC; 
  signal XLXI_6_sendOut_1039 : STD_LOGIC; 
  signal CharIn_1_IBUF_1040 : STD_LOGIC; 
  signal CharIn_2_IBUF_1041 : STD_LOGIC; 
  signal CharIn_3_IBUF_1043 : STD_LOGIC; 
  signal CharIn_4_IBUF_1044 : STD_LOGIC; 
  signal CharStart_IBUF_1048 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12_0 : STD_LOGIC; 
  signal XLXI_5_N3 : STD_LOGIC; 
  signal XLXI_5_N5_0 : STD_LOGIC; 
  signal XLXI_6_symbolCount_cmp_eq0000665_1072 : STD_LOGIC; 
  signal XLXI_6_symbolCount_cmp_eq0000632_1073 : STD_LOGIC; 
  signal XLXI_6_symbolCount_cmp_eq0000_0 : STD_LOGIC; 
  signal XLXI_6_symbolCount_not00011_0 : STD_LOGIC; 
  signal XLXI_5_counter_and000011_SW0_O : STD_LOGIC; 
  signal XLXI_6_Mcount_symbolCount_xor_3_1_SW1_O : STD_LOGIC; 
  signal XLXI_6_ending_1092 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal XLXI_6_unitCount_0_DXMUX_1142 : STD_LOGIC; 
  signal XLXI_6_unitCount_0_XORF_1140 : STD_LOGIC; 
  signal XLXI_6_unitCount_0_LOGIC_ONE_1139 : STD_LOGIC; 
  signal XLXI_6_unitCount_0_CYINIT_1138 : STD_LOGIC; 
  signal XLXI_6_unitCount_0_CYSELF_1129 : STD_LOGIC; 
  signal XLXI_6_unitCount_0_BXINV_1127 : STD_LOGIC; 
  signal XLXI_6_unitCount_0_DYMUX_1121 : STD_LOGIC; 
  signal XLXI_6_unitCount_0_XORG_1119 : STD_LOGIC; 
  signal XLXI_6_unitCount_0_CYMUXG_1118 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_0_Q : STD_LOGIC; 
  signal XLXI_6_unitCount_0_LOGIC_ZERO_1116 : STD_LOGIC; 
  signal XLXI_6_unitCount_0_CYSELG_1107 : STD_LOGIC; 
  signal XLXI_6_unitCount_0_G : STD_LOGIC; 
  signal XLXI_6_unitCount_0_SRINV_1105 : STD_LOGIC; 
  signal XLXI_6_unitCount_0_CLKINV_1104 : STD_LOGIC; 
  signal XLXI_6_unitCount_0_CEINV_1103 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_DXMUX_1198 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_XORF_1196 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_CYINIT_1195 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_F : STD_LOGIC; 
  signal XLXI_6_unitCount_2_DYMUX_1180 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_XORG_1178 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_2_Q : STD_LOGIC; 
  signal XLXI_6_unitCount_2_CYSELF_1176 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_CYMUXFAST_1175 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_CYAND_1174 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_FASTCARRY_1173 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_CYMUXG2_1172 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_CYMUXF2_1171 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_LOGIC_ZERO_1170 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_CYSELG_1161 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_G : STD_LOGIC; 
  signal XLXI_6_unitCount_2_SRINV_1159 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_CLKINV_1158 : STD_LOGIC; 
  signal XLXI_6_unitCount_2_CEINV_1157 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_DXMUX_1310 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_XORF_1308 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_CYINIT_1307 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_F : STD_LOGIC; 
  signal XLXI_6_unitCount_6_DYMUX_1292 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_XORG_1290 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_6_Q : STD_LOGIC; 
  signal XLXI_6_unitCount_6_CYSELF_1288 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_CYMUXFAST_1287 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_CYAND_1286 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_FASTCARRY_1285 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_CYMUXG2_1284 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_CYMUXF2_1283 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_LOGIC_ZERO_1282 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_CYSELG_1273 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_G : STD_LOGIC; 
  signal XLXI_6_unitCount_6_SRINV_1271 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_CLKINV_1270 : STD_LOGIC; 
  signal XLXI_6_unitCount_6_CEINV_1269 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_DXMUX_1254 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_XORF_1252 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_CYINIT_1251 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_F : STD_LOGIC; 
  signal XLXI_6_unitCount_4_DYMUX_1236 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_XORG_1234 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_4_Q : STD_LOGIC; 
  signal XLXI_6_unitCount_4_CYSELF_1232 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_CYMUXFAST_1231 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_CYAND_1230 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_FASTCARRY_1229 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_CYMUXG2_1228 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_CYMUXF2_1227 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_LOGIC_ZERO_1226 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_CYSELG_1217 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_G : STD_LOGIC; 
  signal XLXI_6_unitCount_4_SRINV_1215 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_CLKINV_1214 : STD_LOGIC; 
  signal XLXI_6_unitCount_4_CEINV_1213 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_DXMUX_1366 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_XORF_1364 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_CYINIT_1363 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_F : STD_LOGIC; 
  signal XLXI_6_unitCount_8_DYMUX_1348 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_XORG_1346 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_8_Q : STD_LOGIC; 
  signal XLXI_6_unitCount_8_CYSELF_1344 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_CYMUXFAST_1343 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_CYAND_1342 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_FASTCARRY_1341 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_CYMUXG2_1340 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_CYMUXF2_1339 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_LOGIC_ZERO_1338 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_CYSELG_1329 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_G : STD_LOGIC; 
  signal XLXI_6_unitCount_8_SRINV_1327 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_CLKINV_1326 : STD_LOGIC; 
  signal XLXI_6_unitCount_8_CEINV_1325 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_DXMUX_1422 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_XORF_1420 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_CYINIT_1419 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_F : STD_LOGIC; 
  signal XLXI_6_unitCount_10_DYMUX_1404 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_XORG_1402 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_10_Q : STD_LOGIC; 
  signal XLXI_6_unitCount_10_CYSELF_1400 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_CYMUXFAST_1399 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_CYAND_1398 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_FASTCARRY_1397 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_CYMUXG2_1396 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_CYMUXF2_1395 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_LOGIC_ZERO_1394 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_CYSELG_1385 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_G : STD_LOGIC; 
  signal XLXI_6_unitCount_10_SRINV_1383 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_CLKINV_1382 : STD_LOGIC; 
  signal XLXI_6_unitCount_10_CEINV_1381 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_DXMUX_1478 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_XORF_1476 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_CYINIT_1475 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_F : STD_LOGIC; 
  signal XLXI_6_unitCount_12_DYMUX_1460 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_XORG_1458 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_12_Q : STD_LOGIC; 
  signal XLXI_6_unitCount_12_CYSELF_1456 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_CYMUXFAST_1455 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_CYAND_1454 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_FASTCARRY_1453 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_CYMUXG2_1452 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_CYMUXF2_1451 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_LOGIC_ZERO_1450 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_CYSELG_1441 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_G : STD_LOGIC; 
  signal XLXI_6_unitCount_12_SRINV_1439 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_CLKINV_1438 : STD_LOGIC; 
  signal XLXI_6_unitCount_12_CEINV_1437 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_DXMUX_1590 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_XORF_1588 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_CYINIT_1587 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_F : STD_LOGIC; 
  signal XLXI_6_unitCount_16_DYMUX_1572 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_XORG_1570 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_16_Q : STD_LOGIC; 
  signal XLXI_6_unitCount_16_CYSELF_1568 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_CYMUXFAST_1567 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_CYAND_1566 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_FASTCARRY_1565 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_CYMUXG2_1564 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_CYMUXF2_1563 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_LOGIC_ZERO_1562 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_CYSELG_1553 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_G : STD_LOGIC; 
  signal XLXI_6_unitCount_16_SRINV_1551 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_CLKINV_1550 : STD_LOGIC; 
  signal XLXI_6_unitCount_16_CEINV_1549 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_DXMUX_1702 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_XORF_1700 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_CYINIT_1699 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_F : STD_LOGIC; 
  signal XLXI_6_unitCount_20_DYMUX_1684 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_XORG_1682 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_20_Q : STD_LOGIC; 
  signal XLXI_6_unitCount_20_CYSELF_1680 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_CYMUXFAST_1679 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_CYAND_1678 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_FASTCARRY_1677 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_CYMUXG2_1676 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_CYMUXF2_1675 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_LOGIC_ZERO_1674 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_CYSELG_1665 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_G : STD_LOGIC; 
  signal XLXI_6_unitCount_20_SRINV_1663 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_CLKINV_1662 : STD_LOGIC; 
  signal XLXI_6_unitCount_20_CEINV_1661 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_DXMUX_1646 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_XORF_1644 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_CYINIT_1643 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_F : STD_LOGIC; 
  signal XLXI_6_unitCount_18_DYMUX_1628 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_XORG_1626 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_18_Q : STD_LOGIC; 
  signal XLXI_6_unitCount_18_CYSELF_1624 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_CYMUXFAST_1623 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_CYAND_1622 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_FASTCARRY_1621 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_CYMUXG2_1620 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_CYMUXF2_1619 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_LOGIC_ZERO_1618 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_CYSELG_1609 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_G : STD_LOGIC; 
  signal XLXI_6_unitCount_18_SRINV_1607 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_CLKINV_1606 : STD_LOGIC; 
  signal XLXI_6_unitCount_18_CEINV_1605 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_DXMUX_1534 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_XORF_1532 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_CYINIT_1531 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_F : STD_LOGIC; 
  signal XLXI_6_unitCount_14_DYMUX_1516 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_XORG_1514 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_14_Q : STD_LOGIC; 
  signal XLXI_6_unitCount_14_CYSELF_1512 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_CYMUXFAST_1511 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_CYAND_1510 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_FASTCARRY_1509 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_CYMUXG2_1508 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_CYMUXF2_1507 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_LOGIC_ZERO_1506 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_CYSELG_1497 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_G : STD_LOGIC; 
  signal XLXI_6_unitCount_14_SRINV_1495 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_CLKINV_1494 : STD_LOGIC; 
  signal XLXI_6_unitCount_14_CEINV_1493 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_DXMUX_1861 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_XORF_1859 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_CYINIT_1858 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_F : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_DYMUX_1843 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_XORG_1841 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_CYSELF_1839 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_CYMUXFAST_1838 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_CYAND_1837 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_FASTCARRY_1836 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_CYMUXG2_1835 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_CYMUXF2_1834 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_LOGIC_ZERO_1833 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_CYSELG_1824 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_G : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_SRINV_1822 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_CLKINV_1821 : STD_LOGIC; 
  signal XLXI_5_timeCnt_2_CEINV_1820 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_DXMUX_2029 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_XORF_2027 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_CYINIT_2026 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_F : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_DYMUX_2011 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_XORG_2009 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_CYSELF_2007 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_CYMUXFAST_2006 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_CYAND_2005 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_FASTCARRY_2004 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_CYMUXG2_2003 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_CYMUXF2_2002 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_LOGIC_ZERO_2001 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_CYSELG_1992 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_G : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_SRINV_1990 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_CLKINV_1989 : STD_LOGIC; 
  signal XLXI_5_timeCnt_8_CEINV_1988 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_DXMUX_1805 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_XORF_1803 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_LOGIC_ONE_1802 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_CYINIT_1801 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_CYSELF_1792 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_BXINV_1790 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_DYMUX_1784 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_XORG_1782 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_CYMUXG_1781 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_LOGIC_ZERO_1779 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_CYSELG_1770 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_G : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_SRINV_1768 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_CLKINV_1767 : STD_LOGIC; 
  signal XLXI_5_timeCnt_0_CEINV_1766 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_DXMUX_1917 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_XORF_1915 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_CYINIT_1914 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_F : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_DYMUX_1899 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_XORG_1897 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_CYSELF_1895 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_CYMUXFAST_1894 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_CYAND_1893 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_FASTCARRY_1892 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_CYMUXG2_1891 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_CYMUXF2_1890 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_LOGIC_ZERO_1889 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_CYSELG_1880 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_G : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_SRINV_1878 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_CLKINV_1877 : STD_LOGIC; 
  signal XLXI_5_timeCnt_4_CEINV_1876 : STD_LOGIC; 
  signal XLXI_6_unitCount_22_DXMUX_1751 : STD_LOGIC; 
  signal XLXI_6_unitCount_22_XORF_1749 : STD_LOGIC; 
  signal XLXI_6_unitCount_22_LOGIC_ZERO_1748 : STD_LOGIC; 
  signal XLXI_6_unitCount_22_CYINIT_1747 : STD_LOGIC; 
  signal XLXI_6_unitCount_22_CYSELF_1738 : STD_LOGIC; 
  signal XLXI_6_unitCount_22_F : STD_LOGIC; 
  signal XLXI_6_unitCount_22_DYMUX_1731 : STD_LOGIC; 
  signal XLXI_6_unitCount_22_XORG_1729 : STD_LOGIC; 
  signal XLXI_6_Mcount_unitCount_cy_22_Q : STD_LOGIC; 
  signal XLXI_6_unitCount_23_rt_1726 : STD_LOGIC; 
  signal XLXI_6_unitCount_22_SRINV_1718 : STD_LOGIC; 
  signal XLXI_6_unitCount_22_CLKINV_1717 : STD_LOGIC; 
  signal XLXI_6_unitCount_22_CEINV_1716 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_DXMUX_1973 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_XORF_1971 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_CYINIT_1970 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_F : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_DYMUX_1955 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_XORG_1953 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_CYSELF_1951 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_CYMUXFAST_1950 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_CYAND_1949 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_FASTCARRY_1948 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_CYMUXG2_1947 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_CYMUXF2_1946 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_LOGIC_ZERO_1945 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_CYSELG_1936 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_G : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_SRINV_1934 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_CLKINV_1933 : STD_LOGIC; 
  signal XLXI_5_timeCnt_6_CEINV_1932 : STD_LOGIC; 
  signal XLXI_5_x_8_DXMUX_2279 : STD_LOGIC; 
  signal XLXI_5_x_8_XORF_2277 : STD_LOGIC; 
  signal XLXI_5_x_8_CYINIT_2276 : STD_LOGIC; 
  signal XLXI_5_x_8_F : STD_LOGIC; 
  signal XLXI_5_x_8_DYMUX_2261 : STD_LOGIC; 
  signal XLXI_5_x_8_XORG_2259 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_8_Q : STD_LOGIC; 
  signal XLXI_5_x_8_CYSELF_2257 : STD_LOGIC; 
  signal XLXI_5_x_8_CYMUXFAST_2256 : STD_LOGIC; 
  signal XLXI_5_x_8_CYAND_2255 : STD_LOGIC; 
  signal XLXI_5_x_8_FASTCARRY_2254 : STD_LOGIC; 
  signal XLXI_5_x_8_CYMUXG2_2253 : STD_LOGIC; 
  signal XLXI_5_x_8_CYMUXF2_2252 : STD_LOGIC; 
  signal XLXI_5_x_8_LOGIC_ZERO_2251 : STD_LOGIC; 
  signal XLXI_5_x_8_CYSELG_2242 : STD_LOGIC; 
  signal XLXI_5_x_8_G : STD_LOGIC; 
  signal XLXI_5_x_8_SRINV_2240 : STD_LOGIC; 
  signal XLXI_5_x_8_CLKINV_2239 : STD_LOGIC; 
  signal XLXI_5_x_8_CEINV_2238 : STD_LOGIC; 
  signal XLXI_5_x_4_DXMUX_2166 : STD_LOGIC; 
  signal XLXI_5_x_4_XORF_2164 : STD_LOGIC; 
  signal XLXI_5_x_4_CYINIT_2163 : STD_LOGIC; 
  signal XLXI_5_x_4_F : STD_LOGIC; 
  signal XLXI_5_x_4_DYMUX_2148 : STD_LOGIC; 
  signal XLXI_5_x_4_XORG_2146 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_4_Q : STD_LOGIC; 
  signal XLXI_5_x_4_CYSELF_2144 : STD_LOGIC; 
  signal XLXI_5_x_4_CYMUXFAST_2143 : STD_LOGIC; 
  signal XLXI_5_x_4_CYAND_2142 : STD_LOGIC; 
  signal XLXI_5_x_4_FASTCARRY_2141 : STD_LOGIC; 
  signal XLXI_5_x_4_CYMUXG2_2140 : STD_LOGIC; 
  signal XLXI_5_x_4_CYMUXF2_2139 : STD_LOGIC; 
  signal XLXI_5_x_4_LOGIC_ZERO_2138 : STD_LOGIC; 
  signal XLXI_5_x_4_CYSELG_2129 : STD_LOGIC; 
  signal XLXI_5_x_4_G : STD_LOGIC; 
  signal XLXI_5_x_4_SRINV_2127 : STD_LOGIC; 
  signal XLXI_5_x_4_CLKINV_2126 : STD_LOGIC; 
  signal XLXI_5_x_4_CEINV_2125 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYINIT_2362 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYSELF_2356 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_1_BXINV_2354 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYMUXG_2353 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_1_LOGIC_ZERO_2351 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYSELG_2345 : STD_LOGIC; 
  signal XLXI_5_timeCnt_10_DXMUX_2056 : STD_LOGIC; 
  signal XLXI_5_timeCnt_10_XORF_2054 : STD_LOGIC; 
  signal XLXI_5_timeCnt_10_CYINIT_2053 : STD_LOGIC; 
  signal XLXI_5_timeCnt_10_rt_2051 : STD_LOGIC; 
  signal XLXI_5_timeCnt_10_SRINV_2043 : STD_LOGIC; 
  signal XLXI_5_timeCnt_10_CLKINV_2042 : STD_LOGIC; 
  signal XLXI_5_timeCnt_10_CEINV_2041 : STD_LOGIC; 
  signal XLXI_5_x_2_DXMUX_2110 : STD_LOGIC; 
  signal XLXI_5_x_2_XORF_2108 : STD_LOGIC; 
  signal XLXI_5_x_2_LOGIC_ONE_2107 : STD_LOGIC; 
  signal XLXI_5_x_2_CYINIT_2106 : STD_LOGIC; 
  signal XLXI_5_x_2_CYSELF_2097 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_lut_2_Q : STD_LOGIC; 
  signal XLXI_5_x_2_BXINV_2095 : STD_LOGIC; 
  signal XLXI_5_x_2_DYMUX_2089 : STD_LOGIC; 
  signal XLXI_5_x_2_XORG_2087 : STD_LOGIC; 
  signal XLXI_5_x_2_CYMUXG_2086 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_2_Q : STD_LOGIC; 
  signal XLXI_5_x_2_LOGIC_ZERO_2084 : STD_LOGIC; 
  signal XLXI_5_x_2_CYSELG_2075 : STD_LOGIC; 
  signal XLXI_5_x_2_G : STD_LOGIC; 
  signal XLXI_5_x_2_SRINV_2073 : STD_LOGIC; 
  signal XLXI_5_x_2_CLKINV_2072 : STD_LOGIC; 
  signal XLXI_5_x_2_CEINV_2071 : STD_LOGIC; 
  signal XLXI_5_x_10_DXMUX_2328 : STD_LOGIC; 
  signal XLXI_5_x_10_XORF_2326 : STD_LOGIC; 
  signal XLXI_5_x_10_LOGIC_ZERO_2325 : STD_LOGIC; 
  signal XLXI_5_x_10_CYINIT_2324 : STD_LOGIC; 
  signal XLXI_5_x_10_CYSELF_2315 : STD_LOGIC; 
  signal XLXI_5_x_10_F : STD_LOGIC; 
  signal XLXI_5_x_10_DYMUX_2308 : STD_LOGIC; 
  signal XLXI_5_x_10_XORG_2306 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_10_Q : STD_LOGIC; 
  signal XLXI_5_x_11_rt_2303 : STD_LOGIC; 
  signal XLXI_5_x_10_SRINV_2295 : STD_LOGIC; 
  signal XLXI_5_x_10_CLKINV_2294 : STD_LOGIC; 
  signal XLXI_5_x_10_CEINV_2293 : STD_LOGIC; 
  signal XLXI_5_x_6_DXMUX_2223 : STD_LOGIC; 
  signal XLXI_5_x_6_XORF_2221 : STD_LOGIC; 
  signal XLXI_5_x_6_LOGIC_ZERO_2220 : STD_LOGIC; 
  signal XLXI_5_x_6_CYINIT_2219 : STD_LOGIC; 
  signal XLXI_5_x_6_F : STD_LOGIC; 
  signal XLXI_5_x_6_DYMUX_2204 : STD_LOGIC; 
  signal XLXI_5_x_6_XORG_2202 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_cy_6_Q : STD_LOGIC; 
  signal XLXI_5_x_6_CYSELF_2200 : STD_LOGIC; 
  signal XLXI_5_x_6_CYMUXFAST_2199 : STD_LOGIC; 
  signal XLXI_5_x_6_CYAND_2198 : STD_LOGIC; 
  signal XLXI_5_x_6_FASTCARRY_2197 : STD_LOGIC; 
  signal XLXI_5_x_6_CYMUXG2_2196 : STD_LOGIC; 
  signal XLXI_5_x_6_CYMUXF2_2195 : STD_LOGIC; 
  signal XLXI_5_x_6_LOGIC_ONE_2194 : STD_LOGIC; 
  signal XLXI_5_x_6_CYSELG_2185 : STD_LOGIC; 
  signal XLXI_5_Maccum_x_lut_7_Q : STD_LOGIC; 
  signal XLXI_5_x_6_SRINV_2183 : STD_LOGIC; 
  signal XLXI_5_x_6_CLKINV_2182 : STD_LOGIC; 
  signal XLXI_5_x_6_CEINV_2181 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYSELF_2386 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYMUXFAST_2385 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYAND_2384 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_3_FASTCARRY_2383 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYMUXG2_2382 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYMUXF2_2381 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_3_LOGIC_ZERO_2380 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYSELG_2374 : STD_LOGIC; 
  signal SawCmd_3_INBUF : STD_LOGIC; 
  signal SawAddr_3_INBUF : STD_LOGIC; 
  signal CharIn_0_INBUF : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_5_f51_F5MUX_2513 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_62_2511 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_5_f51_BXINV_2505 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_5_f51_F6MUX_2504 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_71_2502 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_5_f51_BYINV_2496 : STD_LOGIC; 
  signal SawCmd_0_INBUF : STD_LOGIC; 
  signal SawAddr_2_INBUF : STD_LOGIC; 
  signal CharOUT_O : STD_LOGIC; 
  signal SawCmd_1_INBUF : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_4_f5_F5MUX_2452 : STD_LOGIC; 
  signal XLXI_6_symbolCode_14_rt_2450 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_4_f5_BXINV_2442 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_4_f5_F6MUX_2441 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_6_2439 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_4_f5_BYINV_2433 : STD_LOGIC; 
  signal XLXI_6_symbolCode_mux0001_F5MUX_2483 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_61_2481 : STD_LOGIC; 
  signal XLXI_6_symbolCode_mux0001_BXINV_2475 : STD_LOGIC; 
  signal XLXI_6_symbolCode_mux0001_F6MUX_2473 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_7_2471 : STD_LOGIC; 
  signal XLXI_6_symbolCode_mux0001_BYINV_2465 : STD_LOGIC; 
  signal DwrStart_O : STD_LOGIC; 
  signal CharIn_1_INBUF : STD_LOGIC; 
  signal SawAddr_1_INBUF : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_6_f5_F5MUX_2537 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_72_2535 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_6_f5_BXINV_2529 : STD_LOGIC; 
  signal XLXI_6_Mmux_symbolCode_mux0001_8_2527 : STD_LOGIC; 
  signal SawCmd_2_INBUF : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_CYSELF_2416 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_CYMUXFAST_2415 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_CYAND_2414 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_FASTCARRY_2413 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_CYMUXG2_2412 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_CYMUXF2_2411 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_LOGIC_ZERO_2410 : STD_LOGIC; 
  signal XLXI_6_unitCount_cmp_eq0000_CYSELG_2404 : STD_LOGIC; 
  signal SawAddr_0_INBUF : STD_LOGIC; 
  signal Clk_50MHz_INBUF : STD_LOGIC; 
  signal CharIn_2_INBUF : STD_LOGIC; 
  signal CharIn_3_INBUF : STD_LOGIC; 
  signal DwrCmd_1_O : STD_LOGIC; 
  signal CharIn_4_INBUF : STD_LOGIC; 
  signal DwrData_1_O : STD_LOGIC; 
  signal CharIn_6_INBUF : STD_LOGIC; 
  signal DwrData_4_O : STD_LOGIC; 
  signal DwrData_2_O : STD_LOGIC; 
  signal CharIn_7_INBUF : STD_LOGIC; 
  signal DwrData_5_O : STD_LOGIC; 
  signal DwrAddr_0_O : STD_LOGIC; 
  signal DwrData_3_O : STD_LOGIC; 
  signal CharIn_5_INBUF : STD_LOGIC; 
  signal DwrAddr_3_O : STD_LOGIC; 
  signal DwrData_6_O : STD_LOGIC; 
  signal DwrCmd_0_O : STD_LOGIC; 
  signal CharBUSY_O : STD_LOGIC; 
  signal DwrData_11_O : STD_LOGIC; 
  signal DwrAddr_1_O : STD_LOGIC; 
  signal DwrData_10_O : STD_LOGIC; 
  signal DwrAddr_2_O : STD_LOGIC; 
  signal DwrData_0_O : STD_LOGIC; 
  signal DwrData_7_O : STD_LOGIC; 
  signal DwrCmd_2_O : STD_LOGIC; 
  signal DwrData_8_O : STD_LOGIC; 
  signal CharStart_INBUF : STD_LOGIC; 
  signal XLXI_6_symbol_6_DXMUX_3717 : STD_LOGIC; 
  signal XLXI_6_symbol_6_DYMUX_3711 : STD_LOGIC; 
  signal XLXI_6_symbol_6_CLKINV_3709 : STD_LOGIC; 
  signal XLXI_6_symbol_6_CEINV_3708 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal XLXI_5_counter_4_DYMUX_3599 : STD_LOGIC; 
  signal XLXI_5_Result_4_1 : STD_LOGIC; 
  signal XLXI_5_counter_4_SRINV_3589 : STD_LOGIC; 
  signal XLXI_5_counter_4_CLKINV_3588 : STD_LOGIC; 
  signal XLXI_5_counter_4_CEINV_3587 : STD_LOGIC; 
  signal XLXI_6_symbol_7_DYMUX_3729 : STD_LOGIC; 
  signal XLXI_6_symbol_7_CLKINV_3727 : STD_LOGIC; 
  signal XLXI_6_symbol_7_CEINV_3726 : STD_LOGIC; 
  signal XLXI_6_sendOut_not0001 : STD_LOGIC; 
  signal XLXI_6_symbolCode_11_DXMUX_3432 : STD_LOGIC; 
  signal XLXI_6_symbolCode_11_DYMUX_3420 : STD_LOGIC; 
  signal XLXI_6_symbolCode_11_CLKINV_3412 : STD_LOGIC; 
  signal XLXI_6_symbolCode_11_CEINV_3411 : STD_LOGIC; 
  signal XLXI_6_symbolLen_3_DXMUX_3394 : STD_LOGIC; 
  signal XLXI_6_symbolLen_3_DYMUX_3382 : STD_LOGIC; 
  signal XLXI_6_symbolLen_3_CLKINV_3374 : STD_LOGIC; 
  signal XLXI_6_symbolLen_3_CEINV_3373 : STD_LOGIC; 
  signal XLXI_6_symbolCode_13_DXMUX_3470 : STD_LOGIC; 
  signal XLXI_6_symbolCode_13_DYMUX_3458 : STD_LOGIC; 
  signal XLXI_6_symbolCode_13_CLKINV_3450 : STD_LOGIC; 
  signal XLXI_6_symbolCode_13_CEINV_3449 : STD_LOGIC; 
  signal XLXI_6_symbolCode_14_DYMUX_3491 : STD_LOGIC; 
  signal XLXI_6_symbolCode_14_CLKINV_3483 : STD_LOGIC; 
  signal XLXI_6_symbolCode_14_CEINV_3482 : STD_LOGIC; 
  signal XLXI_5_counter_and00001_3666 : STD_LOGIC; 
  signal XLXI_5_counter_not0001 : STD_LOGIC; 
  signal XLXI_5_sendStart_DXMUX_3697 : STD_LOGIC; 
  signal XLXI_5_sendStart_cmp_eq0000_3694 : STD_LOGIC; 
  signal N2_pack_1 : STD_LOGIC; 
  signal XLXI_5_sendStart_CLKINV_3681 : STD_LOGIC; 
  signal XLXI_5_sendStart_CEINV_3680 : STD_LOGIC; 
  signal XLXI_6_symbolCount_not0001 : STD_LOGIC; 
  signal XLXI_6_ending_DYMUX_3631 : STD_LOGIC; 
  signal XLXI_6_ending_mux0002 : STD_LOGIC; 
  signal XLXI_6_ending_CLKINV_3622 : STD_LOGIC; 
  signal XLXI_6_ending_CEINV_3621 : STD_LOGIC; 
  signal XLXI_5_counter_0_DXMUX_3773 : STD_LOGIC; 
  signal XLXI_5_counter_0_DYMUX_3766 : STD_LOGIC; 
  signal XLXI_5_Result_1_1 : STD_LOGIC; 
  signal XLXI_5_counter_0_SRINV_3756 : STD_LOGIC; 
  signal XLXI_5_counter_0_CLKINV_3755 : STD_LOGIC; 
  signal XLXI_5_counter_0_CEINV_3754 : STD_LOGIC; 
  signal XLXI_6_symbolCount_2_DXMUX_3529 : STD_LOGIC; 
  signal XLXI_6_Mcount_symbolCount2 : STD_LOGIC; 
  signal XLXI_6_symbolCount_2_DYMUX_3517 : STD_LOGIC; 
  signal XLXI_6_Mcount_symbolCount1 : STD_LOGIC; 
  signal XLXI_6_symbolCount_2_CLKINV_3509 : STD_LOGIC; 
  signal XLXI_6_symbolCount_2_CEINV_3508 : STD_LOGIC; 
  signal XLXI_6_sending_DYMUX_3788 : STD_LOGIC; 
  signal XLXI_6_sending_BYINV_3787 : STD_LOGIC; 
  signal XLXI_6_sending_SRINV_3786 : STD_LOGIC; 
  signal XLXI_6_sending_CLKINV_3785 : STD_LOGIC; 
  signal XLXI_6_sending_CEINV_3784 : STD_LOGIC; 
  signal XLXI_5_counter_3_DXMUX_3570 : STD_LOGIC; 
  signal XLXI_5_Result_3_1 : STD_LOGIC; 
  signal XLXI_5_counter_3_DYMUX_3557 : STD_LOGIC; 
  signal XLXI_5_Result_2_1 : STD_LOGIC; 
  signal XLXI_5_counter_3_SRINV_3548 : STD_LOGIC; 
  signal XLXI_5_counter_3_CLKINV_3547 : STD_LOGIC; 
  signal XLXI_5_counter_3_CEINV_3546 : STD_LOGIC; 
  signal XLXI_6_symbolCount_not00011_3206 : STD_LOGIC; 
  signal XLXI_6_sendOut_DYMUX_3195 : STD_LOGIC; 
  signal XLXI_6_sendOut_mux0000 : STD_LOGIC; 
  signal XLXI_6_sendOut_CLKINV_3187 : STD_LOGIC; 
  signal XLXI_6_sendOut_CEINV_3186 : STD_LOGIC; 
  signal XLXI_6_symbolCode_5_DXMUX_3242 : STD_LOGIC; 
  signal XLXI_6_symbolCode_5_DYMUX_3230 : STD_LOGIC; 
  signal XLXI_6_symbolCode_5_CLKINV_3222 : STD_LOGIC; 
  signal XLXI_6_symbolCode_5_CEINV_3221 : STD_LOGIC; 
  signal XLXI_5_N5 : STD_LOGIC; 
  signal XLXI_5_counter_and000011_SW0_O_pack_1 : STD_LOGIC; 
  signal XLXI_5_counter_and0000 : STD_LOGIC; 
  signal N10_pack_1 : STD_LOGIC; 
  signal XLXI_5_counter_5_DXMUX_3037 : STD_LOGIC; 
  signal XLXI_5_Result_5_1 : STD_LOGIC; 
  signal XLXI_5_N3_pack_2 : STD_LOGIC; 
  signal XLXI_5_counter_5_SRINV_3021 : STD_LOGIC; 
  signal XLXI_5_counter_5_CLKINV_3020 : STD_LOGIC; 
  signal XLXI_5_counter_5_CEINV_3019 : STD_LOGIC; 
  signal DwrCmd_3_O : STD_LOGIC; 
  signal DwrData_9_O : STD_LOGIC; 
  signal XLXI_6_symbolCode_3_DXMUX_3171 : STD_LOGIC; 
  signal XLXI_6_symbolCode_3_DYMUX_3159 : STD_LOGIC; 
  signal XLXI_6_symbolCode_3_CLKINV_3151 : STD_LOGIC; 
  signal XLXI_6_symbolCode_3_CEINV_3150 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOPA3 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOPA2 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOPA1 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOPA0 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOA31 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOA30 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOA29 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOA28 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOA27 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOA26 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOA25 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOA24 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOA23 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOA22 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOA21 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOA20 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DOA19 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIPA3 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIPA2 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIPA1 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIPA0 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA31 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA30 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA29 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA28 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA27 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA26 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA25 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA24 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA23 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA22 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA21 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA20 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA19 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA18 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA17 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA16 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA15 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA14 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA13 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA12 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA11 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA10 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA9 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA8 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA7 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA6 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA5 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA4 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA3 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA2 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA1 : STD_LOGIC; 
  signal XLXI_6_Mrom_rom0000_DIA0 : STD_LOGIC; 
  signal XLXI_6_symbolCode_1_DXMUX_3133 : STD_LOGIC; 
  signal XLXI_6_symbolCode_1_DYMUX_3121 : STD_LOGIC; 
  signal XLXI_6_symbolCode_1_CLKINV_3113 : STD_LOGIC; 
  signal XLXI_6_symbolCode_1_CEINV_3112 : STD_LOGIC; 
  signal XLXI_6_symbolCount_cmp_eq0000 : STD_LOGIC; 
  signal XLXI_6_symbolCount_cmp_eq0000632_pack_1 : STD_LOGIC; 
  signal XLXI_6_symbolCount_0_DXMUX_3002 : STD_LOGIC; 
  signal XLXI_6_Mcount_symbolCount : STD_LOGIC; 
  signal XLXI_6_symbolCount_cmp_eq0000665_pack_2 : STD_LOGIC; 
  signal XLXI_6_symbolCount_0_CLKINV_2986 : STD_LOGIC; 
  signal XLXI_6_symbolCount_0_CEINV_2985 : STD_LOGIC; 
  signal XLXI_6_symbolCount_3_DXMUX_3095 : STD_LOGIC; 
  signal XLXI_6_Mcount_symbolCount3 : STD_LOGIC; 
  signal XLXI_6_Mcount_symbolCount_xor_3_1_SW1_O_pack_2 : STD_LOGIC; 
  signal XLXI_6_symbolCount_3_CLKINV_3079 : STD_LOGIC; 
  signal XLXI_6_symbolCount_3_CEINV_3078 : STD_LOGIC; 
  signal Clk_50MHz_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal Clk_50MHz_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal SawStart_INBUF : STD_LOGIC; 
  signal XLXI_6_symbolCode_7_DXMUX_3280 : STD_LOGIC; 
  signal XLXI_6_symbolCode_7_DYMUX_3268 : STD_LOGIC; 
  signal XLXI_6_symbolCode_7_CLKINV_3260 : STD_LOGIC; 
  signal XLXI_6_symbolCode_7_CEINV_3259 : STD_LOGIC; 
  signal XLXI_6_symbolCode_9_DXMUX_3318 : STD_LOGIC; 
  signal XLXI_6_symbolCode_9_DYMUX_3306 : STD_LOGIC; 
  signal XLXI_6_symbolCode_9_CLKINV_3298 : STD_LOGIC; 
  signal XLXI_6_symbolCode_9_CEINV_3297 : STD_LOGIC; 
  signal XLXI_6_symbolLen_1_DXMUX_3356 : STD_LOGIC; 
  signal XLXI_6_symbolLen_1_DYMUX_3344 : STD_LOGIC; 
  signal XLXI_6_symbolLen_1_CLKINV_3336 : STD_LOGIC; 
  signal XLXI_6_symbolLen_1_CEINV_3335 : STD_LOGIC; 
  signal DwrData_1_OUTPUT_OFF_O1INV_2711 : STD_LOGIC; 
  signal DwrData_0_OUTPUT_OFF_O1INV_2695 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal XLXI_6_unitCount : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal XLXI_5_timeCnt : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal XLXI_5_Mcount_timeCnt_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal XLXI_5_x : STD_LOGIC_VECTOR ( 11 downto 2 ); 
  signal XLXI_6_symbolCount : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_6_symbolCode : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal XLXI_6_rom0000 : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal XLXI_6_symbolLen : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_5_counter : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_6_symbol : STD_LOGIC_VECTOR ( 7 downto 5 ); 
  signal XLXI_6_Mcount_unitCount_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_5_Mcount_timeCnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_6_unitCount_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal XLXI_6_unitCount_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_6_symbolCode_mux0002 : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal XLXI_6_symbolLen_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal NlwBufferSignal_XLXI_6_Mrom_rom0000_ADDR : STD_LOGIC_VECTOR ( 4 downto 0 ); 
begin
  XLXI_6_unitCount_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y49"
    )
    port map (
      O => XLXI_6_unitCount_0_LOGIC_ZERO_1116
    );
  XLXI_6_unitCount_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X44Y49"
    )
    port map (
      O => XLXI_6_unitCount_0_LOGIC_ONE_1139
    );
  XLXI_6_unitCount_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_0_XORF_1140,
      O => XLXI_6_unitCount_0_DXMUX_1142
    );
  XLXI_6_unitCount_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y49"
    )
    port map (
      I0 => XLXI_6_unitCount_0_CYINIT_1138,
      I1 => XLXI_6_Mcount_unitCount_lut(0),
      O => XLXI_6_unitCount_0_XORF_1140
    );
  XLXI_6_unitCount_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y49"
    )
    port map (
      IA => XLXI_6_unitCount_0_LOGIC_ONE_1139,
      IB => XLXI_6_unitCount_0_CYINIT_1138,
      SEL => XLXI_6_unitCount_0_CYSELF_1129,
      O => XLXI_6_Mcount_unitCount_cy_0_Q
    );
  XLXI_6_unitCount_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_0_BXINV_1127,
      O => XLXI_6_unitCount_0_CYINIT_1138
    );
  XLXI_6_unitCount_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_lut(0),
      O => XLXI_6_unitCount_0_CYSELF_1129
    );
  XLXI_6_unitCount_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => XLXI_6_unitCount_0_BXINV_1127
    );
  XLXI_6_unitCount_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_0_XORG_1119,
      O => XLXI_6_unitCount_0_DYMUX_1121
    );
  XLXI_6_unitCount_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y49"
    )
    port map (
      I0 => XLXI_6_Mcount_unitCount_cy_0_Q,
      I1 => XLXI_6_unitCount_0_G,
      O => XLXI_6_unitCount_0_XORG_1119
    );
  XLXI_6_unitCount_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_0_CYMUXG_1118,
      O => XLXI_6_Mcount_unitCount_cy_1_Q
    );
  XLXI_6_unitCount_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X44Y49"
    )
    port map (
      IA => XLXI_6_unitCount_0_LOGIC_ZERO_1116,
      IB => XLXI_6_Mcount_unitCount_cy_0_Q,
      SEL => XLXI_6_unitCount_0_CYSELG_1107,
      O => XLXI_6_unitCount_0_CYMUXG_1118
    );
  XLXI_6_unitCount_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_0_G,
      O => XLXI_6_unitCount_0_CYSELG_1107
    );
  XLXI_6_unitCount_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not0001_0,
      O => XLXI_6_unitCount_0_SRINV_1105
    );
  XLXI_6_unitCount_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_unitCount_0_CLKINV_1104
    );
  XLXI_6_unitCount_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => XLXI_6_unitCount_0_CEINV_1103
    );
  XLXI_6_unitCount_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y50"
    )
    port map (
      O => XLXI_6_unitCount_2_LOGIC_ZERO_1170
    );
  XLXI_6_unitCount_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_2_XORF_1196,
      O => XLXI_6_unitCount_2_DXMUX_1198
    );
  XLXI_6_unitCount_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y50"
    )
    port map (
      I0 => XLXI_6_unitCount_2_CYINIT_1195,
      I1 => XLXI_6_unitCount_2_F,
      O => XLXI_6_unitCount_2_XORF_1196
    );
  XLXI_6_unitCount_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y50"
    )
    port map (
      IA => XLXI_6_unitCount_2_LOGIC_ZERO_1170,
      IB => XLXI_6_unitCount_2_CYINIT_1195,
      SEL => XLXI_6_unitCount_2_CYSELF_1176,
      O => XLXI_6_Mcount_unitCount_cy_2_Q
    );
  XLXI_6_unitCount_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y50"
    )
    port map (
      IA => XLXI_6_unitCount_2_LOGIC_ZERO_1170,
      IB => XLXI_6_unitCount_2_LOGIC_ZERO_1170,
      SEL => XLXI_6_unitCount_2_CYSELF_1176,
      O => XLXI_6_unitCount_2_CYMUXF2_1171
    );
  XLXI_6_unitCount_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_1_Q,
      O => XLXI_6_unitCount_2_CYINIT_1195
    );
  XLXI_6_unitCount_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_2_F,
      O => XLXI_6_unitCount_2_CYSELF_1176
    );
  XLXI_6_unitCount_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_2_XORG_1178,
      O => XLXI_6_unitCount_2_DYMUX_1180
    );
  XLXI_6_unitCount_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y50"
    )
    port map (
      I0 => XLXI_6_Mcount_unitCount_cy_2_Q,
      I1 => XLXI_6_unitCount_2_G,
      O => XLXI_6_unitCount_2_XORG_1178
    );
  XLXI_6_unitCount_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_2_CYMUXFAST_1175,
      O => XLXI_6_Mcount_unitCount_cy_3_Q
    );
  XLXI_6_unitCount_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_1_Q,
      O => XLXI_6_unitCount_2_FASTCARRY_1173
    );
  XLXI_6_unitCount_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y50"
    )
    port map (
      I0 => XLXI_6_unitCount_2_CYSELG_1161,
      I1 => XLXI_6_unitCount_2_CYSELF_1176,
      O => XLXI_6_unitCount_2_CYAND_1174
    );
  XLXI_6_unitCount_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y50"
    )
    port map (
      IA => XLXI_6_unitCount_2_CYMUXG2_1172,
      IB => XLXI_6_unitCount_2_FASTCARRY_1173,
      SEL => XLXI_6_unitCount_2_CYAND_1174,
      O => XLXI_6_unitCount_2_CYMUXFAST_1175
    );
  XLXI_6_unitCount_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y50"
    )
    port map (
      IA => XLXI_6_unitCount_2_LOGIC_ZERO_1170,
      IB => XLXI_6_unitCount_2_CYMUXF2_1171,
      SEL => XLXI_6_unitCount_2_CYSELG_1161,
      O => XLXI_6_unitCount_2_CYMUXG2_1172
    );
  XLXI_6_unitCount_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_2_G,
      O => XLXI_6_unitCount_2_CYSELG_1161
    );
  XLXI_6_unitCount_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not0001_0,
      O => XLXI_6_unitCount_2_SRINV_1159
    );
  XLXI_6_unitCount_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_unitCount_2_CLKINV_1158
    );
  XLXI_6_unitCount_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => XLXI_6_unitCount_2_CEINV_1157
    );
  XLXI_6_unitCount_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y52"
    )
    port map (
      O => XLXI_6_unitCount_6_LOGIC_ZERO_1282
    );
  XLXI_6_unitCount_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_6_XORF_1308,
      O => XLXI_6_unitCount_6_DXMUX_1310
    );
  XLXI_6_unitCount_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y52"
    )
    port map (
      I0 => XLXI_6_unitCount_6_CYINIT_1307,
      I1 => XLXI_6_unitCount_6_F,
      O => XLXI_6_unitCount_6_XORF_1308
    );
  XLXI_6_unitCount_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y52"
    )
    port map (
      IA => XLXI_6_unitCount_6_LOGIC_ZERO_1282,
      IB => XLXI_6_unitCount_6_CYINIT_1307,
      SEL => XLXI_6_unitCount_6_CYSELF_1288,
      O => XLXI_6_Mcount_unitCount_cy_6_Q
    );
  XLXI_6_unitCount_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y52"
    )
    port map (
      IA => XLXI_6_unitCount_6_LOGIC_ZERO_1282,
      IB => XLXI_6_unitCount_6_LOGIC_ZERO_1282,
      SEL => XLXI_6_unitCount_6_CYSELF_1288,
      O => XLXI_6_unitCount_6_CYMUXF2_1283
    );
  XLXI_6_unitCount_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_5_Q,
      O => XLXI_6_unitCount_6_CYINIT_1307
    );
  XLXI_6_unitCount_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_6_F,
      O => XLXI_6_unitCount_6_CYSELF_1288
    );
  XLXI_6_unitCount_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_6_XORG_1290,
      O => XLXI_6_unitCount_6_DYMUX_1292
    );
  XLXI_6_unitCount_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y52"
    )
    port map (
      I0 => XLXI_6_Mcount_unitCount_cy_6_Q,
      I1 => XLXI_6_unitCount_6_G,
      O => XLXI_6_unitCount_6_XORG_1290
    );
  XLXI_6_unitCount_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_6_CYMUXFAST_1287,
      O => XLXI_6_Mcount_unitCount_cy_7_Q
    );
  XLXI_6_unitCount_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_5_Q,
      O => XLXI_6_unitCount_6_FASTCARRY_1285
    );
  XLXI_6_unitCount_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y52"
    )
    port map (
      I0 => XLXI_6_unitCount_6_CYSELG_1273,
      I1 => XLXI_6_unitCount_6_CYSELF_1288,
      O => XLXI_6_unitCount_6_CYAND_1286
    );
  XLXI_6_unitCount_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y52"
    )
    port map (
      IA => XLXI_6_unitCount_6_CYMUXG2_1284,
      IB => XLXI_6_unitCount_6_FASTCARRY_1285,
      SEL => XLXI_6_unitCount_6_CYAND_1286,
      O => XLXI_6_unitCount_6_CYMUXFAST_1287
    );
  XLXI_6_unitCount_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y52"
    )
    port map (
      IA => XLXI_6_unitCount_6_LOGIC_ZERO_1282,
      IB => XLXI_6_unitCount_6_CYMUXF2_1283,
      SEL => XLXI_6_unitCount_6_CYSELG_1273,
      O => XLXI_6_unitCount_6_CYMUXG2_1284
    );
  XLXI_6_unitCount_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_6_G,
      O => XLXI_6_unitCount_6_CYSELG_1273
    );
  XLXI_6_unitCount_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not0001_0,
      O => XLXI_6_unitCount_6_SRINV_1271
    );
  XLXI_6_unitCount_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_unitCount_6_CLKINV_1270
    );
  XLXI_6_unitCount_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => XLXI_6_unitCount_6_CEINV_1269
    );
  XLXI_6_unitCount_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y51"
    )
    port map (
      O => XLXI_6_unitCount_4_LOGIC_ZERO_1226
    );
  XLXI_6_unitCount_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_4_XORF_1252,
      O => XLXI_6_unitCount_4_DXMUX_1254
    );
  XLXI_6_unitCount_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y51"
    )
    port map (
      I0 => XLXI_6_unitCount_4_CYINIT_1251,
      I1 => XLXI_6_unitCount_4_F,
      O => XLXI_6_unitCount_4_XORF_1252
    );
  XLXI_6_unitCount_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y51"
    )
    port map (
      IA => XLXI_6_unitCount_4_LOGIC_ZERO_1226,
      IB => XLXI_6_unitCount_4_CYINIT_1251,
      SEL => XLXI_6_unitCount_4_CYSELF_1232,
      O => XLXI_6_Mcount_unitCount_cy_4_Q
    );
  XLXI_6_unitCount_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y51"
    )
    port map (
      IA => XLXI_6_unitCount_4_LOGIC_ZERO_1226,
      IB => XLXI_6_unitCount_4_LOGIC_ZERO_1226,
      SEL => XLXI_6_unitCount_4_CYSELF_1232,
      O => XLXI_6_unitCount_4_CYMUXF2_1227
    );
  XLXI_6_unitCount_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_3_Q,
      O => XLXI_6_unitCount_4_CYINIT_1251
    );
  XLXI_6_unitCount_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_4_F,
      O => XLXI_6_unitCount_4_CYSELF_1232
    );
  XLXI_6_unitCount_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_4_XORG_1234,
      O => XLXI_6_unitCount_4_DYMUX_1236
    );
  XLXI_6_unitCount_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y51"
    )
    port map (
      I0 => XLXI_6_Mcount_unitCount_cy_4_Q,
      I1 => XLXI_6_unitCount_4_G,
      O => XLXI_6_unitCount_4_XORG_1234
    );
  XLXI_6_unitCount_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_4_CYMUXFAST_1231,
      O => XLXI_6_Mcount_unitCount_cy_5_Q
    );
  XLXI_6_unitCount_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_3_Q,
      O => XLXI_6_unitCount_4_FASTCARRY_1229
    );
  XLXI_6_unitCount_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y51"
    )
    port map (
      I0 => XLXI_6_unitCount_4_CYSELG_1217,
      I1 => XLXI_6_unitCount_4_CYSELF_1232,
      O => XLXI_6_unitCount_4_CYAND_1230
    );
  XLXI_6_unitCount_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y51"
    )
    port map (
      IA => XLXI_6_unitCount_4_CYMUXG2_1228,
      IB => XLXI_6_unitCount_4_FASTCARRY_1229,
      SEL => XLXI_6_unitCount_4_CYAND_1230,
      O => XLXI_6_unitCount_4_CYMUXFAST_1231
    );
  XLXI_6_unitCount_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y51"
    )
    port map (
      IA => XLXI_6_unitCount_4_LOGIC_ZERO_1226,
      IB => XLXI_6_unitCount_4_CYMUXF2_1227,
      SEL => XLXI_6_unitCount_4_CYSELG_1217,
      O => XLXI_6_unitCount_4_CYMUXG2_1228
    );
  XLXI_6_unitCount_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_4_G,
      O => XLXI_6_unitCount_4_CYSELG_1217
    );
  XLXI_6_unitCount_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not0001_0,
      O => XLXI_6_unitCount_4_SRINV_1215
    );
  XLXI_6_unitCount_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_unitCount_4_CLKINV_1214
    );
  XLXI_6_unitCount_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => XLXI_6_unitCount_4_CEINV_1213
    );
  XLXI_6_unitCount_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y53"
    )
    port map (
      O => XLXI_6_unitCount_8_LOGIC_ZERO_1338
    );
  XLXI_6_unitCount_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_8_XORF_1364,
      O => XLXI_6_unitCount_8_DXMUX_1366
    );
  XLXI_6_unitCount_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y53"
    )
    port map (
      I0 => XLXI_6_unitCount_8_CYINIT_1363,
      I1 => XLXI_6_unitCount_8_F,
      O => XLXI_6_unitCount_8_XORF_1364
    );
  XLXI_6_unitCount_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y53"
    )
    port map (
      IA => XLXI_6_unitCount_8_LOGIC_ZERO_1338,
      IB => XLXI_6_unitCount_8_CYINIT_1363,
      SEL => XLXI_6_unitCount_8_CYSELF_1344,
      O => XLXI_6_Mcount_unitCount_cy_8_Q
    );
  XLXI_6_unitCount_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y53"
    )
    port map (
      IA => XLXI_6_unitCount_8_LOGIC_ZERO_1338,
      IB => XLXI_6_unitCount_8_LOGIC_ZERO_1338,
      SEL => XLXI_6_unitCount_8_CYSELF_1344,
      O => XLXI_6_unitCount_8_CYMUXF2_1339
    );
  XLXI_6_unitCount_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_7_Q,
      O => XLXI_6_unitCount_8_CYINIT_1363
    );
  XLXI_6_unitCount_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_8_F,
      O => XLXI_6_unitCount_8_CYSELF_1344
    );
  XLXI_6_unitCount_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_8_XORG_1346,
      O => XLXI_6_unitCount_8_DYMUX_1348
    );
  XLXI_6_unitCount_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y53"
    )
    port map (
      I0 => XLXI_6_Mcount_unitCount_cy_8_Q,
      I1 => XLXI_6_unitCount_8_G,
      O => XLXI_6_unitCount_8_XORG_1346
    );
  XLXI_6_unitCount_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_8_CYMUXFAST_1343,
      O => XLXI_6_Mcount_unitCount_cy_9_Q
    );
  XLXI_6_unitCount_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_7_Q,
      O => XLXI_6_unitCount_8_FASTCARRY_1341
    );
  XLXI_6_unitCount_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y53"
    )
    port map (
      I0 => XLXI_6_unitCount_8_CYSELG_1329,
      I1 => XLXI_6_unitCount_8_CYSELF_1344,
      O => XLXI_6_unitCount_8_CYAND_1342
    );
  XLXI_6_unitCount_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y53"
    )
    port map (
      IA => XLXI_6_unitCount_8_CYMUXG2_1340,
      IB => XLXI_6_unitCount_8_FASTCARRY_1341,
      SEL => XLXI_6_unitCount_8_CYAND_1342,
      O => XLXI_6_unitCount_8_CYMUXFAST_1343
    );
  XLXI_6_unitCount_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y53"
    )
    port map (
      IA => XLXI_6_unitCount_8_LOGIC_ZERO_1338,
      IB => XLXI_6_unitCount_8_CYMUXF2_1339,
      SEL => XLXI_6_unitCount_8_CYSELG_1329,
      O => XLXI_6_unitCount_8_CYMUXG2_1340
    );
  XLXI_6_unitCount_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_8_G,
      O => XLXI_6_unitCount_8_CYSELG_1329
    );
  XLXI_6_unitCount_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not0001_0,
      O => XLXI_6_unitCount_8_SRINV_1327
    );
  XLXI_6_unitCount_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_unitCount_8_CLKINV_1326
    );
  XLXI_6_unitCount_8_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => XLXI_6_unitCount_8_CEINV_1325
    );
  XLXI_6_unitCount_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y54"
    )
    port map (
      O => XLXI_6_unitCount_10_LOGIC_ZERO_1394
    );
  XLXI_6_unitCount_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_10_XORF_1420,
      O => XLXI_6_unitCount_10_DXMUX_1422
    );
  XLXI_6_unitCount_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y54"
    )
    port map (
      I0 => XLXI_6_unitCount_10_CYINIT_1419,
      I1 => XLXI_6_unitCount_10_F,
      O => XLXI_6_unitCount_10_XORF_1420
    );
  XLXI_6_unitCount_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y54"
    )
    port map (
      IA => XLXI_6_unitCount_10_LOGIC_ZERO_1394,
      IB => XLXI_6_unitCount_10_CYINIT_1419,
      SEL => XLXI_6_unitCount_10_CYSELF_1400,
      O => XLXI_6_Mcount_unitCount_cy_10_Q
    );
  XLXI_6_unitCount_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y54"
    )
    port map (
      IA => XLXI_6_unitCount_10_LOGIC_ZERO_1394,
      IB => XLXI_6_unitCount_10_LOGIC_ZERO_1394,
      SEL => XLXI_6_unitCount_10_CYSELF_1400,
      O => XLXI_6_unitCount_10_CYMUXF2_1395
    );
  XLXI_6_unitCount_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_9_Q,
      O => XLXI_6_unitCount_10_CYINIT_1419
    );
  XLXI_6_unitCount_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_10_F,
      O => XLXI_6_unitCount_10_CYSELF_1400
    );
  XLXI_6_unitCount_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_10_XORG_1402,
      O => XLXI_6_unitCount_10_DYMUX_1404
    );
  XLXI_6_unitCount_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y54"
    )
    port map (
      I0 => XLXI_6_Mcount_unitCount_cy_10_Q,
      I1 => XLXI_6_unitCount_10_G,
      O => XLXI_6_unitCount_10_XORG_1402
    );
  XLXI_6_unitCount_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_10_CYMUXFAST_1399,
      O => XLXI_6_Mcount_unitCount_cy_11_Q
    );
  XLXI_6_unitCount_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_9_Q,
      O => XLXI_6_unitCount_10_FASTCARRY_1397
    );
  XLXI_6_unitCount_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y54"
    )
    port map (
      I0 => XLXI_6_unitCount_10_CYSELG_1385,
      I1 => XLXI_6_unitCount_10_CYSELF_1400,
      O => XLXI_6_unitCount_10_CYAND_1398
    );
  XLXI_6_unitCount_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y54"
    )
    port map (
      IA => XLXI_6_unitCount_10_CYMUXG2_1396,
      IB => XLXI_6_unitCount_10_FASTCARRY_1397,
      SEL => XLXI_6_unitCount_10_CYAND_1398,
      O => XLXI_6_unitCount_10_CYMUXFAST_1399
    );
  XLXI_6_unitCount_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y54"
    )
    port map (
      IA => XLXI_6_unitCount_10_LOGIC_ZERO_1394,
      IB => XLXI_6_unitCount_10_CYMUXF2_1395,
      SEL => XLXI_6_unitCount_10_CYSELG_1385,
      O => XLXI_6_unitCount_10_CYMUXG2_1396
    );
  XLXI_6_unitCount_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_10_G,
      O => XLXI_6_unitCount_10_CYSELG_1385
    );
  XLXI_6_unitCount_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not0001_0,
      O => XLXI_6_unitCount_10_SRINV_1383
    );
  XLXI_6_unitCount_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_unitCount_10_CLKINV_1382
    );
  XLXI_6_unitCount_10_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => XLXI_6_unitCount_10_CEINV_1381
    );
  XLXI_6_unitCount_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y55"
    )
    port map (
      O => XLXI_6_unitCount_12_LOGIC_ZERO_1450
    );
  XLXI_6_unitCount_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_12_XORF_1476,
      O => XLXI_6_unitCount_12_DXMUX_1478
    );
  XLXI_6_unitCount_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y55"
    )
    port map (
      I0 => XLXI_6_unitCount_12_CYINIT_1475,
      I1 => XLXI_6_unitCount_12_F,
      O => XLXI_6_unitCount_12_XORF_1476
    );
  XLXI_6_unitCount_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y55"
    )
    port map (
      IA => XLXI_6_unitCount_12_LOGIC_ZERO_1450,
      IB => XLXI_6_unitCount_12_CYINIT_1475,
      SEL => XLXI_6_unitCount_12_CYSELF_1456,
      O => XLXI_6_Mcount_unitCount_cy_12_Q
    );
  XLXI_6_unitCount_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y55"
    )
    port map (
      IA => XLXI_6_unitCount_12_LOGIC_ZERO_1450,
      IB => XLXI_6_unitCount_12_LOGIC_ZERO_1450,
      SEL => XLXI_6_unitCount_12_CYSELF_1456,
      O => XLXI_6_unitCount_12_CYMUXF2_1451
    );
  XLXI_6_unitCount_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_11_Q,
      O => XLXI_6_unitCount_12_CYINIT_1475
    );
  XLXI_6_unitCount_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_12_F,
      O => XLXI_6_unitCount_12_CYSELF_1456
    );
  XLXI_6_unitCount_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_12_XORG_1458,
      O => XLXI_6_unitCount_12_DYMUX_1460
    );
  XLXI_6_unitCount_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y55"
    )
    port map (
      I0 => XLXI_6_Mcount_unitCount_cy_12_Q,
      I1 => XLXI_6_unitCount_12_G,
      O => XLXI_6_unitCount_12_XORG_1458
    );
  XLXI_6_unitCount_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_12_CYMUXFAST_1455,
      O => XLXI_6_Mcount_unitCount_cy_13_Q
    );
  XLXI_6_unitCount_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_11_Q,
      O => XLXI_6_unitCount_12_FASTCARRY_1453
    );
  XLXI_6_unitCount_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y55"
    )
    port map (
      I0 => XLXI_6_unitCount_12_CYSELG_1441,
      I1 => XLXI_6_unitCount_12_CYSELF_1456,
      O => XLXI_6_unitCount_12_CYAND_1454
    );
  XLXI_6_unitCount_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y55"
    )
    port map (
      IA => XLXI_6_unitCount_12_CYMUXG2_1452,
      IB => XLXI_6_unitCount_12_FASTCARRY_1453,
      SEL => XLXI_6_unitCount_12_CYAND_1454,
      O => XLXI_6_unitCount_12_CYMUXFAST_1455
    );
  XLXI_6_unitCount_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y55"
    )
    port map (
      IA => XLXI_6_unitCount_12_LOGIC_ZERO_1450,
      IB => XLXI_6_unitCount_12_CYMUXF2_1451,
      SEL => XLXI_6_unitCount_12_CYSELG_1441,
      O => XLXI_6_unitCount_12_CYMUXG2_1452
    );
  XLXI_6_unitCount_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_12_G,
      O => XLXI_6_unitCount_12_CYSELG_1441
    );
  XLXI_6_unitCount_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not0001_0,
      O => XLXI_6_unitCount_12_SRINV_1439
    );
  XLXI_6_unitCount_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_unitCount_12_CLKINV_1438
    );
  XLXI_6_unitCount_12_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => XLXI_6_unitCount_12_CEINV_1437
    );
  XLXI_6_unitCount_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y57"
    )
    port map (
      O => XLXI_6_unitCount_16_LOGIC_ZERO_1562
    );
  XLXI_6_unitCount_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_16_XORF_1588,
      O => XLXI_6_unitCount_16_DXMUX_1590
    );
  XLXI_6_unitCount_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y57"
    )
    port map (
      I0 => XLXI_6_unitCount_16_CYINIT_1587,
      I1 => XLXI_6_unitCount_16_F,
      O => XLXI_6_unitCount_16_XORF_1588
    );
  XLXI_6_unitCount_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y57"
    )
    port map (
      IA => XLXI_6_unitCount_16_LOGIC_ZERO_1562,
      IB => XLXI_6_unitCount_16_CYINIT_1587,
      SEL => XLXI_6_unitCount_16_CYSELF_1568,
      O => XLXI_6_Mcount_unitCount_cy_16_Q
    );
  XLXI_6_unitCount_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y57"
    )
    port map (
      IA => XLXI_6_unitCount_16_LOGIC_ZERO_1562,
      IB => XLXI_6_unitCount_16_LOGIC_ZERO_1562,
      SEL => XLXI_6_unitCount_16_CYSELF_1568,
      O => XLXI_6_unitCount_16_CYMUXF2_1563
    );
  XLXI_6_unitCount_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_15_Q,
      O => XLXI_6_unitCount_16_CYINIT_1587
    );
  XLXI_6_unitCount_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_16_F,
      O => XLXI_6_unitCount_16_CYSELF_1568
    );
  XLXI_6_unitCount_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_16_XORG_1570,
      O => XLXI_6_unitCount_16_DYMUX_1572
    );
  XLXI_6_unitCount_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y57"
    )
    port map (
      I0 => XLXI_6_Mcount_unitCount_cy_16_Q,
      I1 => XLXI_6_unitCount_16_G,
      O => XLXI_6_unitCount_16_XORG_1570
    );
  XLXI_6_unitCount_16_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_16_CYMUXFAST_1567,
      O => XLXI_6_Mcount_unitCount_cy_17_Q
    );
  XLXI_6_unitCount_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_15_Q,
      O => XLXI_6_unitCount_16_FASTCARRY_1565
    );
  XLXI_6_unitCount_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y57"
    )
    port map (
      I0 => XLXI_6_unitCount_16_CYSELG_1553,
      I1 => XLXI_6_unitCount_16_CYSELF_1568,
      O => XLXI_6_unitCount_16_CYAND_1566
    );
  XLXI_6_unitCount_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y57"
    )
    port map (
      IA => XLXI_6_unitCount_16_CYMUXG2_1564,
      IB => XLXI_6_unitCount_16_FASTCARRY_1565,
      SEL => XLXI_6_unitCount_16_CYAND_1566,
      O => XLXI_6_unitCount_16_CYMUXFAST_1567
    );
  XLXI_6_unitCount_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y57"
    )
    port map (
      IA => XLXI_6_unitCount_16_LOGIC_ZERO_1562,
      IB => XLXI_6_unitCount_16_CYMUXF2_1563,
      SEL => XLXI_6_unitCount_16_CYSELG_1553,
      O => XLXI_6_unitCount_16_CYMUXG2_1564
    );
  XLXI_6_unitCount_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_16_G,
      O => XLXI_6_unitCount_16_CYSELG_1553
    );
  XLXI_6_unitCount_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not0001_0,
      O => XLXI_6_unitCount_16_SRINV_1551
    );
  XLXI_6_unitCount_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_unitCount_16_CLKINV_1550
    );
  XLXI_6_unitCount_16_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => XLXI_6_unitCount_16_CEINV_1549
    );
  XLXI_6_unitCount_20_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y59"
    )
    port map (
      O => XLXI_6_unitCount_20_LOGIC_ZERO_1674
    );
  XLXI_6_unitCount_20_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_20_XORF_1700,
      O => XLXI_6_unitCount_20_DXMUX_1702
    );
  XLXI_6_unitCount_20_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y59"
    )
    port map (
      I0 => XLXI_6_unitCount_20_CYINIT_1699,
      I1 => XLXI_6_unitCount_20_F,
      O => XLXI_6_unitCount_20_XORF_1700
    );
  XLXI_6_unitCount_20_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y59"
    )
    port map (
      IA => XLXI_6_unitCount_20_LOGIC_ZERO_1674,
      IB => XLXI_6_unitCount_20_CYINIT_1699,
      SEL => XLXI_6_unitCount_20_CYSELF_1680,
      O => XLXI_6_Mcount_unitCount_cy_20_Q
    );
  XLXI_6_unitCount_20_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y59"
    )
    port map (
      IA => XLXI_6_unitCount_20_LOGIC_ZERO_1674,
      IB => XLXI_6_unitCount_20_LOGIC_ZERO_1674,
      SEL => XLXI_6_unitCount_20_CYSELF_1680,
      O => XLXI_6_unitCount_20_CYMUXF2_1675
    );
  XLXI_6_unitCount_20_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_19_Q,
      O => XLXI_6_unitCount_20_CYINIT_1699
    );
  XLXI_6_unitCount_20_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_20_F,
      O => XLXI_6_unitCount_20_CYSELF_1680
    );
  XLXI_6_unitCount_20_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_20_XORG_1682,
      O => XLXI_6_unitCount_20_DYMUX_1684
    );
  XLXI_6_unitCount_20_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y59"
    )
    port map (
      I0 => XLXI_6_Mcount_unitCount_cy_20_Q,
      I1 => XLXI_6_unitCount_20_G,
      O => XLXI_6_unitCount_20_XORG_1682
    );
  XLXI_6_unitCount_20_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_19_Q,
      O => XLXI_6_unitCount_20_FASTCARRY_1677
    );
  XLXI_6_unitCount_20_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y59"
    )
    port map (
      I0 => XLXI_6_unitCount_20_CYSELG_1665,
      I1 => XLXI_6_unitCount_20_CYSELF_1680,
      O => XLXI_6_unitCount_20_CYAND_1678
    );
  XLXI_6_unitCount_20_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y59"
    )
    port map (
      IA => XLXI_6_unitCount_20_CYMUXG2_1676,
      IB => XLXI_6_unitCount_20_FASTCARRY_1677,
      SEL => XLXI_6_unitCount_20_CYAND_1678,
      O => XLXI_6_unitCount_20_CYMUXFAST_1679
    );
  XLXI_6_unitCount_20_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y59"
    )
    port map (
      IA => XLXI_6_unitCount_20_LOGIC_ZERO_1674,
      IB => XLXI_6_unitCount_20_CYMUXF2_1675,
      SEL => XLXI_6_unitCount_20_CYSELG_1665,
      O => XLXI_6_unitCount_20_CYMUXG2_1676
    );
  XLXI_6_unitCount_20_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_20_G,
      O => XLXI_6_unitCount_20_CYSELG_1665
    );
  XLXI_6_unitCount_20_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not0001_0,
      O => XLXI_6_unitCount_20_SRINV_1663
    );
  XLXI_6_unitCount_20_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_unitCount_20_CLKINV_1662
    );
  XLXI_6_unitCount_20_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => XLXI_6_unitCount_20_CEINV_1661
    );
  XLXI_6_unitCount_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y58"
    )
    port map (
      O => XLXI_6_unitCount_18_LOGIC_ZERO_1618
    );
  XLXI_6_unitCount_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y58",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_18_XORF_1644,
      O => XLXI_6_unitCount_18_DXMUX_1646
    );
  XLXI_6_unitCount_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y58"
    )
    port map (
      I0 => XLXI_6_unitCount_18_CYINIT_1643,
      I1 => XLXI_6_unitCount_18_F,
      O => XLXI_6_unitCount_18_XORF_1644
    );
  XLXI_6_unitCount_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y58"
    )
    port map (
      IA => XLXI_6_unitCount_18_LOGIC_ZERO_1618,
      IB => XLXI_6_unitCount_18_CYINIT_1643,
      SEL => XLXI_6_unitCount_18_CYSELF_1624,
      O => XLXI_6_Mcount_unitCount_cy_18_Q
    );
  XLXI_6_unitCount_18_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y58"
    )
    port map (
      IA => XLXI_6_unitCount_18_LOGIC_ZERO_1618,
      IB => XLXI_6_unitCount_18_LOGIC_ZERO_1618,
      SEL => XLXI_6_unitCount_18_CYSELF_1624,
      O => XLXI_6_unitCount_18_CYMUXF2_1619
    );
  XLXI_6_unitCount_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y58",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_17_Q,
      O => XLXI_6_unitCount_18_CYINIT_1643
    );
  XLXI_6_unitCount_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y58",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_18_F,
      O => XLXI_6_unitCount_18_CYSELF_1624
    );
  XLXI_6_unitCount_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y58",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_18_XORG_1626,
      O => XLXI_6_unitCount_18_DYMUX_1628
    );
  XLXI_6_unitCount_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y58"
    )
    port map (
      I0 => XLXI_6_Mcount_unitCount_cy_18_Q,
      I1 => XLXI_6_unitCount_18_G,
      O => XLXI_6_unitCount_18_XORG_1626
    );
  XLXI_6_unitCount_18_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y58",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_18_CYMUXFAST_1623,
      O => XLXI_6_Mcount_unitCount_cy_19_Q
    );
  XLXI_6_unitCount_18_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y58",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_17_Q,
      O => XLXI_6_unitCount_18_FASTCARRY_1621
    );
  XLXI_6_unitCount_18_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y58"
    )
    port map (
      I0 => XLXI_6_unitCount_18_CYSELG_1609,
      I1 => XLXI_6_unitCount_18_CYSELF_1624,
      O => XLXI_6_unitCount_18_CYAND_1622
    );
  XLXI_6_unitCount_18_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y58"
    )
    port map (
      IA => XLXI_6_unitCount_18_CYMUXG2_1620,
      IB => XLXI_6_unitCount_18_FASTCARRY_1621,
      SEL => XLXI_6_unitCount_18_CYAND_1622,
      O => XLXI_6_unitCount_18_CYMUXFAST_1623
    );
  XLXI_6_unitCount_18_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y58"
    )
    port map (
      IA => XLXI_6_unitCount_18_LOGIC_ZERO_1618,
      IB => XLXI_6_unitCount_18_CYMUXF2_1619,
      SEL => XLXI_6_unitCount_18_CYSELG_1609,
      O => XLXI_6_unitCount_18_CYMUXG2_1620
    );
  XLXI_6_unitCount_18_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y58",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_18_G,
      O => XLXI_6_unitCount_18_CYSELG_1609
    );
  XLXI_6_unitCount_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y58",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not0001_0,
      O => XLXI_6_unitCount_18_SRINV_1607
    );
  XLXI_6_unitCount_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y58",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_unitCount_18_CLKINV_1606
    );
  XLXI_6_unitCount_18_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y58",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => XLXI_6_unitCount_18_CEINV_1605
    );
  XLXI_6_unitCount_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y56"
    )
    port map (
      O => XLXI_6_unitCount_14_LOGIC_ZERO_1506
    );
  XLXI_6_unitCount_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_14_XORF_1532,
      O => XLXI_6_unitCount_14_DXMUX_1534
    );
  XLXI_6_unitCount_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y56"
    )
    port map (
      I0 => XLXI_6_unitCount_14_CYINIT_1531,
      I1 => XLXI_6_unitCount_14_F,
      O => XLXI_6_unitCount_14_XORF_1532
    );
  XLXI_6_unitCount_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y56"
    )
    port map (
      IA => XLXI_6_unitCount_14_LOGIC_ZERO_1506,
      IB => XLXI_6_unitCount_14_CYINIT_1531,
      SEL => XLXI_6_unitCount_14_CYSELF_1512,
      O => XLXI_6_Mcount_unitCount_cy_14_Q
    );
  XLXI_6_unitCount_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y56"
    )
    port map (
      IA => XLXI_6_unitCount_14_LOGIC_ZERO_1506,
      IB => XLXI_6_unitCount_14_LOGIC_ZERO_1506,
      SEL => XLXI_6_unitCount_14_CYSELF_1512,
      O => XLXI_6_unitCount_14_CYMUXF2_1507
    );
  XLXI_6_unitCount_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_13_Q,
      O => XLXI_6_unitCount_14_CYINIT_1531
    );
  XLXI_6_unitCount_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_14_F,
      O => XLXI_6_unitCount_14_CYSELF_1512
    );
  XLXI_6_unitCount_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_14_XORG_1514,
      O => XLXI_6_unitCount_14_DYMUX_1516
    );
  XLXI_6_unitCount_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y56"
    )
    port map (
      I0 => XLXI_6_Mcount_unitCount_cy_14_Q,
      I1 => XLXI_6_unitCount_14_G,
      O => XLXI_6_unitCount_14_XORG_1514
    );
  XLXI_6_unitCount_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_14_CYMUXFAST_1511,
      O => XLXI_6_Mcount_unitCount_cy_15_Q
    );
  XLXI_6_unitCount_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X44Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_unitCount_cy_13_Q,
      O => XLXI_6_unitCount_14_FASTCARRY_1509
    );
  XLXI_6_unitCount_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X44Y56"
    )
    port map (
      I0 => XLXI_6_unitCount_14_CYSELG_1497,
      I1 => XLXI_6_unitCount_14_CYSELF_1512,
      O => XLXI_6_unitCount_14_CYAND_1510
    );
  XLXI_6_unitCount_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X44Y56"
    )
    port map (
      IA => XLXI_6_unitCount_14_CYMUXG2_1508,
      IB => XLXI_6_unitCount_14_FASTCARRY_1509,
      SEL => XLXI_6_unitCount_14_CYAND_1510,
      O => XLXI_6_unitCount_14_CYMUXFAST_1511
    );
  XLXI_6_unitCount_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X44Y56"
    )
    port map (
      IA => XLXI_6_unitCount_14_LOGIC_ZERO_1506,
      IB => XLXI_6_unitCount_14_CYMUXF2_1507,
      SEL => XLXI_6_unitCount_14_CYSELG_1497,
      O => XLXI_6_unitCount_14_CYMUXG2_1508
    );
  XLXI_6_unitCount_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X44Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_14_G,
      O => XLXI_6_unitCount_14_CYSELG_1497
    );
  XLXI_6_unitCount_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not0001_0,
      O => XLXI_6_unitCount_14_SRINV_1495
    );
  XLXI_6_unitCount_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_unitCount_14_CLKINV_1494
    );
  XLXI_6_unitCount_14_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => XLXI_6_unitCount_14_CEINV_1493
    );
  XLXI_5_timeCnt_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y51"
    )
    port map (
      O => XLXI_5_timeCnt_2_LOGIC_ZERO_1833
    );
  XLXI_5_timeCnt_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_2_XORF_1859,
      O => XLXI_5_timeCnt_2_DXMUX_1861
    );
  XLXI_5_timeCnt_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y51"
    )
    port map (
      I0 => XLXI_5_timeCnt_2_CYINIT_1858,
      I1 => XLXI_5_timeCnt_2_F,
      O => XLXI_5_timeCnt_2_XORF_1859
    );
  XLXI_5_timeCnt_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y51"
    )
    port map (
      IA => XLXI_5_timeCnt_2_LOGIC_ZERO_1833,
      IB => XLXI_5_timeCnt_2_CYINIT_1858,
      SEL => XLXI_5_timeCnt_2_CYSELF_1839,
      O => XLXI_5_Mcount_timeCnt_cy(2)
    );
  XLXI_5_timeCnt_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y51"
    )
    port map (
      IA => XLXI_5_timeCnt_2_LOGIC_ZERO_1833,
      IB => XLXI_5_timeCnt_2_LOGIC_ZERO_1833,
      SEL => XLXI_5_timeCnt_2_CYSELF_1839,
      O => XLXI_5_timeCnt_2_CYMUXF2_1834
    );
  XLXI_5_timeCnt_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Mcount_timeCnt_cy(1),
      O => XLXI_5_timeCnt_2_CYINIT_1858
    );
  XLXI_5_timeCnt_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_2_F,
      O => XLXI_5_timeCnt_2_CYSELF_1839
    );
  XLXI_5_timeCnt_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_2_XORG_1841,
      O => XLXI_5_timeCnt_2_DYMUX_1843
    );
  XLXI_5_timeCnt_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y51"
    )
    port map (
      I0 => XLXI_5_Mcount_timeCnt_cy(2),
      I1 => XLXI_5_timeCnt_2_G,
      O => XLXI_5_timeCnt_2_XORG_1841
    );
  XLXI_5_timeCnt_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_2_CYMUXFAST_1838,
      O => XLXI_5_Mcount_timeCnt_cy(3)
    );
  XLXI_5_timeCnt_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Mcount_timeCnt_cy(1),
      O => XLXI_5_timeCnt_2_FASTCARRY_1836
    );
  XLXI_5_timeCnt_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y51"
    )
    port map (
      I0 => XLXI_5_timeCnt_2_CYSELG_1824,
      I1 => XLXI_5_timeCnt_2_CYSELF_1839,
      O => XLXI_5_timeCnt_2_CYAND_1837
    );
  XLXI_5_timeCnt_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y51"
    )
    port map (
      IA => XLXI_5_timeCnt_2_CYMUXG2_1835,
      IB => XLXI_5_timeCnt_2_FASTCARRY_1836,
      SEL => XLXI_5_timeCnt_2_CYAND_1837,
      O => XLXI_5_timeCnt_2_CYMUXFAST_1838
    );
  XLXI_5_timeCnt_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y51"
    )
    port map (
      IA => XLXI_5_timeCnt_2_LOGIC_ZERO_1833,
      IB => XLXI_5_timeCnt_2_CYMUXF2_1834,
      SEL => XLXI_5_timeCnt_2_CYSELG_1824,
      O => XLXI_5_timeCnt_2_CYMUXG2_1835
    );
  XLXI_5_timeCnt_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_2_G,
      O => XLXI_5_timeCnt_2_CYSELG_1824
    );
  XLXI_5_timeCnt_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_not0001_0,
      O => XLXI_5_timeCnt_2_SRINV_1822
    );
  XLXI_5_timeCnt_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_timeCnt_2_CLKINV_1821
    );
  XLXI_5_timeCnt_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawStart_IBUF_965,
      O => XLXI_5_timeCnt_2_CEINV_1820
    );
  XLXI_5_timeCnt_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y54"
    )
    port map (
      O => XLXI_5_timeCnt_8_LOGIC_ZERO_2001
    );
  XLXI_5_timeCnt_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_8_XORF_2027,
      O => XLXI_5_timeCnt_8_DXMUX_2029
    );
  XLXI_5_timeCnt_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y54"
    )
    port map (
      I0 => XLXI_5_timeCnt_8_CYINIT_2026,
      I1 => XLXI_5_timeCnt_8_F,
      O => XLXI_5_timeCnt_8_XORF_2027
    );
  XLXI_5_timeCnt_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y54"
    )
    port map (
      IA => XLXI_5_timeCnt_8_LOGIC_ZERO_2001,
      IB => XLXI_5_timeCnt_8_CYINIT_2026,
      SEL => XLXI_5_timeCnt_8_CYSELF_2007,
      O => XLXI_5_Mcount_timeCnt_cy(8)
    );
  XLXI_5_timeCnt_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y54"
    )
    port map (
      IA => XLXI_5_timeCnt_8_LOGIC_ZERO_2001,
      IB => XLXI_5_timeCnt_8_LOGIC_ZERO_2001,
      SEL => XLXI_5_timeCnt_8_CYSELF_2007,
      O => XLXI_5_timeCnt_8_CYMUXF2_2002
    );
  XLXI_5_timeCnt_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Mcount_timeCnt_cy(7),
      O => XLXI_5_timeCnt_8_CYINIT_2026
    );
  XLXI_5_timeCnt_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_8_F,
      O => XLXI_5_timeCnt_8_CYSELF_2007
    );
  XLXI_5_timeCnt_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_8_XORG_2009,
      O => XLXI_5_timeCnt_8_DYMUX_2011
    );
  XLXI_5_timeCnt_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y54"
    )
    port map (
      I0 => XLXI_5_Mcount_timeCnt_cy(8),
      I1 => XLXI_5_timeCnt_8_G,
      O => XLXI_5_timeCnt_8_XORG_2009
    );
  XLXI_5_timeCnt_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Mcount_timeCnt_cy(7),
      O => XLXI_5_timeCnt_8_FASTCARRY_2004
    );
  XLXI_5_timeCnt_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y54"
    )
    port map (
      I0 => XLXI_5_timeCnt_8_CYSELG_1992,
      I1 => XLXI_5_timeCnt_8_CYSELF_2007,
      O => XLXI_5_timeCnt_8_CYAND_2005
    );
  XLXI_5_timeCnt_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y54"
    )
    port map (
      IA => XLXI_5_timeCnt_8_CYMUXG2_2003,
      IB => XLXI_5_timeCnt_8_FASTCARRY_2004,
      SEL => XLXI_5_timeCnt_8_CYAND_2005,
      O => XLXI_5_timeCnt_8_CYMUXFAST_2006
    );
  XLXI_5_timeCnt_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y54"
    )
    port map (
      IA => XLXI_5_timeCnt_8_LOGIC_ZERO_2001,
      IB => XLXI_5_timeCnt_8_CYMUXF2_2002,
      SEL => XLXI_5_timeCnt_8_CYSELG_1992,
      O => XLXI_5_timeCnt_8_CYMUXG2_2003
    );
  XLXI_5_timeCnt_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_8_G,
      O => XLXI_5_timeCnt_8_CYSELG_1992
    );
  XLXI_5_timeCnt_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_not0001_0,
      O => XLXI_5_timeCnt_8_SRINV_1990
    );
  XLXI_5_timeCnt_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_timeCnt_8_CLKINV_1989
    );
  XLXI_5_timeCnt_8_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawStart_IBUF_965,
      O => XLXI_5_timeCnt_8_CEINV_1988
    );
  XLXI_5_timeCnt_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y50"
    )
    port map (
      O => XLXI_5_timeCnt_0_LOGIC_ZERO_1779
    );
  XLXI_5_timeCnt_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X67Y50"
    )
    port map (
      O => XLXI_5_timeCnt_0_LOGIC_ONE_1802
    );
  XLXI_5_timeCnt_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_0_XORF_1803,
      O => XLXI_5_timeCnt_0_DXMUX_1805
    );
  XLXI_5_timeCnt_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y50"
    )
    port map (
      I0 => XLXI_5_timeCnt_0_CYINIT_1801,
      I1 => XLXI_5_Mcount_timeCnt_lut(0),
      O => XLXI_5_timeCnt_0_XORF_1803
    );
  XLXI_5_timeCnt_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y50"
    )
    port map (
      IA => XLXI_5_timeCnt_0_LOGIC_ONE_1802,
      IB => XLXI_5_timeCnt_0_CYINIT_1801,
      SEL => XLXI_5_timeCnt_0_CYSELF_1792,
      O => XLXI_5_Mcount_timeCnt_cy(0)
    );
  XLXI_5_timeCnt_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_0_BXINV_1790,
      O => XLXI_5_timeCnt_0_CYINIT_1801
    );
  XLXI_5_timeCnt_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Mcount_timeCnt_lut(0),
      O => XLXI_5_timeCnt_0_CYSELF_1792
    );
  XLXI_5_timeCnt_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => XLXI_5_timeCnt_0_BXINV_1790
    );
  XLXI_5_timeCnt_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_0_XORG_1782,
      O => XLXI_5_timeCnt_0_DYMUX_1784
    );
  XLXI_5_timeCnt_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y50"
    )
    port map (
      I0 => XLXI_5_Mcount_timeCnt_cy(0),
      I1 => XLXI_5_timeCnt_0_G,
      O => XLXI_5_timeCnt_0_XORG_1782
    );
  XLXI_5_timeCnt_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_0_CYMUXG_1781,
      O => XLXI_5_Mcount_timeCnt_cy(1)
    );
  XLXI_5_timeCnt_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X67Y50"
    )
    port map (
      IA => XLXI_5_timeCnt_0_LOGIC_ZERO_1779,
      IB => XLXI_5_Mcount_timeCnt_cy(0),
      SEL => XLXI_5_timeCnt_0_CYSELG_1770,
      O => XLXI_5_timeCnt_0_CYMUXG_1781
    );
  XLXI_5_timeCnt_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_0_G,
      O => XLXI_5_timeCnt_0_CYSELG_1770
    );
  XLXI_5_timeCnt_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_not0001_0,
      O => XLXI_5_timeCnt_0_SRINV_1768
    );
  XLXI_5_timeCnt_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_timeCnt_0_CLKINV_1767
    );
  XLXI_5_timeCnt_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawStart_IBUF_965,
      O => XLXI_5_timeCnt_0_CEINV_1766
    );
  XLXI_5_timeCnt_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y52"
    )
    port map (
      O => XLXI_5_timeCnt_4_LOGIC_ZERO_1889
    );
  XLXI_5_timeCnt_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_4_XORF_1915,
      O => XLXI_5_timeCnt_4_DXMUX_1917
    );
  XLXI_5_timeCnt_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y52"
    )
    port map (
      I0 => XLXI_5_timeCnt_4_CYINIT_1914,
      I1 => XLXI_5_timeCnt_4_F,
      O => XLXI_5_timeCnt_4_XORF_1915
    );
  XLXI_5_timeCnt_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y52"
    )
    port map (
      IA => XLXI_5_timeCnt_4_LOGIC_ZERO_1889,
      IB => XLXI_5_timeCnt_4_CYINIT_1914,
      SEL => XLXI_5_timeCnt_4_CYSELF_1895,
      O => XLXI_5_Mcount_timeCnt_cy(4)
    );
  XLXI_5_timeCnt_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y52"
    )
    port map (
      IA => XLXI_5_timeCnt_4_LOGIC_ZERO_1889,
      IB => XLXI_5_timeCnt_4_LOGIC_ZERO_1889,
      SEL => XLXI_5_timeCnt_4_CYSELF_1895,
      O => XLXI_5_timeCnt_4_CYMUXF2_1890
    );
  XLXI_5_timeCnt_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Mcount_timeCnt_cy(3),
      O => XLXI_5_timeCnt_4_CYINIT_1914
    );
  XLXI_5_timeCnt_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_4_F,
      O => XLXI_5_timeCnt_4_CYSELF_1895
    );
  XLXI_5_timeCnt_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_4_XORG_1897,
      O => XLXI_5_timeCnt_4_DYMUX_1899
    );
  XLXI_5_timeCnt_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y52"
    )
    port map (
      I0 => XLXI_5_Mcount_timeCnt_cy(4),
      I1 => XLXI_5_timeCnt_4_G,
      O => XLXI_5_timeCnt_4_XORG_1897
    );
  XLXI_5_timeCnt_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_4_CYMUXFAST_1894,
      O => XLXI_5_Mcount_timeCnt_cy(5)
    );
  XLXI_5_timeCnt_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Mcount_timeCnt_cy(3),
      O => XLXI_5_timeCnt_4_FASTCARRY_1892
    );
  XLXI_5_timeCnt_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y52"
    )
    port map (
      I0 => XLXI_5_timeCnt_4_CYSELG_1880,
      I1 => XLXI_5_timeCnt_4_CYSELF_1895,
      O => XLXI_5_timeCnt_4_CYAND_1893
    );
  XLXI_5_timeCnt_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y52"
    )
    port map (
      IA => XLXI_5_timeCnt_4_CYMUXG2_1891,
      IB => XLXI_5_timeCnt_4_FASTCARRY_1892,
      SEL => XLXI_5_timeCnt_4_CYAND_1893,
      O => XLXI_5_timeCnt_4_CYMUXFAST_1894
    );
  XLXI_5_timeCnt_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y52"
    )
    port map (
      IA => XLXI_5_timeCnt_4_LOGIC_ZERO_1889,
      IB => XLXI_5_timeCnt_4_CYMUXF2_1890,
      SEL => XLXI_5_timeCnt_4_CYSELG_1880,
      O => XLXI_5_timeCnt_4_CYMUXG2_1891
    );
  XLXI_5_timeCnt_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_4_G,
      O => XLXI_5_timeCnt_4_CYSELG_1880
    );
  XLXI_5_timeCnt_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_not0001_0,
      O => XLXI_5_timeCnt_4_SRINV_1878
    );
  XLXI_5_timeCnt_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_timeCnt_4_CLKINV_1877
    );
  XLXI_5_timeCnt_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawStart_IBUF_965,
      O => XLXI_5_timeCnt_4_CEINV_1876
    );
  XLXI_6_unitCount_22_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X44Y60"
    )
    port map (
      O => XLXI_6_unitCount_22_LOGIC_ZERO_1748
    );
  XLXI_6_unitCount_22_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y60",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_22_XORF_1749,
      O => XLXI_6_unitCount_22_DXMUX_1751
    );
  XLXI_6_unitCount_22_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X44Y60"
    )
    port map (
      I0 => XLXI_6_unitCount_22_CYINIT_1747,
      I1 => XLXI_6_unitCount_22_F,
      O => XLXI_6_unitCount_22_XORF_1749
    );
  XLXI_6_unitCount_22_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X44Y60"
    )
    port map (
      IA => XLXI_6_unitCount_22_LOGIC_ZERO_1748,
      IB => XLXI_6_unitCount_22_CYINIT_1747,
      SEL => XLXI_6_unitCount_22_CYSELF_1738,
      O => XLXI_6_Mcount_unitCount_cy_22_Q
    );
  XLXI_6_unitCount_22_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X44Y60",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_20_CYMUXFAST_1679,
      O => XLXI_6_unitCount_22_CYINIT_1747
    );
  XLXI_6_unitCount_22_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X44Y60",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_22_F,
      O => XLXI_6_unitCount_22_CYSELF_1738
    );
  XLXI_6_unitCount_22_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X44Y60",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_22_XORG_1729,
      O => XLXI_6_unitCount_22_DYMUX_1731
    );
  XLXI_6_unitCount_22_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X44Y60"
    )
    port map (
      I0 => XLXI_6_Mcount_unitCount_cy_22_Q,
      I1 => XLXI_6_unitCount_23_rt_1726,
      O => XLXI_6_unitCount_22_XORG_1729
    );
  XLXI_6_unitCount_22_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y60",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not0001_0,
      O => XLXI_6_unitCount_22_SRINV_1718
    );
  XLXI_6_unitCount_22_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y60",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_unitCount_22_CLKINV_1717
    );
  XLXI_6_unitCount_22_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X44Y60",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => XLXI_6_unitCount_22_CEINV_1716
    );
  XLXI_5_timeCnt_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y53"
    )
    port map (
      O => XLXI_5_timeCnt_6_LOGIC_ZERO_1945
    );
  XLXI_5_timeCnt_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_6_XORF_1971,
      O => XLXI_5_timeCnt_6_DXMUX_1973
    );
  XLXI_5_timeCnt_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y53"
    )
    port map (
      I0 => XLXI_5_timeCnt_6_CYINIT_1970,
      I1 => XLXI_5_timeCnt_6_F,
      O => XLXI_5_timeCnt_6_XORF_1971
    );
  XLXI_5_timeCnt_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y53"
    )
    port map (
      IA => XLXI_5_timeCnt_6_LOGIC_ZERO_1945,
      IB => XLXI_5_timeCnt_6_CYINIT_1970,
      SEL => XLXI_5_timeCnt_6_CYSELF_1951,
      O => XLXI_5_Mcount_timeCnt_cy(6)
    );
  XLXI_5_timeCnt_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y53"
    )
    port map (
      IA => XLXI_5_timeCnt_6_LOGIC_ZERO_1945,
      IB => XLXI_5_timeCnt_6_LOGIC_ZERO_1945,
      SEL => XLXI_5_timeCnt_6_CYSELF_1951,
      O => XLXI_5_timeCnt_6_CYMUXF2_1946
    );
  XLXI_5_timeCnt_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Mcount_timeCnt_cy(5),
      O => XLXI_5_timeCnt_6_CYINIT_1970
    );
  XLXI_5_timeCnt_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_6_F,
      O => XLXI_5_timeCnt_6_CYSELF_1951
    );
  XLXI_5_timeCnt_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_6_XORG_1953,
      O => XLXI_5_timeCnt_6_DYMUX_1955
    );
  XLXI_5_timeCnt_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y53"
    )
    port map (
      I0 => XLXI_5_Mcount_timeCnt_cy(6),
      I1 => XLXI_5_timeCnt_6_G,
      O => XLXI_5_timeCnt_6_XORG_1953
    );
  XLXI_5_timeCnt_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_6_CYMUXFAST_1950,
      O => XLXI_5_Mcount_timeCnt_cy(7)
    );
  XLXI_5_timeCnt_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Mcount_timeCnt_cy(5),
      O => XLXI_5_timeCnt_6_FASTCARRY_1948
    );
  XLXI_5_timeCnt_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y53"
    )
    port map (
      I0 => XLXI_5_timeCnt_6_CYSELG_1936,
      I1 => XLXI_5_timeCnt_6_CYSELF_1951,
      O => XLXI_5_timeCnt_6_CYAND_1949
    );
  XLXI_5_timeCnt_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y53"
    )
    port map (
      IA => XLXI_5_timeCnt_6_CYMUXG2_1947,
      IB => XLXI_5_timeCnt_6_FASTCARRY_1948,
      SEL => XLXI_5_timeCnt_6_CYAND_1949,
      O => XLXI_5_timeCnt_6_CYMUXFAST_1950
    );
  XLXI_5_timeCnt_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y53"
    )
    port map (
      IA => XLXI_5_timeCnt_6_LOGIC_ZERO_1945,
      IB => XLXI_5_timeCnt_6_CYMUXF2_1946,
      SEL => XLXI_5_timeCnt_6_CYSELG_1936,
      O => XLXI_5_timeCnt_6_CYMUXG2_1947
    );
  XLXI_5_timeCnt_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_6_G,
      O => XLXI_5_timeCnt_6_CYSELG_1936
    );
  XLXI_5_timeCnt_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_not0001_0,
      O => XLXI_5_timeCnt_6_SRINV_1934
    );
  XLXI_5_timeCnt_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_timeCnt_6_CLKINV_1933
    );
  XLXI_5_timeCnt_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawStart_IBUF_965,
      O => XLXI_5_timeCnt_6_CEINV_1932
    );
  XLXI_5_x_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      O => XLXI_5_x_8_LOGIC_ZERO_2251
    );
  XLXI_5_x_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_8_XORF_2277,
      O => XLXI_5_x_8_DXMUX_2279
    );
  XLXI_5_x_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      I0 => XLXI_5_x_8_CYINIT_2276,
      I1 => XLXI_5_x_8_F,
      O => XLXI_5_x_8_XORF_2277
    );
  XLXI_5_x_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      IA => XLXI_5_x_8_LOGIC_ZERO_2251,
      IB => XLXI_5_x_8_CYINIT_2276,
      SEL => XLXI_5_x_8_CYSELF_2257,
      O => XLXI_5_Maccum_x_cy_8_Q
    );
  XLXI_5_x_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      IA => XLXI_5_x_8_LOGIC_ZERO_2251,
      IB => XLXI_5_x_8_LOGIC_ZERO_2251,
      SEL => XLXI_5_x_8_CYSELF_2257,
      O => XLXI_5_x_8_CYMUXF2_2252
    );
  XLXI_5_x_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Maccum_x_cy_7_Q,
      O => XLXI_5_x_8_CYINIT_2276
    );
  XLXI_5_x_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_8_F,
      O => XLXI_5_x_8_CYSELF_2257
    );
  XLXI_5_x_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_8_XORG_2259,
      O => XLXI_5_x_8_DYMUX_2261
    );
  XLXI_5_x_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      I0 => XLXI_5_Maccum_x_cy_8_Q,
      I1 => XLXI_5_x_8_G,
      O => XLXI_5_x_8_XORG_2259
    );
  XLXI_5_x_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Maccum_x_cy_7_Q,
      O => XLXI_5_x_8_FASTCARRY_2254
    );
  XLXI_5_x_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      I0 => XLXI_5_x_8_CYSELG_2242,
      I1 => XLXI_5_x_8_CYSELF_2257,
      O => XLXI_5_x_8_CYAND_2255
    );
  XLXI_5_x_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      IA => XLXI_5_x_8_CYMUXG2_2253,
      IB => XLXI_5_x_8_FASTCARRY_2254,
      SEL => XLXI_5_x_8_CYAND_2255,
      O => XLXI_5_x_8_CYMUXFAST_2256
    );
  XLXI_5_x_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y31"
    )
    port map (
      IA => XLXI_5_x_8_LOGIC_ZERO_2251,
      IB => XLXI_5_x_8_CYMUXF2_2252,
      SEL => XLXI_5_x_8_CYSELG_2242,
      O => XLXI_5_x_8_CYMUXG2_2253
    );
  XLXI_5_x_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_8_G,
      O => XLXI_5_x_8_CYSELG_2242
    );
  XLXI_5_x_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and0000_0,
      O => XLXI_5_x_8_SRINV_2240
    );
  XLXI_5_x_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_x_8_CLKINV_2239
    );
  XLXI_5_x_8_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and00001_0,
      O => XLXI_5_x_8_CEINV_2238
    );
  XLXI_5_x_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      O => XLXI_5_x_4_LOGIC_ZERO_2138
    );
  XLXI_5_x_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_4_XORF_2164,
      O => XLXI_5_x_4_DXMUX_2166
    );
  XLXI_5_x_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      I0 => XLXI_5_x_4_CYINIT_2163,
      I1 => XLXI_5_x_4_F,
      O => XLXI_5_x_4_XORF_2164
    );
  XLXI_5_x_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      IA => XLXI_5_x_4_LOGIC_ZERO_2138,
      IB => XLXI_5_x_4_CYINIT_2163,
      SEL => XLXI_5_x_4_CYSELF_2144,
      O => XLXI_5_Maccum_x_cy_4_Q
    );
  XLXI_5_x_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      IA => XLXI_5_x_4_LOGIC_ZERO_2138,
      IB => XLXI_5_x_4_LOGIC_ZERO_2138,
      SEL => XLXI_5_x_4_CYSELF_2144,
      O => XLXI_5_x_4_CYMUXF2_2139
    );
  XLXI_5_x_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Maccum_x_cy_3_Q,
      O => XLXI_5_x_4_CYINIT_2163
    );
  XLXI_5_x_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_4_F,
      O => XLXI_5_x_4_CYSELF_2144
    );
  XLXI_5_x_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_4_XORG_2146,
      O => XLXI_5_x_4_DYMUX_2148
    );
  XLXI_5_x_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      I0 => XLXI_5_Maccum_x_cy_4_Q,
      I1 => XLXI_5_x_4_G,
      O => XLXI_5_x_4_XORG_2146
    );
  XLXI_5_x_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_4_CYMUXFAST_2143,
      O => XLXI_5_Maccum_x_cy_5_Q
    );
  XLXI_5_x_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Maccum_x_cy_3_Q,
      O => XLXI_5_x_4_FASTCARRY_2141
    );
  XLXI_5_x_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      I0 => XLXI_5_x_4_CYSELG_2129,
      I1 => XLXI_5_x_4_CYSELF_2144,
      O => XLXI_5_x_4_CYAND_2142
    );
  XLXI_5_x_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      IA => XLXI_5_x_4_CYMUXG2_2140,
      IB => XLXI_5_x_4_FASTCARRY_2141,
      SEL => XLXI_5_x_4_CYAND_2142,
      O => XLXI_5_x_4_CYMUXFAST_2143
    );
  XLXI_5_x_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y29"
    )
    port map (
      IA => XLXI_5_x_4_LOGIC_ZERO_2138,
      IB => XLXI_5_x_4_CYMUXF2_2139,
      SEL => XLXI_5_x_4_CYSELG_2129,
      O => XLXI_5_x_4_CYMUXG2_2140
    );
  XLXI_5_x_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_4_G,
      O => XLXI_5_x_4_CYSELG_2129
    );
  XLXI_5_x_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and0000_0,
      O => XLXI_5_x_4_SRINV_2127
    );
  XLXI_5_x_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_x_4_CLKINV_2126
    );
  XLXI_5_x_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and00001_0,
      O => XLXI_5_x_4_CEINV_2125
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y54"
    )
    port map (
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_1_LOGIC_ZERO_2351
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X45Y54"
    )
    port map (
      IA => XLXI_6_unitCount_cmp_eq0000_wg_cy_1_LOGIC_ZERO_2351,
      IB => XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYINIT_2362,
      SEL => XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYSELF_2356,
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy(0)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X45Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_cmp_eq0000_wg_cy_1_BXINV_2354,
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYINIT_2362
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_cmp_eq0000_wg_lut(0),
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYSELF_2356
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_1_BXINV_2354
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X45Y54"
    )
    port map (
      IA => XLXI_6_unitCount_cmp_eq0000_wg_cy_1_LOGIC_ZERO_2351,
      IB => XLXI_6_unitCount_cmp_eq0000_wg_cy(0),
      SEL => XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYSELG_2345,
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYMUXG_2353
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_cmp_eq0000_wg_lut(1),
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYSELG_2345
    );
  XLXI_5_timeCnt_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_10_XORF_2054,
      O => XLXI_5_timeCnt_10_DXMUX_2056
    );
  XLXI_5_timeCnt_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y55"
    )
    port map (
      I0 => XLXI_5_timeCnt_10_CYINIT_2053,
      I1 => XLXI_5_timeCnt_10_rt_2051,
      O => XLXI_5_timeCnt_10_XORF_2054
    );
  XLXI_5_timeCnt_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_timeCnt_8_CYMUXFAST_2006,
      O => XLXI_5_timeCnt_10_CYINIT_2053
    );
  XLXI_5_timeCnt_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_not0001_0,
      O => XLXI_5_timeCnt_10_SRINV_2043
    );
  XLXI_5_timeCnt_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_timeCnt_10_CLKINV_2042
    );
  XLXI_5_timeCnt_10_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawStart_IBUF_965,
      O => XLXI_5_timeCnt_10_CEINV_2041
    );
  XLXI_5_x_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y28"
    )
    port map (
      O => XLXI_5_x_2_LOGIC_ZERO_2084
    );
  XLXI_5_x_2_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X67Y28"
    )
    port map (
      O => XLXI_5_x_2_LOGIC_ONE_2107
    );
  XLXI_5_x_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_2_XORF_2108,
      O => XLXI_5_x_2_DXMUX_2110
    );
  XLXI_5_x_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y28"
    )
    port map (
      I0 => XLXI_5_x_2_CYINIT_2106,
      I1 => XLXI_5_Maccum_x_lut_2_Q,
      O => XLXI_5_x_2_XORF_2108
    );
  XLXI_5_x_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y28"
    )
    port map (
      IA => XLXI_5_x_2_LOGIC_ONE_2107,
      IB => XLXI_5_x_2_CYINIT_2106,
      SEL => XLXI_5_x_2_CYSELF_2097,
      O => XLXI_5_Maccum_x_cy_2_Q
    );
  XLXI_5_x_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_2_BXINV_2095,
      O => XLXI_5_x_2_CYINIT_2106
    );
  XLXI_5_x_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Maccum_x_lut_2_Q,
      O => XLXI_5_x_2_CYSELF_2097
    );
  XLXI_5_x_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => XLXI_5_x_2_BXINV_2095
    );
  XLXI_5_x_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_2_XORG_2087,
      O => XLXI_5_x_2_DYMUX_2089
    );
  XLXI_5_x_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y28"
    )
    port map (
      I0 => XLXI_5_Maccum_x_cy_2_Q,
      I1 => XLXI_5_x_2_G,
      O => XLXI_5_x_2_XORG_2087
    );
  XLXI_5_x_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_2_CYMUXG_2086,
      O => XLXI_5_Maccum_x_cy_3_Q
    );
  XLXI_5_x_2_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X67Y28"
    )
    port map (
      IA => XLXI_5_x_2_LOGIC_ZERO_2084,
      IB => XLXI_5_Maccum_x_cy_2_Q,
      SEL => XLXI_5_x_2_CYSELG_2075,
      O => XLXI_5_x_2_CYMUXG_2086
    );
  XLXI_5_x_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_2_G,
      O => XLXI_5_x_2_CYSELG_2075
    );
  XLXI_5_x_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and0000_0,
      O => XLXI_5_x_2_SRINV_2073
    );
  XLXI_5_x_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_x_2_CLKINV_2072
    );
  XLXI_5_x_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and00001_0,
      O => XLXI_5_x_2_CEINV_2071
    );
  XLXI_5_x_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y32"
    )
    port map (
      O => XLXI_5_x_10_LOGIC_ZERO_2325
    );
  XLXI_5_x_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_10_XORF_2326,
      O => XLXI_5_x_10_DXMUX_2328
    );
  XLXI_5_x_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y32"
    )
    port map (
      I0 => XLXI_5_x_10_CYINIT_2324,
      I1 => XLXI_5_x_10_F,
      O => XLXI_5_x_10_XORF_2326
    );
  XLXI_5_x_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y32"
    )
    port map (
      IA => XLXI_5_x_10_LOGIC_ZERO_2325,
      IB => XLXI_5_x_10_CYINIT_2324,
      SEL => XLXI_5_x_10_CYSELF_2315,
      O => XLXI_5_Maccum_x_cy_10_Q
    );
  XLXI_5_x_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_8_CYMUXFAST_2256,
      O => XLXI_5_x_10_CYINIT_2324
    );
  XLXI_5_x_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_10_F,
      O => XLXI_5_x_10_CYSELF_2315
    );
  XLXI_5_x_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_10_XORG_2306,
      O => XLXI_5_x_10_DYMUX_2308
    );
  XLXI_5_x_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y32"
    )
    port map (
      I0 => XLXI_5_Maccum_x_cy_10_Q,
      I1 => XLXI_5_x_11_rt_2303,
      O => XLXI_5_x_10_XORG_2306
    );
  XLXI_5_x_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and0000_0,
      O => XLXI_5_x_10_SRINV_2295
    );
  XLXI_5_x_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_x_10_CLKINV_2294
    );
  XLXI_5_x_10_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and00001_0,
      O => XLXI_5_x_10_CEINV_2293
    );
  XLXI_5_x_6_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      O => XLXI_5_x_6_LOGIC_ONE_2194
    );
  XLXI_5_x_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      O => XLXI_5_x_6_LOGIC_ZERO_2220
    );
  XLXI_5_x_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_6_XORF_2221,
      O => XLXI_5_x_6_DXMUX_2223
    );
  XLXI_5_x_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      I0 => XLXI_5_x_6_CYINIT_2219,
      I1 => XLXI_5_x_6_F,
      O => XLXI_5_x_6_XORF_2221
    );
  XLXI_5_x_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      IA => XLXI_5_x_6_LOGIC_ZERO_2220,
      IB => XLXI_5_x_6_CYINIT_2219,
      SEL => XLXI_5_x_6_CYSELF_2200,
      O => XLXI_5_Maccum_x_cy_6_Q
    );
  XLXI_5_x_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      IA => XLXI_5_x_6_LOGIC_ZERO_2220,
      IB => XLXI_5_x_6_LOGIC_ZERO_2220,
      SEL => XLXI_5_x_6_CYSELF_2200,
      O => XLXI_5_x_6_CYMUXF2_2195
    );
  XLXI_5_x_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Maccum_x_cy_5_Q,
      O => XLXI_5_x_6_CYINIT_2219
    );
  XLXI_5_x_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_6_F,
      O => XLXI_5_x_6_CYSELF_2200
    );
  XLXI_5_x_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_6_XORG_2202,
      O => XLXI_5_x_6_DYMUX_2204
    );
  XLXI_5_x_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      I0 => XLXI_5_Maccum_x_cy_6_Q,
      I1 => XLXI_5_Maccum_x_lut_7_Q,
      O => XLXI_5_x_6_XORG_2202
    );
  XLXI_5_x_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x_6_CYMUXFAST_2199,
      O => XLXI_5_Maccum_x_cy_7_Q
    );
  XLXI_5_x_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Maccum_x_cy_5_Q,
      O => XLXI_5_x_6_FASTCARRY_2197
    );
  XLXI_5_x_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      I0 => XLXI_5_x_6_CYSELG_2185,
      I1 => XLXI_5_x_6_CYSELF_2200,
      O => XLXI_5_x_6_CYAND_2198
    );
  XLXI_5_x_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      IA => XLXI_5_x_6_CYMUXG2_2196,
      IB => XLXI_5_x_6_FASTCARRY_2197,
      SEL => XLXI_5_x_6_CYAND_2198,
      O => XLXI_5_x_6_CYMUXFAST_2199
    );
  XLXI_5_x_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y30"
    )
    port map (
      IA => XLXI_5_x_6_LOGIC_ONE_2194,
      IB => XLXI_5_x_6_CYMUXF2_2195,
      SEL => XLXI_5_x_6_CYSELG_2185,
      O => XLXI_5_x_6_CYMUXG2_2196
    );
  XLXI_5_x_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Maccum_x_lut_7_Q,
      O => XLXI_5_x_6_CYSELG_2185
    );
  XLXI_5_x_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and0000_0,
      O => XLXI_5_x_6_SRINV_2183
    );
  XLXI_5_x_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_x_6_CLKINV_2182
    );
  XLXI_5_x_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and00001_0,
      O => XLXI_5_x_6_CEINV_2181
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y55"
    )
    port map (
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_LOGIC_ZERO_2380
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y55"
    )
    port map (
      IA => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_LOGIC_ZERO_2380,
      IB => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_LOGIC_ZERO_2380,
      SEL => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYSELF_2386,
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYMUXF2_2381
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_cmp_eq0000_wg_lut(2),
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYSELF_2386
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_cmp_eq0000_wg_cy_1_CYMUXG_2353,
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_FASTCARRY_2383
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y55"
    )
    port map (
      I0 => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYSELG_2374,
      I1 => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYSELF_2386,
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYAND_2384
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y55"
    )
    port map (
      IA => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYMUXG2_2382,
      IB => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_FASTCARRY_2383,
      SEL => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYAND_2384,
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYMUXFAST_2385
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y55"
    )
    port map (
      IA => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_LOGIC_ZERO_2380,
      IB => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYMUXF2_2381,
      SEL => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYSELG_2374,
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYMUXG2_2382
    );
  XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_cmp_eq0000_wg_lut(3),
      O => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYSELG_2374
    );
  SawCmd_3_IBUF : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawCmd(3),
      O => SawCmd_3_INBUF
    );
  SawAddr_3_IBUF : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawAddr(3),
      O => SawAddr_3_INBUF
    );
  CharIn_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn(0),
      O => CharIn_0_INBUF
    );
  XLXI_6_Mmux_symbolCode_mux0001_5_f51_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X55Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mmux_symbolCode_mux0001_5_f51_F5MUX_2513,
      O => XLXI_6_Mmux_symbolCode_mux0001_5_f51
    );
  XLXI_6_Mmux_symbolCode_mux0001_5_f51_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X55Y34"
    )
    port map (
      IA => XLXI_6_Mmux_symbolCode_mux0001_71_2502,
      IB => XLXI_6_Mmux_symbolCode_mux0001_62_2511,
      SEL => XLXI_6_Mmux_symbolCode_mux0001_5_f51_BXINV_2505,
      O => XLXI_6_Mmux_symbolCode_mux0001_5_f51_F5MUX_2513
    );
  XLXI_6_Mmux_symbolCode_mux0001_5_f51_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount(1),
      O => XLXI_6_Mmux_symbolCode_mux0001_5_f51_BXINV_2505
    );
  XLXI_6_Mmux_symbolCode_mux0001_5_f51_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mmux_symbolCode_mux0001_5_f51_F6MUX_2504,
      O => XLXI_6_Mmux_symbolCode_mux0001_4_f6
    );
  XLXI_6_Mmux_symbolCode_mux0001_5_f51_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X55Y34"
    )
    port map (
      IA => XLXI_6_Mmux_symbolCode_mux0001_6_f5,
      IB => XLXI_6_Mmux_symbolCode_mux0001_5_f51,
      SEL => XLXI_6_Mmux_symbolCode_mux0001_5_f51_BYINV_2496,
      O => XLXI_6_Mmux_symbolCode_mux0001_5_f51_F6MUX_2504
    );
  XLXI_6_Mmux_symbolCode_mux0001_5_f51_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount(2),
      O => XLXI_6_Mmux_symbolCode_mux0001_5_f51_BYINV_2496
    );
  SawCmd_0_IBUF : X_BUF
    generic map(
      LOC => "PAD114",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawCmd(0),
      O => SawCmd_0_INBUF
    );
  SawAddr_2_IBUF : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawAddr(2),
      O => SawAddr_2_INBUF
    );
  CharOUT_OBUF : X_OBUF
    generic map(
      LOC => "PAD90"
    )
    port map (
      I => CharOUT_O,
      O => CharOUT
    );
  SawCmd_1_IBUF : X_BUF
    generic map(
      LOC => "PAD115",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawCmd(1),
      O => SawCmd_1_INBUF
    );
  XLXI_6_Mmux_symbolCode_mux0001_4_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X54Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mmux_symbolCode_mux0001_4_f5_F5MUX_2452,
      O => XLXI_6_Mmux_symbolCode_mux0001_4_f5
    );
  XLXI_6_Mmux_symbolCode_mux0001_4_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X54Y34"
    )
    port map (
      IA => XLXI_6_Mmux_symbolCode_mux0001_6_2439,
      IB => XLXI_6_symbolCode_14_rt_2450,
      SEL => XLXI_6_Mmux_symbolCode_mux0001_4_f5_BXINV_2442,
      O => XLXI_6_Mmux_symbolCode_mux0001_4_f5_F5MUX_2452
    );
  XLXI_6_Mmux_symbolCode_mux0001_4_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount(1),
      O => XLXI_6_Mmux_symbolCode_mux0001_4_f5_BXINV_2442
    );
  XLXI_6_Mmux_symbolCode_mux0001_4_f5_FXUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mmux_symbolCode_mux0001_4_f5_F6MUX_2441,
      O => XLXI_6_Mmux_symbolCode_mux0001_3_f6
    );
  XLXI_6_Mmux_symbolCode_mux0001_4_f5_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X54Y34"
    )
    port map (
      IA => XLXI_6_Mmux_symbolCode_mux0001_5_f5,
      IB => XLXI_6_Mmux_symbolCode_mux0001_4_f5,
      SEL => XLXI_6_Mmux_symbolCode_mux0001_4_f5_BYINV_2433,
      O => XLXI_6_Mmux_symbolCode_mux0001_4_f5_F6MUX_2441
    );
  XLXI_6_Mmux_symbolCode_mux0001_4_f5_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount(2),
      O => XLXI_6_Mmux_symbolCode_mux0001_4_f5_BYINV_2433
    );
  XLXI_6_symbolCode_mux0001_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X54Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0001_F5MUX_2483,
      O => XLXI_6_Mmux_symbolCode_mux0001_5_f5
    );
  XLXI_6_symbolCode_mux0001_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X54Y35"
    )
    port map (
      IA => XLXI_6_Mmux_symbolCode_mux0001_7_2471,
      IB => XLXI_6_Mmux_symbolCode_mux0001_61_2481,
      SEL => XLXI_6_symbolCode_mux0001_BXINV_2475,
      O => XLXI_6_symbolCode_mux0001_F5MUX_2483
    );
  XLXI_6_symbolCode_mux0001_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount(1),
      O => XLXI_6_symbolCode_mux0001_BXINV_2475
    );
  XLXI_6_symbolCode_mux0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0001_F6MUX_2473,
      O => XLXI_6_symbolCode_mux0001
    );
  XLXI_6_symbolCode_mux0001_F6MUX : X_MUX2
    generic map(
      LOC => "SLICE_X54Y35"
    )
    port map (
      IA => XLXI_6_Mmux_symbolCode_mux0001_4_f6,
      IB => XLXI_6_Mmux_symbolCode_mux0001_3_f6,
      SEL => XLXI_6_symbolCode_mux0001_BYINV_2465,
      O => XLXI_6_symbolCode_mux0001_F6MUX_2473
    );
  XLXI_6_symbolCode_mux0001_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount(3),
      O => XLXI_6_symbolCode_mux0001_BYINV_2465
    );
  DwrStart_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => DwrStart_O,
      O => DwrStart
    );
  CharIn_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn(1),
      O => CharIn_1_INBUF
    );
  SawAddr_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawAddr(1),
      O => SawAddr_1_INBUF
    );
  XLXI_6_Mmux_symbolCode_mux0001_6_f5_F5USED : X_BUF
    generic map(
      LOC => "SLICE_X55Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mmux_symbolCode_mux0001_6_f5_F5MUX_2537,
      O => XLXI_6_Mmux_symbolCode_mux0001_6_f5
    );
  XLXI_6_Mmux_symbolCode_mux0001_6_f5_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X55Y35"
    )
    port map (
      IA => XLXI_6_Mmux_symbolCode_mux0001_8_2527,
      IB => XLXI_6_Mmux_symbolCode_mux0001_72_2535,
      SEL => XLXI_6_Mmux_symbolCode_mux0001_6_f5_BXINV_2529,
      O => XLXI_6_Mmux_symbolCode_mux0001_6_f5_F5MUX_2537
    );
  XLXI_6_Mmux_symbolCode_mux0001_6_f5_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount(1),
      O => XLXI_6_Mmux_symbolCode_mux0001_6_f5_BXINV_2529
    );
  SawCmd_2_IBUF : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawCmd(2),
      O => SawCmd_2_INBUF
    );
  XLXI_6_unitCount_cmp_eq0000_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X45Y56"
    )
    port map (
      O => XLXI_6_unitCount_cmp_eq0000_LOGIC_ZERO_2410
    );
  XLXI_6_unitCount_cmp_eq0000_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y56"
    )
    port map (
      IA => XLXI_6_unitCount_cmp_eq0000_LOGIC_ZERO_2410,
      IB => XLXI_6_unitCount_cmp_eq0000_LOGIC_ZERO_2410,
      SEL => XLXI_6_unitCount_cmp_eq0000_CYSELF_2416,
      O => XLXI_6_unitCount_cmp_eq0000_CYMUXF2_2411
    );
  XLXI_6_unitCount_cmp_eq0000_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X45Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_cmp_eq0000_wg_lut(4),
      O => XLXI_6_unitCount_cmp_eq0000_CYSELF_2416
    );
  XLXI_6_unitCount_cmp_eq0000_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_cmp_eq0000_CYMUXFAST_2415,
      O => XLXI_6_unitCount_cmp_eq0000
    );
  XLXI_6_unitCount_cmp_eq0000_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X45Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_cmp_eq0000_wg_cy_3_CYMUXFAST_2385,
      O => XLXI_6_unitCount_cmp_eq0000_FASTCARRY_2413
    );
  XLXI_6_unitCount_cmp_eq0000_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X45Y56"
    )
    port map (
      I0 => XLXI_6_unitCount_cmp_eq0000_CYSELG_2404,
      I1 => XLXI_6_unitCount_cmp_eq0000_CYSELF_2416,
      O => XLXI_6_unitCount_cmp_eq0000_CYAND_2414
    );
  XLXI_6_unitCount_cmp_eq0000_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X45Y56"
    )
    port map (
      IA => XLXI_6_unitCount_cmp_eq0000_CYMUXG2_2412,
      IB => XLXI_6_unitCount_cmp_eq0000_FASTCARRY_2413,
      SEL => XLXI_6_unitCount_cmp_eq0000_CYAND_2414,
      O => XLXI_6_unitCount_cmp_eq0000_CYMUXFAST_2415
    );
  XLXI_6_unitCount_cmp_eq0000_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X45Y56"
    )
    port map (
      IA => XLXI_6_unitCount_cmp_eq0000_LOGIC_ZERO_2410,
      IB => XLXI_6_unitCount_cmp_eq0000_CYMUXF2_2411,
      SEL => XLXI_6_unitCount_cmp_eq0000_CYSELG_2404,
      O => XLXI_6_unitCount_cmp_eq0000_CYMUXG2_2412
    );
  XLXI_6_unitCount_cmp_eq0000_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X45Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_unitCount_cmp_eq0000_wg_lut(5),
      O => XLXI_6_unitCount_cmp_eq0000_CYSELG_2404
    );
  SawAddr_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawAddr(0),
      O => SawAddr_0_INBUF
    );
  Clk_50MHz_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz,
      O => Clk_50MHz_INBUF
    );
  CharIn_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn(2),
      O => CharIn_2_INBUF
    );
  CharIn_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn(3),
      O => CharIn_3_INBUF
    );
  DwrCmd_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD116"
    )
    port map (
      I => DwrCmd_1_O,
      O => DwrCmd(1)
    );
  CharIn_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn(4),
      O => CharIn_4_INBUF
    );
  DwrData_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD105"
    )
    port map (
      I => DwrData_1_O,
      O => DwrData(1)
    );
  CharIn_6_IBUF : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn(6),
      O => CharIn_6_INBUF
    );
  DwrData_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD101"
    )
    port map (
      I => DwrData_4_O,
      O => DwrData(4)
    );
  DwrData_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD104"
    )
    port map (
      I => DwrData_2_O,
      O => DwrData(2)
    );
  CharIn_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn(7),
      O => CharIn_7_INBUF
    );
  DwrData_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD100"
    )
    port map (
      I => DwrData_5_O,
      O => DwrData(5)
    );
  DwrAddr_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => DwrAddr_0_O,
      O => DwrAddr(0)
    );
  DwrData_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD102"
    )
    port map (
      I => DwrData_3_O,
      O => DwrData(3)
    );
  CharIn_5_IBUF : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn(5),
      O => CharIn_5_INBUF
    );
  DwrAddr_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD79"
    )
    port map (
      I => DwrAddr_3_O,
      O => DwrAddr(3)
    );
  DwrData_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => DwrData_6_O,
      O => DwrData(6)
    );
  DwrCmd_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD113"
    )
    port map (
      I => DwrCmd_0_O,
      O => DwrCmd(0)
    );
  CharBUSY_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => CharBUSY_O,
      O => CharBUSY
    );
  DwrData_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => DwrData_11_O,
      O => DwrData(11)
    );
  DwrAddr_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD81"
    )
    port map (
      I => DwrAddr_1_O,
      O => DwrAddr(1)
    );
  DwrData_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => DwrData_10_O,
      O => DwrData(10)
    );
  DwrAddr_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD76"
    )
    port map (
      I => DwrAddr_2_O,
      O => DwrAddr(2)
    );
  DwrData_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD109"
    )
    port map (
      I => DwrData_0_O,
      O => DwrData(0)
    );
  DwrData_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => DwrData_7_O,
      O => DwrData(7)
    );
  DwrCmd_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD111"
    )
    port map (
      I => DwrCmd_2_O,
      O => DwrCmd(2)
    );
  DwrData_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => DwrData_8_O,
      O => DwrData(8)
    );
  CharStart_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_INBUF,
      O => CharStart_IBUF_1048
    );
  CharStart_IBUF : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart,
      O => CharStart_INBUF
    );
  XLXI_6_symbol_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn_6_INBUF,
      O => XLXI_6_symbol_6_DXMUX_3717
    );
  XLXI_6_symbol_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn_5_INBUF,
      O => XLXI_6_symbol_6_DYMUX_3711
    );
  XLXI_6_symbol_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbol_6_CLKINV_3709
    );
  XLXI_6_symbol_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_IBUF_1048,
      O => XLXI_6_symbol_6_CEINV_3708
    );
  XLXI_6_symbol_5 : X_FF
    generic map(
      LOC => "SLICE_X66Y39",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbol_6_DYMUX_3711,
      CE => XLXI_6_symbol_6_CEINV_3708,
      CLK => XLXI_6_symbol_6_CLKINV_3709,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbol(5)
    );
  XLXI_5_counter_and00001_SW0 : X_LUT4
    generic map(
      INIT => X"BFFF",
      LOC => "SLICE_X66Y54"
    )
    port map (
      ADR0 => XLXI_5_counter(5),
      ADR1 => XLXI_5_counter(4),
      ADR2 => XLXI_5_timeCnt(0),
      ADR3 => XLXI_5_timeCnt(10),
      O => N12
    );
  XLXI_5_counter_4 : X_SFF
    generic map(
      LOC => "SLICE_X66Y54",
      INIT => '0'
    )
    port map (
      I => XLXI_5_counter_4_DYMUX_3599,
      CE => XLXI_5_counter_4_CEINV_3587,
      CLK => XLXI_5_counter_4_CLKINV_3588,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_counter_4_SRINV_3589,
      O => XLXI_5_counter(4)
    );
  XLXI_5_Mcount_counter_xor_4_12 : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X66Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_5_counter(4),
      ADR2 => VCC,
      ADR3 => XLXI_5_N3,
      O => XLXI_5_Result_4_1
    );
  XLXI_5_counter_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => N12,
      O => N12_0
    );
  XLXI_5_counter_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Result_4_1,
      O => XLXI_5_counter_4_DYMUX_3599
    );
  XLXI_5_counter_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and0000_0,
      O => XLXI_5_counter_4_SRINV_3589
    );
  XLXI_5_counter_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_counter_4_CLKINV_3588
    );
  XLXI_5_counter_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and00001_0,
      O => XLXI_5_counter_4_CEINV_3587
    );
  XLXI_6_symbol_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y45",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn_7_INBUF,
      O => XLXI_6_symbol_7_DYMUX_3729
    );
  XLXI_6_symbol_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y45",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbol_7_CLKINV_3727
    );
  XLXI_6_symbol_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y45",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_IBUF_1048,
      O => XLXI_6_symbol_7_CEINV_3726
    );
  XLXI_6_symbolCode_mux0002_4_1 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X55Y33"
    )
    port map (
      ADR0 => XLXI_6_symbol(6),
      ADR1 => XLXI_6_symbol(5),
      ADR2 => XLXI_6_symbol(7),
      ADR3 => XLXI_6_rom0000(14),
      O => XLXI_6_symbolCode_mux0002(4)
    );
  XLXI_6_symbolCode_11 : X_FF
    generic map(
      LOC => "SLICE_X55Y33",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_11_DXMUX_3432,
      CE => XLXI_6_symbolCode_11_CEINV_3411,
      CLK => XLXI_6_symbolCode_11_CLKINV_3412,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(11)
    );
  XLXI_6_symbolCode_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(3),
      O => XLXI_6_symbolCode_11_DXMUX_3432
    );
  XLXI_6_symbolCode_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(4),
      O => XLXI_6_symbolCode_11_DYMUX_3420
    );
  XLXI_6_symbolCode_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbolCode_11_CLKINV_3412
    );
  XLXI_6_symbolCode_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_IBUF_1048,
      O => XLXI_6_symbolCode_11_CEINV_3411
    );
  XLXI_6_symbolLen_mux0001_1_1 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X54Y39"
    )
    port map (
      ADR0 => XLXI_6_symbol(6),
      ADR1 => XLXI_6_symbol(7),
      ADR2 => XLXI_6_rom0000(2),
      ADR3 => XLXI_6_symbol(5),
      O => XLXI_6_symbolLen_mux0001(1)
    );
  XLXI_6_symbolLen_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolLen_mux0001(0),
      O => XLXI_6_symbolLen_3_DXMUX_3394
    );
  XLXI_6_symbolLen_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolLen_mux0001(1),
      O => XLXI_6_symbolLen_3_DYMUX_3382
    );
  XLXI_6_symbolLen_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbolLen_3_CLKINV_3374
    );
  XLXI_6_symbolLen_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_IBUF_1048,
      O => XLXI_6_symbolLen_3_CEINV_3373
    );
  XLXI_6_symbolCode_12 : X_FF
    generic map(
      LOC => "SLICE_X55Y30",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_13_DYMUX_3458,
      CE => XLXI_6_symbolCode_13_CEINV_3449,
      CLK => XLXI_6_symbolCode_13_CLKINV_3450,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(12)
    );
  XLXI_6_symbolCode_mux0002_2_1 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X55Y30"
    )
    port map (
      ADR0 => XLXI_6_symbol(5),
      ADR1 => XLXI_6_symbol(7),
      ADR2 => XLXI_6_rom0000(16),
      ADR3 => XLXI_6_symbol(6),
      O => XLXI_6_symbolCode_mux0002(2)
    );
  XLXI_6_symbolCode_mux0002_1_1 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X55Y30"
    )
    port map (
      ADR0 => XLXI_6_symbol(6),
      ADR1 => XLXI_6_symbol(7),
      ADR2 => XLXI_6_rom0000(17),
      ADR3 => XLXI_6_symbol(5),
      O => XLXI_6_symbolCode_mux0002(1)
    );
  XLXI_6_symbolCode_13 : X_FF
    generic map(
      LOC => "SLICE_X55Y30",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_13_DXMUX_3470,
      CE => XLXI_6_symbolCode_13_CEINV_3449,
      CLK => XLXI_6_symbolCode_13_CLKINV_3450,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(13)
    );
  XLXI_6_symbolCode_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(1),
      O => XLXI_6_symbolCode_13_DXMUX_3470
    );
  XLXI_6_symbolCode_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(2),
      O => XLXI_6_symbolCode_13_DYMUX_3458
    );
  XLXI_6_symbolCode_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbolCode_13_CLKINV_3450
    );
  XLXI_6_symbolCode_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_IBUF_1048,
      O => XLXI_6_symbolCode_13_CEINV_3449
    );
  XLXI_6_symbolCode_14 : X_FF
    generic map(
      LOC => "SLICE_X55Y31",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_14_DYMUX_3491,
      CE => XLXI_6_symbolCode_14_CEINV_3482,
      CLK => XLXI_6_symbolCode_14_CLKINV_3483,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(14)
    );
  XLXI_6_symbolCode_mux0002_0_1 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X55Y31"
    )
    port map (
      ADR0 => XLXI_6_rom0000(18),
      ADR1 => XLXI_6_symbol(7),
      ADR2 => XLXI_6_symbol(5),
      ADR3 => XLXI_6_symbol(6),
      O => XLXI_6_symbolCode_mux0002(0)
    );
  XLXI_6_symbolCode_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(0),
      O => XLXI_6_symbolCode_14_DYMUX_3491
    );
  XLXI_6_symbolCode_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbolCode_14_CLKINV_3483
    );
  XLXI_6_symbolCode_14_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_IBUF_1048,
      O => XLXI_6_symbolCode_14_CEINV_3482
    );
  XLXI_6_sendOut_not00011 : X_LUT4
    generic map(
      INIT => X"A222",
      LOC => "SLICE_X50Y43"
    )
    port map (
      ADR0 => XLXI_6_sending_927,
      ADR1 => XLXI_6_ending_1092,
      ADR2 => XLXI_6_unitCount_cmp_eq0000,
      ADR3 => XLXI_6_symbolCount_cmp_eq0000_0,
      O => XLXI_6_sendOut_not0001
    );
  XLXI_5_counter_and00001 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X66Y51"
    )
    port map (
      ADR0 => XLXI_5_N5_0,
      ADR1 => XLXI_5_timeCnt(10),
      ADR2 => N10,
      ADR3 => XLXI_5_timeCnt(0),
      O => XLXI_5_counter_not0001
    );
  XLXI_5_counter_and00001_1 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X66Y51"
    )
    port map (
      ADR0 => XLXI_5_N5_0,
      ADR1 => N10,
      ADR2 => XLXI_5_timeCnt(10),
      ADR3 => XLXI_5_timeCnt(0),
      O => XLXI_5_counter_and00001_3666
    );
  XLXI_5_counter_and00001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and00001_3666,
      O => XLXI_5_counter_and00001_0
    );
  XLXI_5_counter_and00001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_not0001,
      O => XLXI_5_counter_not0001_0
    );
  XLXI_5_sendStart_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X66Y50"
    )
    port map (
      ADR0 => XLXI_5_N5_0,
      ADR1 => XLXI_5_timeCnt(3),
      ADR2 => XLXI_5_timeCnt(10),
      ADR3 => N2,
      O => XLXI_5_sendStart_cmp_eq0000_3694
    );
  XLXI_5_sendStart_cmp_eq0000_SW0 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X66Y50"
    )
    port map (
      ADR0 => XLXI_5_timeCnt(0),
      ADR1 => VCC,
      ADR2 => XLXI_5_timeCnt(9),
      ADR3 => XLXI_5_timeCnt(4),
      O => N2_pack_1
    );
  XLXI_5_sendStart_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_sendStart_cmp_eq0000_3694,
      O => XLXI_5_sendStart_DXMUX_3697
    );
  XLXI_5_sendStart_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => N2_pack_1,
      O => N2
    );
  XLXI_5_sendStart_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_sendStart_CLKINV_3681
    );
  XLXI_5_sendStart_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y50",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawStart_IBUF_965,
      O => XLXI_5_sendStart_CEINV_3680
    );
  XLXI_6_symbolCount_not00011 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X45Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_sending_927,
      ADR2 => VCC,
      ADR3 => XLXI_6_unitCount_cmp_eq0000,
      O => XLXI_6_symbolCount_not0001
    );
  XLXI_6_ending : X_FF
    generic map(
      LOC => "SLICE_X45Y59",
      INIT => '0'
    )
    port map (
      I => XLXI_6_ending_DYMUX_3631,
      CE => XLXI_6_ending_CEINV_3621,
      CLK => XLXI_6_ending_CLKINV_3622,
      SET => GND,
      RST => GND,
      O => XLXI_6_ending_1092
    );
  XLXI_6_ending_mux00021 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X45Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_symbolCount_cmp_eq0000632_1073,
      ADR2 => XLXI_6_unitCount_cmp_eq0000,
      ADR3 => XLXI_6_symbolCount_cmp_eq0000665_1072,
      O => XLXI_6_ending_mux0002
    );
  XLXI_6_ending_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not0001,
      O => XLXI_6_symbolCount_not0001_0
    );
  XLXI_6_ending_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X45Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_ending_mux0002,
      O => XLXI_6_ending_DYMUX_3631
    );
  XLXI_6_ending_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_ending_CLKINV_3622
    );
  XLXI_6_ending_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => XLXI_6_ending_CEINV_3621
    );
  XLXI_5_sendStart : X_FF
    generic map(
      LOC => "SLICE_X66Y50",
      INIT => '0'
    )
    port map (
      I => XLXI_5_sendStart_DXMUX_3697,
      CE => XLXI_5_sendStart_CEINV_3680,
      CLK => XLXI_5_sendStart_CLKINV_3681,
      SET => GND,
      RST => GND,
      O => XLXI_5_sendStart_1037
    );
  XLXI_5_Mcount_counter_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X64Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => XLXI_5_counter(1),
      ADR3 => XLXI_5_counter(0),
      O => XLXI_5_Result_1_1
    );
  XLXI_5_counter_1 : X_SFF
    generic map(
      LOC => "SLICE_X64Y55",
      INIT => '0'
    )
    port map (
      I => XLXI_5_counter_0_DYMUX_3766,
      CE => XLXI_5_counter_0_CEINV_3754,
      CLK => XLXI_5_counter_0_CLKINV_3755,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_counter_0_SRINV_3756,
      O => XLXI_5_counter(1)
    );
  XLXI_5_counter_0 : X_SFF
    generic map(
      LOC => "SLICE_X64Y55",
      INIT => '0'
    )
    port map (
      I => XLXI_5_counter_0_DXMUX_3773,
      CE => XLXI_5_counter_0_CEINV_3754,
      CLK => XLXI_5_counter_0_CLKINV_3755,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_counter_0_SRINV_3756,
      O => XLXI_5_counter(0)
    );
  XLXI_5_counter_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X64Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter(0),
      O => XLXI_5_counter_0_DXMUX_3773
    );
  XLXI_5_counter_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Result_1_1,
      O => XLXI_5_counter_0_DYMUX_3766
    );
  XLXI_5_counter_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and0000_0,
      O => XLXI_5_counter_0_SRINV_3756
    );
  XLXI_5_counter_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_counter_0_CLKINV_3755
    );
  XLXI_5_counter_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and00001_0,
      O => XLXI_5_counter_0_CEINV_3754
    );
  XLXI_6_symbol_6 : X_FF
    generic map(
      LOC => "SLICE_X66Y39",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbol_6_DXMUX_3717,
      CE => XLXI_6_symbol_6_CEINV_3708,
      CLK => XLXI_6_symbol_6_CLKINV_3709,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbol(6)
    );
  XLXI_6_Mcount_symbolCount_xor_2_11 : X_LUT4
    generic map(
      INIT => X"FEAB",
      LOC => "SLICE_X52Y41"
    )
    port map (
      ADR0 => XLXI_6_symbolCount_cmp_eq0000_0,
      ADR1 => XLXI_6_symbolCount(1),
      ADR2 => XLXI_6_symbolCount(0),
      ADR3 => XLXI_6_symbolCount(2),
      O => XLXI_6_Mcount_symbolCount2
    );
  XLXI_6_symbolCount_2 : X_FF
    generic map(
      LOC => "SLICE_X52Y41",
      INIT => '1'
    )
    port map (
      I => XLXI_6_symbolCount_2_DXMUX_3529,
      CE => XLXI_6_symbolCount_2_CEINV_3508,
      CLK => XLXI_6_symbolCount_2_CLKINV_3509,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCount(2)
    );
  XLXI_6_symbolCount_1 : X_FF
    generic map(
      LOC => "SLICE_X52Y41",
      INIT => '1'
    )
    port map (
      I => XLXI_6_symbolCount_2_DYMUX_3517,
      CE => XLXI_6_symbolCount_2_CEINV_3508,
      CLK => XLXI_6_symbolCount_2_CLKINV_3509,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCount(1)
    );
  XLXI_6_Mcount_symbolCount_xor_1_11 : X_LUT4
    generic map(
      INIT => X"EDA5",
      LOC => "SLICE_X52Y41"
    )
    port map (
      ADR0 => XLXI_6_symbolCount(1),
      ADR1 => XLXI_6_symbolCount_cmp_eq0000665_1072,
      ADR2 => XLXI_6_symbolCount(0),
      ADR3 => XLXI_6_symbolCount_cmp_eq0000632_1073,
      O => XLXI_6_Mcount_symbolCount1
    );
  XLXI_6_symbolCount_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_symbolCount2,
      O => XLXI_6_symbolCount_2_DXMUX_3529
    );
  XLXI_6_symbolCount_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_symbolCount1,
      O => XLXI_6_symbolCount_2_DYMUX_3517
    );
  XLXI_6_symbolCount_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbolCount_2_CLKINV_3509
    );
  XLXI_6_symbolCount_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not00011_0,
      O => XLXI_6_symbolCount_2_CEINV_3508
    );
  XLXI_6_symbol_7 : X_FF
    generic map(
      LOC => "SLICE_X66Y45",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbol_7_DYMUX_3729,
      CE => XLXI_6_symbol_7_CEINV_3726,
      CLK => XLXI_6_symbol_7_CLKINV_3727,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbol(7)
    );
  XLXI_6_sending : X_SFF
    generic map(
      LOC => "SLICE_X52Y47",
      INIT => '0'
    )
    port map (
      I => XLXI_6_sending_DYMUX_3788,
      CE => XLXI_6_sending_CEINV_3784,
      CLK => XLXI_6_sending_CLKINV_3785,
      SET => GND,
      RST => GND,
      SSET => XLXI_6_sending_SRINV_3786,
      SRST => GND,
      O => XLXI_6_sending_927
    );
  XLXI_6_sending_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_BYINV_3787,
      O => XLXI_6_sending_DYMUX_3788
    );
  XLXI_6_sending_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => XLXI_6_sending_BYINV_3787
    );
  XLXI_6_sending_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_IBUF_1048,
      O => XLXI_6_sending_SRINV_3786
    );
  XLXI_6_sending_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_sending_CLKINV_3785
    );
  XLXI_6_sending_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_ending_1092,
      O => XLXI_6_sending_CEINV_3784
    );
  XLXI_5_counter_3 : X_SFF
    generic map(
      LOC => "SLICE_X65Y54",
      INIT => '0'
    )
    port map (
      I => XLXI_5_counter_3_DXMUX_3570,
      CE => XLXI_5_counter_3_CEINV_3546,
      CLK => XLXI_5_counter_3_CLKINV_3547,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_counter_3_SRINV_3548,
      O => XLXI_5_counter(3)
    );
  XLXI_5_Mcount_counter_xor_3_11 : X_LUT4
    generic map(
      INIT => X"7F80",
      LOC => "SLICE_X65Y54"
    )
    port map (
      ADR0 => XLXI_5_counter(0),
      ADR1 => XLXI_5_counter(1),
      ADR2 => XLXI_5_counter(2),
      ADR3 => XLXI_5_counter(3),
      O => XLXI_5_Result_3_1
    );
  XLXI_5_counter_2 : X_SFF
    generic map(
      LOC => "SLICE_X65Y54",
      INIT => '0'
    )
    port map (
      I => XLXI_5_counter_3_DYMUX_3557,
      CE => XLXI_5_counter_3_CEINV_3546,
      CLK => XLXI_5_counter_3_CLKINV_3547,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_counter_3_SRINV_3548,
      O => XLXI_5_counter(2)
    );
  XLXI_5_Mcount_counter_xor_2_11 : X_LUT4
    generic map(
      INIT => X"5AF0",
      LOC => "SLICE_X65Y54"
    )
    port map (
      ADR0 => XLXI_5_counter(0),
      ADR1 => VCC,
      ADR2 => XLXI_5_counter(2),
      ADR3 => XLXI_5_counter(1),
      O => XLXI_5_Result_2_1
    );
  XLXI_5_counter_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Result_3_1,
      O => XLXI_5_counter_3_DXMUX_3570
    );
  XLXI_5_counter_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Result_2_1,
      O => XLXI_5_counter_3_DYMUX_3557
    );
  XLXI_5_counter_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and0000_0,
      O => XLXI_5_counter_3_SRINV_3548
    );
  XLXI_5_counter_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_counter_3_CLKINV_3547
    );
  XLXI_5_counter_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and00001_0,
      O => XLXI_5_counter_3_CEINV_3546
    );
  XLXI_6_sendOut : X_FF
    generic map(
      LOC => "SLICE_X50Y42",
      INIT => '0'
    )
    port map (
      I => XLXI_6_sendOut_DYMUX_3195,
      CE => XLXI_6_sendOut_CEINV_3186,
      CLK => XLXI_6_sendOut_CLKINV_3187,
      SET => GND,
      RST => GND,
      O => XLXI_6_sendOut_1039
    );
  XLXI_6_sendOut_mux00001 : X_LUT4
    generic map(
      INIT => X"4CCC",
      LOC => "SLICE_X50Y42"
    )
    port map (
      ADR0 => XLXI_6_symbolCount_cmp_eq0000665_1072,
      ADR1 => XLXI_6_symbolCode_mux0001,
      ADR2 => XLXI_6_unitCount_cmp_eq0000,
      ADR3 => XLXI_6_symbolCount_cmp_eq0000632_1073,
      O => XLXI_6_sendOut_mux0000
    );
  XLXI_6_symbolCount_not00011_1 : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X50Y42"
    )
    port map (
      ADR0 => XLXI_6_sending_927,
      ADR1 => VCC,
      ADR2 => XLXI_6_unitCount_cmp_eq0000,
      ADR3 => VCC,
      O => XLXI_6_symbolCount_not00011_3206
    );
  XLXI_6_sendOut_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not00011_3206,
      O => XLXI_6_symbolCount_not00011_0
    );
  XLXI_6_sendOut_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sendOut_mux0000,
      O => XLXI_6_sendOut_DYMUX_3195
    );
  XLXI_6_sendOut_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_sendOut_CLKINV_3187
    );
  XLXI_6_sendOut_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sendOut_not0001,
      O => XLXI_6_sendOut_CEINV_3186
    );
  XLXI_6_symbolLen_2 : X_FF
    generic map(
      LOC => "SLICE_X54Y39",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolLen_3_DYMUX_3382,
      CE => XLXI_6_symbolLen_3_CEINV_3373,
      CLK => XLXI_6_symbolLen_3_CLKINV_3374,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolLen(2)
    );
  XLXI_6_symbolCode_mux0002_10_1 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X55Y32"
    )
    port map (
      ADR0 => XLXI_6_symbol(5),
      ADR1 => XLXI_6_symbol(7),
      ADR2 => XLXI_6_symbol(6),
      ADR3 => XLXI_6_rom0000(8),
      O => XLXI_6_symbolCode_mux0002(10)
    );
  XLXI_6_symbolCode_5 : X_FF
    generic map(
      LOC => "SLICE_X55Y32",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_5_DXMUX_3242,
      CE => XLXI_6_symbolCode_5_CEINV_3221,
      CLK => XLXI_6_symbolCode_5_CLKINV_3222,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(5)
    );
  XLXI_6_symbolCode_mux0002_9_1 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X55Y32"
    )
    port map (
      ADR0 => XLXI_6_symbol(5),
      ADR1 => XLXI_6_rom0000(9),
      ADR2 => XLXI_6_symbol(6),
      ADR3 => XLXI_6_symbol(7),
      O => XLXI_6_symbolCode_mux0002(9)
    );
  XLXI_6_symbolCode_4 : X_FF
    generic map(
      LOC => "SLICE_X55Y32",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_5_DYMUX_3230,
      CE => XLXI_6_symbolCode_5_CEINV_3221,
      CLK => XLXI_6_symbolCode_5_CLKINV_3222,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(4)
    );
  XLXI_6_symbolCode_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(9),
      O => XLXI_6_symbolCode_5_DXMUX_3242
    );
  XLXI_6_symbolCode_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X55Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(10),
      O => XLXI_6_symbolCode_5_DYMUX_3230
    );
  XLXI_6_symbolCode_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbolCode_5_CLKINV_3222
    );
  XLXI_6_symbolCode_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X55Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_IBUF_1048,
      O => XLXI_6_symbolCode_5_CEINV_3221
    );
  XLXI_5_counter_and000011 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X66Y52"
    )
    port map (
      ADR0 => XLXI_5_timeCnt(7),
      ADR1 => XLXI_5_timeCnt(8),
      ADR2 => XLXI_5_timeCnt(6),
      ADR3 => XLXI_5_counter_and000011_SW0_O,
      O => XLXI_5_N5
    );
  XLXI_5_counter_and000011_SW0 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X66Y52"
    )
    port map (
      ADR0 => XLXI_5_timeCnt(2),
      ADR1 => VCC,
      ADR2 => XLXI_5_timeCnt(1),
      ADR3 => XLXI_5_timeCnt(5),
      O => XLXI_5_counter_and000011_SW0_O_pack_1
    );
  XLXI_5_N5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_N5,
      O => XLXI_5_N5_0
    );
  XLXI_5_N5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and000011_SW0_O_pack_1,
      O => XLXI_5_counter_and000011_SW0_O
    );
  XLXI_5_counter_and00002 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X66Y53"
    )
    port map (
      ADR0 => XLXI_5_N5_0,
      ADR1 => N12_0,
      ADR2 => N10,
      ADR3 => XLXI_5_N3,
      O => XLXI_5_counter_and0000
    );
  XLXI_5_counter_and00001_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X66Y53"
    )
    port map (
      ADR0 => SawStart_IBUF_965,
      ADR1 => XLXI_5_timeCnt(4),
      ADR2 => XLXI_5_timeCnt(9),
      ADR3 => XLXI_5_timeCnt(3),
      O => N10_pack_1
    );
  XLXI_5_counter_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and0000,
      O => XLXI_5_counter_and0000_0
    );
  XLXI_5_counter_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => N10_pack_1,
      O => N10
    );
  XLXI_5_Mcount_counter_xor_5_11 : X_LUT4
    generic map(
      INIT => X"F03C",
      LOC => "SLICE_X64Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_5_counter(4),
      ADR2 => XLXI_5_counter(5),
      ADR3 => XLXI_5_N3,
      O => XLXI_5_Result_5_1
    );
  XLXI_5_Mcount_counter_xor_4_111 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X64Y54"
    )
    port map (
      ADR0 => XLXI_5_counter(3),
      ADR1 => XLXI_5_counter(0),
      ADR2 => XLXI_5_counter(2),
      ADR3 => XLXI_5_counter(1),
      O => XLXI_5_N3_pack_2
    );
  XLXI_5_counter_5 : X_SFF
    generic map(
      LOC => "SLICE_X64Y54",
      INIT => '0'
    )
    port map (
      I => XLXI_5_counter_5_DXMUX_3037,
      CE => XLXI_5_counter_5_CEINV_3019,
      CLK => XLXI_5_counter_5_CLKINV_3020,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_counter_5_SRINV_3021,
      O => XLXI_5_counter(5)
    );
  XLXI_5_counter_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_Result_5_1,
      O => XLXI_5_counter_5_DXMUX_3037
    );
  XLXI_5_counter_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_N3_pack_2,
      O => XLXI_5_N3
    );
  XLXI_5_counter_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and0000_0,
      O => XLXI_5_counter_5_SRINV_3021
    );
  XLXI_5_counter_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_5_counter_5_CLKINV_3020
    );
  XLXI_5_counter_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_counter_and00001_0,
      O => XLXI_5_counter_5_CEINV_3019
    );
  XLXI_6_symbolLen_mux0001_0_1 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X54Y39"
    )
    port map (
      ADR0 => XLXI_6_symbol(6),
      ADR1 => XLXI_6_rom0000(3),
      ADR2 => XLXI_6_symbol(7),
      ADR3 => XLXI_6_symbol(5),
      O => XLXI_6_symbolLen_mux0001(0)
    );
  DwrCmd_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD107"
    )
    port map (
      I => DwrCmd_3_O,
      O => DwrCmd(3)
    );
  XLXI_6_symbolLen_3 : X_FF
    generic map(
      LOC => "SLICE_X54Y39",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolLen_3_DXMUX_3394,
      CE => XLXI_6_symbolLen_3_CEINV_3373,
      CLK => XLXI_6_symbolLen_3_CLKINV_3374,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolLen(3)
    );
  DwrData_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD95"
    )
    port map (
      I => DwrData_9_O,
      O => DwrData(9)
    );
  XLXI_6_symbolCode_2 : X_FF
    generic map(
      LOC => "SLICE_X54Y30",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_3_DYMUX_3159,
      CE => XLXI_6_symbolCode_3_CEINV_3150,
      CLK => XLXI_6_symbolCode_3_CLKINV_3151,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(2)
    );
  XLXI_6_symbolCode_mux0002_11_1 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X54Y30"
    )
    port map (
      ADR0 => XLXI_6_rom0000(7),
      ADR1 => XLXI_6_symbol(5),
      ADR2 => XLXI_6_symbol(7),
      ADR3 => XLXI_6_symbol(6),
      O => XLXI_6_symbolCode_mux0002(11)
    );
  XLXI_6_symbolCode_3 : X_FF
    generic map(
      LOC => "SLICE_X54Y30",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_3_DXMUX_3171,
      CE => XLXI_6_symbolCode_3_CEINV_3150,
      CLK => XLXI_6_symbolCode_3_CLKINV_3151,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(3)
    );
  XLXI_6_symbolCode_mux0002_12_1 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X54Y30"
    )
    port map (
      ADR0 => XLXI_6_rom0000(6),
      ADR1 => XLXI_6_symbol(5),
      ADR2 => XLXI_6_symbol(7),
      ADR3 => XLXI_6_symbol(6),
      O => XLXI_6_symbolCode_mux0002(12)
    );
  XLXI_6_symbolCode_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(11),
      O => XLXI_6_symbolCode_3_DXMUX_3171
    );
  XLXI_6_symbolCode_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(12),
      O => XLXI_6_symbolCode_3_DYMUX_3159
    );
  XLXI_6_symbolCode_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbolCode_3_CLKINV_3151
    );
  XLXI_6_symbolCode_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_IBUF_1048,
      O => XLXI_6_symbolCode_3_CEINV_3150
    );
  XLXI_6_symbolCode_10 : X_FF
    generic map(
      LOC => "SLICE_X55Y33",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_11_DYMUX_3420,
      CE => XLXI_6_symbolCode_11_CEINV_3411,
      CLK => XLXI_6_symbolCode_11_CLKINV_3412,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(10)
    );
  XLXI_6_Mrom_rom0000 : X_RAMB16_S36
    generic map(
      INIT_00 => X"0007740A0005740A000400020007500800075D0C0007540A0005C00600000000",
      INIT_01 => X"0007770C00074006000770080005D40A00075C0A0005DDCE0005000400055008",
      INIT_02 => X"0005DC0A00055C0A0005700800070004000540060005D008000775CE0005DD0C",
      INIT_03 => X"00000000000000000000000000000000000000000007750C00075DCE0007570C",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      SRVAL => X"000000000",
      INIT => X"000000000",
      WRITE_MODE => "WRITE_FIRST",
      LOC => "RAMB16_X1Y3"
    )
    port map (
      CLK => Clk_50MHz_BUFGP,
      EN => CharStart_IBUF_1048,
      SSR => '0',
      WE => '0',
      ADDR(8) => '0',
      ADDR(7) => '0',
      ADDR(6) => '0',
      ADDR(5) => '0',
      ADDR(4) => NlwBufferSignal_XLXI_6_Mrom_rom0000_ADDR(4),
      ADDR(3) => NlwBufferSignal_XLXI_6_Mrom_rom0000_ADDR(3),
      ADDR(2) => NlwBufferSignal_XLXI_6_Mrom_rom0000_ADDR(2),
      ADDR(1) => NlwBufferSignal_XLXI_6_Mrom_rom0000_ADDR(1),
      ADDR(0) => NlwBufferSignal_XLXI_6_Mrom_rom0000_ADDR(0),
      DI(31) => XLXI_6_Mrom_rom0000_DIA31,
      DI(30) => XLXI_6_Mrom_rom0000_DIA30,
      DI(29) => XLXI_6_Mrom_rom0000_DIA29,
      DI(28) => XLXI_6_Mrom_rom0000_DIA28,
      DI(27) => XLXI_6_Mrom_rom0000_DIA27,
      DI(26) => XLXI_6_Mrom_rom0000_DIA26,
      DI(25) => XLXI_6_Mrom_rom0000_DIA25,
      DI(24) => XLXI_6_Mrom_rom0000_DIA24,
      DI(23) => XLXI_6_Mrom_rom0000_DIA23,
      DI(22) => XLXI_6_Mrom_rom0000_DIA22,
      DI(21) => XLXI_6_Mrom_rom0000_DIA21,
      DI(20) => XLXI_6_Mrom_rom0000_DIA20,
      DI(19) => XLXI_6_Mrom_rom0000_DIA19,
      DI(18) => XLXI_6_Mrom_rom0000_DIA18,
      DI(17) => XLXI_6_Mrom_rom0000_DIA17,
      DI(16) => XLXI_6_Mrom_rom0000_DIA16,
      DI(15) => XLXI_6_Mrom_rom0000_DIA15,
      DI(14) => XLXI_6_Mrom_rom0000_DIA14,
      DI(13) => XLXI_6_Mrom_rom0000_DIA13,
      DI(12) => XLXI_6_Mrom_rom0000_DIA12,
      DI(11) => XLXI_6_Mrom_rom0000_DIA11,
      DI(10) => XLXI_6_Mrom_rom0000_DIA10,
      DI(9) => XLXI_6_Mrom_rom0000_DIA9,
      DI(8) => XLXI_6_Mrom_rom0000_DIA8,
      DI(7) => XLXI_6_Mrom_rom0000_DIA7,
      DI(6) => XLXI_6_Mrom_rom0000_DIA6,
      DI(5) => XLXI_6_Mrom_rom0000_DIA5,
      DI(4) => XLXI_6_Mrom_rom0000_DIA4,
      DI(3) => XLXI_6_Mrom_rom0000_DIA3,
      DI(2) => XLXI_6_Mrom_rom0000_DIA2,
      DI(1) => XLXI_6_Mrom_rom0000_DIA1,
      DI(0) => XLXI_6_Mrom_rom0000_DIA0,
      DIP(3) => XLXI_6_Mrom_rom0000_DIPA3,
      DIP(2) => XLXI_6_Mrom_rom0000_DIPA2,
      DIP(1) => XLXI_6_Mrom_rom0000_DIPA1,
      DIP(0) => XLXI_6_Mrom_rom0000_DIPA0,
      DO(31) => XLXI_6_Mrom_rom0000_DOA31,
      DO(30) => XLXI_6_Mrom_rom0000_DOA30,
      DO(29) => XLXI_6_Mrom_rom0000_DOA29,
      DO(28) => XLXI_6_Mrom_rom0000_DOA28,
      DO(27) => XLXI_6_Mrom_rom0000_DOA27,
      DO(26) => XLXI_6_Mrom_rom0000_DOA26,
      DO(25) => XLXI_6_Mrom_rom0000_DOA25,
      DO(24) => XLXI_6_Mrom_rom0000_DOA24,
      DO(23) => XLXI_6_Mrom_rom0000_DOA23,
      DO(22) => XLXI_6_Mrom_rom0000_DOA22,
      DO(21) => XLXI_6_Mrom_rom0000_DOA21,
      DO(20) => XLXI_6_Mrom_rom0000_DOA20,
      DO(19) => XLXI_6_Mrom_rom0000_DOA19,
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
      DOP(3) => XLXI_6_Mrom_rom0000_DOPA3,
      DOP(2) => XLXI_6_Mrom_rom0000_DOPA2,
      DOP(1) => XLXI_6_Mrom_rom0000_DOPA1,
      DOP(0) => XLXI_6_Mrom_rom0000_DOPA0
    );
  XLXI_6_symbolCode_1 : X_FF
    generic map(
      LOC => "SLICE_X54Y31",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_1_DXMUX_3133,
      CE => XLXI_6_symbolCode_1_CEINV_3112,
      CLK => XLXI_6_symbolCode_1_CLKINV_3113,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(1)
    );
  XLXI_6_symbolCode_mux0002_14_1 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X54Y31"
    )
    port map (
      ADR0 => XLXI_6_rom0000(4),
      ADR1 => XLXI_6_symbol(5),
      ADR2 => XLXI_6_symbol(7),
      ADR3 => XLXI_6_symbol(6),
      O => XLXI_6_symbolCode_mux0002(14)
    );
  XLXI_6_symbolCode_mux0002_13_1 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X54Y31"
    )
    port map (
      ADR0 => XLXI_6_symbol(5),
      ADR1 => XLXI_6_symbol(7),
      ADR2 => XLXI_6_rom0000(5),
      ADR3 => XLXI_6_symbol(6),
      O => XLXI_6_symbolCode_mux0002(13)
    );
  XLXI_6_symbolCode_0 : X_FF
    generic map(
      LOC => "SLICE_X54Y31",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_1_DYMUX_3121,
      CE => XLXI_6_symbolCode_1_CEINV_3112,
      CLK => XLXI_6_symbolCode_1_CLKINV_3113,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(0)
    );
  XLXI_6_symbolCode_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(13),
      O => XLXI_6_symbolCode_1_DXMUX_3133
    );
  XLXI_6_symbolCode_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(14),
      O => XLXI_6_symbolCode_1_DYMUX_3121
    );
  XLXI_6_symbolCode_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbolCode_1_CLKINV_3113
    );
  XLXI_6_symbolCode_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_IBUF_1048,
      O => XLXI_6_symbolCode_1_CEINV_3112
    );
  XLXI_6_symbolCount_cmp_eq0000666 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X52Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_symbolCount_cmp_eq0000665_1072,
      ADR2 => VCC,
      ADR3 => XLXI_6_symbolCount_cmp_eq0000632_1073,
      O => XLXI_6_symbolCount_cmp_eq0000
    );
  XLXI_6_symbolCount_cmp_eq0000632 : X_LUT4
    generic map(
      INIT => X"0660",
      LOC => "SLICE_X52Y40"
    )
    port map (
      ADR0 => XLXI_6_symbolCount(1),
      ADR1 => XLXI_6_symbolLen(1),
      ADR2 => XLXI_6_symbolLen(0),
      ADR3 => XLXI_6_symbolCount(0),
      O => XLXI_6_symbolCount_cmp_eq0000632_pack_1
    );
  XLXI_6_symbolCount_cmp_eq0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_cmp_eq0000,
      O => XLXI_6_symbolCount_cmp_eq0000_0
    );
  XLXI_6_symbolCount_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X52Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_cmp_eq0000632_pack_1,
      O => XLXI_6_symbolCount_cmp_eq0000632_1073
    );
  XLXI_6_symbolCount_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y40",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCount_0_DXMUX_3002,
      CE => XLXI_6_symbolCount_0_CEINV_2985,
      CLK => XLXI_6_symbolCount_0_CLKINV_2986,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCount(0)
    );
  XLXI_6_Mcount_symbolCount_xor_0_11 : X_LUT4
    generic map(
      INIT => X"1155",
      LOC => "SLICE_X50Y40"
    )
    port map (
      ADR0 => XLXI_6_symbolCount(0),
      ADR1 => XLXI_6_symbolCount_cmp_eq0000632_1073,
      ADR2 => VCC,
      ADR3 => XLXI_6_symbolCount_cmp_eq0000665_1072,
      O => XLXI_6_Mcount_symbolCount
    );
  XLXI_6_symbolCount_cmp_eq0000665 : X_LUT4
    generic map(
      INIT => X"0660",
      LOC => "SLICE_X50Y40"
    )
    port map (
      ADR0 => XLXI_6_symbolCount(3),
      ADR1 => XLXI_6_symbolLen(3),
      ADR2 => XLXI_6_symbolCount(2),
      ADR3 => XLXI_6_symbolLen(2),
      O => XLXI_6_symbolCount_cmp_eq0000665_pack_2
    );
  XLXI_6_symbolCount_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X50Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_symbolCount,
      O => XLXI_6_symbolCount_0_DXMUX_3002
    );
  XLXI_6_symbolCount_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X50Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_cmp_eq0000665_pack_2,
      O => XLXI_6_symbolCount_cmp_eq0000665_1072
    );
  XLXI_6_symbolCount_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbolCount_0_CLKINV_2986
    );
  XLXI_6_symbolCount_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X50Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not00011_0,
      O => XLXI_6_symbolCount_0_CEINV_2985
    );
  XLXI_6_Mcount_symbolCount_xor_3_1 : X_LUT4
    generic map(
      INIT => X"BE3C",
      LOC => "SLICE_X53Y40"
    )
    port map (
      ADR0 => XLXI_6_symbolCount_cmp_eq0000632_1073,
      ADR1 => XLXI_6_symbolCount(3),
      ADR2 => XLXI_6_Mcount_symbolCount_xor_3_1_SW1_O,
      ADR3 => XLXI_6_symbolCount_cmp_eq0000665_1072,
      O => XLXI_6_Mcount_symbolCount3
    );
  XLXI_6_symbolCount_3 : X_FF
    generic map(
      LOC => "SLICE_X53Y40",
      INIT => '1'
    )
    port map (
      I => XLXI_6_symbolCount_3_DXMUX_3095,
      CE => XLXI_6_symbolCount_3_CEINV_3078,
      CLK => XLXI_6_symbolCount_3_CLKINV_3079,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCount(3)
    );
  XLXI_6_Mcount_symbolCount_xor_3_1_SW1 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X53Y40"
    )
    port map (
      ADR0 => XLXI_6_symbolCount(2),
      ADR1 => XLXI_6_symbolCount(0),
      ADR2 => VCC,
      ADR3 => XLXI_6_symbolCount(1),
      O => XLXI_6_Mcount_symbolCount_xor_3_1_SW1_O_pack_2
    );
  XLXI_6_symbolCount_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_symbolCount3,
      O => XLXI_6_symbolCount_3_DXMUX_3095
    );
  XLXI_6_symbolCount_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_Mcount_symbolCount_xor_3_1_SW1_O_pack_2,
      O => XLXI_6_Mcount_symbolCount_xor_3_1_SW1_O
    );
  XLXI_6_symbolCount_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbolCount_3_CLKINV_3079
    );
  XLXI_6_symbolCount_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCount_not00011_0,
      O => XLXI_6_symbolCount_3_CEINV_3078
    );
  Clk_50MHz_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => Clk_50MHz_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => Clk_50MHz_BUFGP_BUFG_S_INVNOT,
      O => Clk_50MHz_BUFGP
    );
  Clk_50MHz_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => Clk_50MHz_BUFGP_BUFG_S_INVNOT
    );
  Clk_50MHz_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_INBUF,
      O => Clk_50MHz_BUFGP_BUFG_I0_INV
    );
  SawStart_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawStart_INBUF,
      O => SawStart_IBUF_965
    );
  SawStart_IBUF : X_BUF
    generic map(
      LOC => "PAD85",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawStart,
      O => SawStart_INBUF
    );
  XLXI_6_symbolCode_6 : X_FF
    generic map(
      LOC => "SLICE_X54Y33",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_7_DYMUX_3268,
      CE => XLXI_6_symbolCode_7_CEINV_3259,
      CLK => XLXI_6_symbolCode_7_CLKINV_3260,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(6)
    );
  XLXI_6_symbolCode_7 : X_FF
    generic map(
      LOC => "SLICE_X54Y33",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_7_DXMUX_3280,
      CE => XLXI_6_symbolCode_7_CEINV_3259,
      CLK => XLXI_6_symbolCode_7_CLKINV_3260,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(7)
    );
  XLXI_6_symbolCode_mux0002_7_1 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X54Y33"
    )
    port map (
      ADR0 => XLXI_6_symbol(7),
      ADR1 => XLXI_6_rom0000(11),
      ADR2 => XLXI_6_symbol(6),
      ADR3 => XLXI_6_symbol(5),
      O => XLXI_6_symbolCode_mux0002(7)
    );
  XLXI_6_symbolCode_mux0002_8_1 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X54Y33"
    )
    port map (
      ADR0 => XLXI_6_rom0000(10),
      ADR1 => XLXI_6_symbol(6),
      ADR2 => XLXI_6_symbol(7),
      ADR3 => XLXI_6_symbol(5),
      O => XLXI_6_symbolCode_mux0002(8)
    );
  XLXI_6_symbolCode_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(7),
      O => XLXI_6_symbolCode_7_DXMUX_3280
    );
  XLXI_6_symbolCode_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(8),
      O => XLXI_6_symbolCode_7_DYMUX_3268
    );
  XLXI_6_symbolCode_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbolCode_7_CLKINV_3260
    );
  XLXI_6_symbolCode_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_IBUF_1048,
      O => XLXI_6_symbolCode_7_CEINV_3259
    );
  XLXI_6_symbolCode_9 : X_FF
    generic map(
      LOC => "SLICE_X54Y32",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_9_DXMUX_3318,
      CE => XLXI_6_symbolCode_9_CEINV_3297,
      CLK => XLXI_6_symbolCode_9_CLKINV_3298,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(9)
    );
  XLXI_6_symbolCode_8 : X_FF
    generic map(
      LOC => "SLICE_X54Y32",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolCode_9_DYMUX_3306,
      CE => XLXI_6_symbolCode_9_CEINV_3297,
      CLK => XLXI_6_symbolCode_9_CLKINV_3298,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolCode(8)
    );
  XLXI_6_symbolCode_mux0002_5_1 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X54Y32"
    )
    port map (
      ADR0 => XLXI_6_symbol(6),
      ADR1 => XLXI_6_rom0000(13),
      ADR2 => XLXI_6_symbol(7),
      ADR3 => XLXI_6_symbol(5),
      O => XLXI_6_symbolCode_mux0002(5)
    );
  XLXI_6_symbolCode_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(5),
      O => XLXI_6_symbolCode_9_DXMUX_3318
    );
  XLXI_6_symbolCode_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolCode_mux0002(6),
      O => XLXI_6_symbolCode_9_DYMUX_3306
    );
  XLXI_6_symbolCode_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbolCode_9_CLKINV_3298
    );
  XLXI_6_symbolCode_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_IBUF_1048,
      O => XLXI_6_symbolCode_9_CEINV_3297
    );
  XLXI_6_symbolCode_mux0002_3_1 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X55Y33"
    )
    port map (
      ADR0 => XLXI_6_rom0000(15),
      ADR1 => XLXI_6_symbol(5),
      ADR2 => XLXI_6_symbol(6),
      ADR3 => XLXI_6_symbol(7),
      O => XLXI_6_symbolCode_mux0002(3)
    );
  XLXI_6_symbolCode_mux0002_6_1 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X54Y32"
    )
    port map (
      ADR0 => XLXI_6_rom0000(12),
      ADR1 => XLXI_6_symbol(6),
      ADR2 => XLXI_6_symbol(7),
      ADR3 => XLXI_6_symbol(5),
      O => XLXI_6_symbolCode_mux0002(6)
    );
  XLXI_6_symbolLen_mux0001_3_1 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X54Y36"
    )
    port map (
      ADR0 => XLXI_6_symbol(7),
      ADR1 => XLXI_6_symbol(6),
      ADR2 => XLXI_6_rom0000(0),
      ADR3 => XLXI_6_symbol(5),
      O => XLXI_6_symbolLen_mux0001(3)
    );
  XLXI_6_symbolLen_0 : X_FF
    generic map(
      LOC => "SLICE_X54Y36",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolLen_1_DYMUX_3344,
      CE => XLXI_6_symbolLen_1_CEINV_3335,
      CLK => XLXI_6_symbolLen_1_CLKINV_3336,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolLen(0)
    );
  XLXI_6_symbolLen_1 : X_FF
    generic map(
      LOC => "SLICE_X54Y36",
      INIT => '0'
    )
    port map (
      I => XLXI_6_symbolLen_1_DXMUX_3356,
      CE => XLXI_6_symbolLen_1_CEINV_3335,
      CLK => XLXI_6_symbolLen_1_CLKINV_3336,
      SET => GND,
      RST => GND,
      O => XLXI_6_symbolLen(1)
    );
  XLXI_6_symbolLen_mux0001_2_1 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X54Y36"
    )
    port map (
      ADR0 => XLXI_6_rom0000(1),
      ADR1 => XLXI_6_symbol(6),
      ADR2 => XLXI_6_symbol(7),
      ADR3 => XLXI_6_symbol(5),
      O => XLXI_6_symbolLen_mux0001(2)
    );
  XLXI_6_symbolLen_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolLen_mux0001(2),
      O => XLXI_6_symbolLen_1_DXMUX_3356
    );
  XLXI_6_symbolLen_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X54Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_symbolLen_mux0001(3),
      O => XLXI_6_symbolLen_1_DYMUX_3344
    );
  XLXI_6_symbolLen_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_50MHz_BUFGP,
      O => XLXI_6_symbolLen_1_CLKINV_3336
    );
  XLXI_6_symbolLen_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X54Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharStart_IBUF_1048,
      O => XLXI_6_symbolLen_1_CEINV_3335
    );
  CharIn_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn_2_INBUF,
      O => CharIn_2_IBUF_1041
    );
  CharIn_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn_4_INBUF,
      O => CharIn_4_IBUF_1044
    );
  CharIn_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn_3_INBUF,
      O => CharIn_3_IBUF_1043
    );
  CharIn_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn_1_INBUF,
      O => CharIn_1_IBUF_1040
    );
  XLXI_6_unitCount_2 : X_SFF
    generic map(
      LOC => "SLICE_X44Y50",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_2_DXMUX_1198,
      CE => XLXI_6_unitCount_2_CEINV_1157,
      CLK => XLXI_6_unitCount_2_CLKINV_1158,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_2_SRINV_1159,
      O => XLXI_6_unitCount(2)
    );
  XLXI_6_Mcount_unitCount_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X44Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_unitCount(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_6_Mcount_unitCount_lut(0)
    );
  XLXI_6_unitCount_1 : X_SFF
    generic map(
      LOC => "SLICE_X44Y49",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_0_DYMUX_1121,
      CE => XLXI_6_unitCount_0_CEINV_1103,
      CLK => XLXI_6_unitCount_0_CLKINV_1104,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_0_SRINV_1105,
      O => XLXI_6_unitCount(1)
    );
  XLXI_6_unitCount_0 : X_SFF
    generic map(
      LOC => "SLICE_X44Y49",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_0_DXMUX_1142,
      CE => XLXI_6_unitCount_0_CEINV_1103,
      CLK => XLXI_6_unitCount_0_CLKINV_1104,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_0_SRINV_1105,
      O => XLXI_6_unitCount(0)
    );
  XLXI_6_unitCount_3 : X_SFF
    generic map(
      LOC => "SLICE_X44Y50",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_2_DYMUX_1180,
      CE => XLXI_6_unitCount_2_CEINV_1157,
      CLK => XLXI_6_unitCount_2_CLKINV_1158,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_2_SRINV_1159,
      O => XLXI_6_unitCount(3)
    );
  XLXI_6_unitCount_7 : X_SFF
    generic map(
      LOC => "SLICE_X44Y52",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_6_DYMUX_1292,
      CE => XLXI_6_unitCount_6_CEINV_1269,
      CLK => XLXI_6_unitCount_6_CLKINV_1270,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_6_SRINV_1271,
      O => XLXI_6_unitCount(7)
    );
  XLXI_6_unitCount_4 : X_SFF
    generic map(
      LOC => "SLICE_X44Y51",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_4_DXMUX_1254,
      CE => XLXI_6_unitCount_4_CEINV_1213,
      CLK => XLXI_6_unitCount_4_CLKINV_1214,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_4_SRINV_1215,
      O => XLXI_6_unitCount(4)
    );
  XLXI_6_unitCount_5 : X_SFF
    generic map(
      LOC => "SLICE_X44Y51",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_4_DYMUX_1236,
      CE => XLXI_6_unitCount_4_CEINV_1213,
      CLK => XLXI_6_unitCount_4_CLKINV_1214,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_4_SRINV_1215,
      O => XLXI_6_unitCount(5)
    );
  XLXI_6_unitCount_9 : X_SFF
    generic map(
      LOC => "SLICE_X44Y53",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_8_DYMUX_1348,
      CE => XLXI_6_unitCount_8_CEINV_1325,
      CLK => XLXI_6_unitCount_8_CLKINV_1326,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_8_SRINV_1327,
      O => XLXI_6_unitCount(9)
    );
  XLXI_6_unitCount_6 : X_SFF
    generic map(
      LOC => "SLICE_X44Y52",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_6_DXMUX_1310,
      CE => XLXI_6_unitCount_6_CEINV_1269,
      CLK => XLXI_6_unitCount_6_CLKINV_1270,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_6_SRINV_1271,
      O => XLXI_6_unitCount(6)
    );
  XLXI_6_unitCount_8 : X_SFF
    generic map(
      LOC => "SLICE_X44Y53",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_8_DXMUX_1366,
      CE => XLXI_6_unitCount_8_CEINV_1325,
      CLK => XLXI_6_unitCount_8_CLKINV_1326,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_8_SRINV_1327,
      O => XLXI_6_unitCount(8)
    );
  XLXI_6_unitCount_13 : X_SFF
    generic map(
      LOC => "SLICE_X44Y55",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_12_DYMUX_1460,
      CE => XLXI_6_unitCount_12_CEINV_1437,
      CLK => XLXI_6_unitCount_12_CLKINV_1438,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_12_SRINV_1439,
      O => XLXI_6_unitCount(13)
    );
  XLXI_6_unitCount_11 : X_SFF
    generic map(
      LOC => "SLICE_X44Y54",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_10_DYMUX_1404,
      CE => XLXI_6_unitCount_10_CEINV_1381,
      CLK => XLXI_6_unitCount_10_CLKINV_1382,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_10_SRINV_1383,
      O => XLXI_6_unitCount(11)
    );
  XLXI_6_unitCount_10 : X_SFF
    generic map(
      LOC => "SLICE_X44Y54",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_10_DXMUX_1422,
      CE => XLXI_6_unitCount_10_CEINV_1381,
      CLK => XLXI_6_unitCount_10_CLKINV_1382,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_10_SRINV_1383,
      O => XLXI_6_unitCount(10)
    );
  XLXI_6_unitCount_15 : X_SFF
    generic map(
      LOC => "SLICE_X44Y56",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_14_DYMUX_1516,
      CE => XLXI_6_unitCount_14_CEINV_1493,
      CLK => XLXI_6_unitCount_14_CLKINV_1494,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_14_SRINV_1495,
      O => XLXI_6_unitCount(15)
    );
  XLXI_6_unitCount_17 : X_SFF
    generic map(
      LOC => "SLICE_X44Y57",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_16_DYMUX_1572,
      CE => XLXI_6_unitCount_16_CEINV_1549,
      CLK => XLXI_6_unitCount_16_CLKINV_1550,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_16_SRINV_1551,
      O => XLXI_6_unitCount(17)
    );
  XLXI_6_unitCount_14 : X_SFF
    generic map(
      LOC => "SLICE_X44Y56",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_14_DXMUX_1534,
      CE => XLXI_6_unitCount_14_CEINV_1493,
      CLK => XLXI_6_unitCount_14_CLKINV_1494,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_14_SRINV_1495,
      O => XLXI_6_unitCount(14)
    );
  XLXI_6_unitCount_16 : X_SFF
    generic map(
      LOC => "SLICE_X44Y57",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_16_DXMUX_1590,
      CE => XLXI_6_unitCount_16_CEINV_1549,
      CLK => XLXI_6_unitCount_16_CLKINV_1550,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_16_SRINV_1551,
      O => XLXI_6_unitCount(16)
    );
  XLXI_6_unitCount_12 : X_SFF
    generic map(
      LOC => "SLICE_X44Y55",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_12_DXMUX_1478,
      CE => XLXI_6_unitCount_12_CEINV_1437,
      CLK => XLXI_6_unitCount_12_CLKINV_1438,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_12_SRINV_1439,
      O => XLXI_6_unitCount(12)
    );
  XLXI_6_unitCount_18 : X_SFF
    generic map(
      LOC => "SLICE_X44Y58",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_18_DXMUX_1646,
      CE => XLXI_6_unitCount_18_CEINV_1605,
      CLK => XLXI_6_unitCount_18_CLKINV_1606,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_18_SRINV_1607,
      O => XLXI_6_unitCount(18)
    );
  XLXI_6_unitCount_21 : X_SFF
    generic map(
      LOC => "SLICE_X44Y59",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_20_DYMUX_1684,
      CE => XLXI_6_unitCount_20_CEINV_1661,
      CLK => XLXI_6_unitCount_20_CLKINV_1662,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_20_SRINV_1663,
      O => XLXI_6_unitCount(21)
    );
  XLXI_6_unitCount_23_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X44Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_6_unitCount(23),
      O => XLXI_6_unitCount_23_rt_1726
    );
  XLXI_6_unitCount_19 : X_SFF
    generic map(
      LOC => "SLICE_X44Y58",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_18_DYMUX_1628,
      CE => XLXI_6_unitCount_18_CEINV_1605,
      CLK => XLXI_6_unitCount_18_CLKINV_1606,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_18_SRINV_1607,
      O => XLXI_6_unitCount(19)
    );
  XLXI_6_unitCount_23 : X_SFF
    generic map(
      LOC => "SLICE_X44Y60",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_22_DYMUX_1731,
      CE => XLXI_6_unitCount_22_CEINV_1716,
      CLK => XLXI_6_unitCount_22_CLKINV_1717,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_22_SRINV_1718,
      O => XLXI_6_unitCount(23)
    );
  XLXI_6_unitCount_20 : X_SFF
    generic map(
      LOC => "SLICE_X44Y59",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_20_DXMUX_1702,
      CE => XLXI_6_unitCount_20_CEINV_1661,
      CLK => XLXI_6_unitCount_20_CLKINV_1662,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_20_SRINV_1663,
      O => XLXI_6_unitCount(20)
    );
  XLXI_6_unitCount_22 : X_SFF
    generic map(
      LOC => "SLICE_X44Y60",
      INIT => '0'
    )
    port map (
      I => XLXI_6_unitCount_22_DXMUX_1751,
      CE => XLXI_6_unitCount_22_CEINV_1716,
      CLK => XLXI_6_unitCount_22_CLKINV_1717,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_6_unitCount_22_SRINV_1718,
      O => XLXI_6_unitCount(22)
    );
  XLXI_5_timeCnt_3 : X_SFF
    generic map(
      LOC => "SLICE_X67Y51",
      INIT => '0'
    )
    port map (
      I => XLXI_5_timeCnt_2_DYMUX_1843,
      CE => XLXI_5_timeCnt_2_CEINV_1820,
      CLK => XLXI_5_timeCnt_2_CLKINV_1821,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_timeCnt_2_SRINV_1822,
      O => XLXI_5_timeCnt(3)
    );
  XLXI_5_Mcount_timeCnt_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X67Y50"
    )
    port map (
      ADR0 => XLXI_5_timeCnt(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_5_Mcount_timeCnt_lut(0)
    );
  XLXI_5_timeCnt_0 : X_SFF
    generic map(
      LOC => "SLICE_X67Y50",
      INIT => '0'
    )
    port map (
      I => XLXI_5_timeCnt_0_DXMUX_1805,
      CE => XLXI_5_timeCnt_0_CEINV_1766,
      CLK => XLXI_5_timeCnt_0_CLKINV_1767,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_timeCnt_0_SRINV_1768,
      O => XLXI_5_timeCnt(0)
    );
  XLXI_5_timeCnt_1 : X_SFF
    generic map(
      LOC => "SLICE_X67Y50",
      INIT => '0'
    )
    port map (
      I => XLXI_5_timeCnt_0_DYMUX_1784,
      CE => XLXI_5_timeCnt_0_CEINV_1766,
      CLK => XLXI_5_timeCnt_0_CLKINV_1767,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_timeCnt_0_SRINV_1768,
      O => XLXI_5_timeCnt(1)
    );
  XLXI_5_timeCnt_4 : X_SFF
    generic map(
      LOC => "SLICE_X67Y52",
      INIT => '0'
    )
    port map (
      I => XLXI_5_timeCnt_4_DXMUX_1917,
      CE => XLXI_5_timeCnt_4_CEINV_1876,
      CLK => XLXI_5_timeCnt_4_CLKINV_1877,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_timeCnt_4_SRINV_1878,
      O => XLXI_5_timeCnt(4)
    );
  XLXI_5_timeCnt_7 : X_SFF
    generic map(
      LOC => "SLICE_X67Y53",
      INIT => '0'
    )
    port map (
      I => XLXI_5_timeCnt_6_DYMUX_1955,
      CE => XLXI_5_timeCnt_6_CEINV_1932,
      CLK => XLXI_5_timeCnt_6_CLKINV_1933,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_timeCnt_6_SRINV_1934,
      O => XLXI_5_timeCnt(7)
    );
  XLXI_5_timeCnt_2 : X_SFF
    generic map(
      LOC => "SLICE_X67Y51",
      INIT => '0'
    )
    port map (
      I => XLXI_5_timeCnt_2_DXMUX_1861,
      CE => XLXI_5_timeCnt_2_CEINV_1820,
      CLK => XLXI_5_timeCnt_2_CLKINV_1821,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_timeCnt_2_SRINV_1822,
      O => XLXI_5_timeCnt(2)
    );
  XLXI_5_timeCnt_6 : X_SFF
    generic map(
      LOC => "SLICE_X67Y53",
      INIT => '0'
    )
    port map (
      I => XLXI_5_timeCnt_6_DXMUX_1973,
      CE => XLXI_5_timeCnt_6_CEINV_1932,
      CLK => XLXI_5_timeCnt_6_CLKINV_1933,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_timeCnt_6_SRINV_1934,
      O => XLXI_5_timeCnt(6)
    );
  XLXI_5_timeCnt_5 : X_SFF
    generic map(
      LOC => "SLICE_X67Y52",
      INIT => '0'
    )
    port map (
      I => XLXI_5_timeCnt_4_DYMUX_1899,
      CE => XLXI_5_timeCnt_4_CEINV_1876,
      CLK => XLXI_5_timeCnt_4_CLKINV_1877,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_timeCnt_4_SRINV_1878,
      O => XLXI_5_timeCnt(5)
    );
  XLXI_5_timeCnt_9 : X_SFF
    generic map(
      LOC => "SLICE_X67Y54",
      INIT => '0'
    )
    port map (
      I => XLXI_5_timeCnt_8_DYMUX_2011,
      CE => XLXI_5_timeCnt_8_CEINV_1988,
      CLK => XLXI_5_timeCnt_8_CLKINV_1989,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_timeCnt_8_SRINV_1990,
      O => XLXI_5_timeCnt(9)
    );
  XLXI_5_timeCnt_10_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X67Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_5_timeCnt(10),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_5_timeCnt_10_rt_2051
    );
  XLXI_5_timeCnt_10 : X_SFF
    generic map(
      LOC => "SLICE_X67Y55",
      INIT => '0'
    )
    port map (
      I => XLXI_5_timeCnt_10_DXMUX_2056,
      CE => XLXI_5_timeCnt_10_CEINV_2041,
      CLK => XLXI_5_timeCnt_10_CLKINV_2042,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_timeCnt_10_SRINV_2043,
      O => XLXI_5_timeCnt(10)
    );
  XLXI_5_x_3 : X_SFF
    generic map(
      LOC => "SLICE_X67Y28",
      INIT => '0'
    )
    port map (
      I => XLXI_5_x_2_DYMUX_2089,
      CE => XLXI_5_x_2_CEINV_2071,
      CLK => XLXI_5_x_2_CLKINV_2072,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_x_2_SRINV_2073,
      O => XLXI_5_x(3)
    );
  XLXI_5_Maccum_x_lut_2_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X67Y28"
    )
    port map (
      ADR0 => XLXI_5_x(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_5_Maccum_x_lut_2_Q
    );
  XLXI_5_x_2 : X_SFF
    generic map(
      LOC => "SLICE_X67Y28",
      INIT => '0'
    )
    port map (
      I => XLXI_5_x_2_DXMUX_2110,
      CE => XLXI_5_x_2_CEINV_2071,
      CLK => XLXI_5_x_2_CLKINV_2072,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_x_2_SRINV_2073,
      O => XLXI_5_x(2)
    );
  XLXI_5_timeCnt_8 : X_SFF
    generic map(
      LOC => "SLICE_X67Y54",
      INIT => '0'
    )
    port map (
      I => XLXI_5_timeCnt_8_DXMUX_2029,
      CE => XLXI_5_timeCnt_8_CEINV_1988,
      CLK => XLXI_5_timeCnt_8_CLKINV_1989,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_timeCnt_8_SRINV_1990,
      O => XLXI_5_timeCnt(8)
    );
  XLXI_5_Maccum_x_lut_7_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X67Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_5_x(7),
      O => XLXI_5_Maccum_x_lut_7_Q
    );
  XLXI_5_x_7 : X_SFF
    generic map(
      LOC => "SLICE_X67Y30",
      INIT => '0'
    )
    port map (
      I => XLXI_5_x_6_DYMUX_2204,
      CE => XLXI_5_x_6_CEINV_2181,
      CLK => XLXI_5_x_6_CLKINV_2182,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_x_6_SRINV_2183,
      O => XLXI_5_x(7)
    );
  XLXI_5_x_6 : X_SFF
    generic map(
      LOC => "SLICE_X67Y30",
      INIT => '0'
    )
    port map (
      I => XLXI_5_x_6_DXMUX_2223,
      CE => XLXI_5_x_6_CEINV_2181,
      CLK => XLXI_5_x_6_CLKINV_2182,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_x_6_SRINV_2183,
      O => XLXI_5_x(6)
    );
  XLXI_5_x_4 : X_SFF
    generic map(
      LOC => "SLICE_X67Y29",
      INIT => '0'
    )
    port map (
      I => XLXI_5_x_4_DXMUX_2166,
      CE => XLXI_5_x_4_CEINV_2125,
      CLK => XLXI_5_x_4_CLKINV_2126,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_x_4_SRINV_2127,
      O => XLXI_5_x(4)
    );
  XLXI_5_x_5 : X_SFF
    generic map(
      LOC => "SLICE_X67Y29",
      INIT => '0'
    )
    port map (
      I => XLXI_5_x_4_DYMUX_2148,
      CE => XLXI_5_x_4_CEINV_2125,
      CLK => XLXI_5_x_4_CLKINV_2126,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_x_4_SRINV_2127,
      O => XLXI_5_x(5)
    );
  XLXI_5_x_11 : X_SFF
    generic map(
      LOC => "SLICE_X67Y32",
      INIT => '0'
    )
    port map (
      I => XLXI_5_x_10_DYMUX_2308,
      CE => XLXI_5_x_10_CEINV_2293,
      CLK => XLXI_5_x_10_CLKINV_2294,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_x_10_SRINV_2295,
      O => XLXI_5_x(11)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X45Y55"
    )
    port map (
      ADR0 => XLXI_6_unitCount(5),
      ADR1 => XLXI_6_unitCount(12),
      ADR2 => XLXI_6_unitCount(14),
      ADR3 => XLXI_6_unitCount(13),
      O => XLXI_6_unitCount_cmp_eq0000_wg_lut(2)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X45Y55"
    )
    port map (
      ADR0 => XLXI_6_unitCount(1),
      ADR1 => XLXI_6_unitCount(17),
      ADR2 => XLXI_6_unitCount(16),
      ADR3 => XLXI_6_unitCount(15),
      O => XLXI_6_unitCount_cmp_eq0000_wg_lut(3)
    );
  XLXI_6_unitCount_cmp_eq0000_wg_lut_0_Q : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X45Y54"
    )
    port map (
      ADR0 => XLXI_6_unitCount(8),
      ADR1 => XLXI_6_unitCount(7),
      ADR2 => XLXI_6_unitCount(6),
      ADR3 => XLXI_6_unitCount(4),
      O => XLXI_6_unitCount_cmp_eq0000_wg_lut(0)
    );
  XLXI_5_x_8 : X_SFF
    generic map(
      LOC => "SLICE_X67Y31",
      INIT => '0'
    )
    port map (
      I => XLXI_5_x_8_DXMUX_2279,
      CE => XLXI_5_x_8_CEINV_2238,
      CLK => XLXI_5_x_8_CLKINV_2239,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_x_8_SRINV_2240,
      O => XLXI_5_x(8)
    );
  XLXI_5_x_9 : X_SFF
    generic map(
      LOC => "SLICE_X67Y31",
      INIT => '0'
    )
    port map (
      I => XLXI_5_x_8_DYMUX_2261,
      CE => XLXI_5_x_8_CEINV_2238,
      CLK => XLXI_5_x_8_CLKINV_2239,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_x_8_SRINV_2240,
      O => XLXI_5_x(9)
    );
  XLXI_5_x_10 : X_SFF
    generic map(
      LOC => "SLICE_X67Y32",
      INIT => '0'
    )
    port map (
      I => XLXI_5_x_10_DXMUX_2328,
      CE => XLXI_5_x_10_CEINV_2293,
      CLK => XLXI_5_x_10_CLKINV_2294,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => XLXI_5_x_10_SRINV_2295,
      O => XLXI_5_x(10)
    );
  XLXI_5_x_11_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X67Y32"
    )
    port map (
      ADR0 => XLXI_5_x(11),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_5_x_11_rt_2303
    );
  XLXI_6_unitCount_cmp_eq0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X45Y54"
    )
    port map (
      ADR0 => XLXI_6_unitCount(10),
      ADR1 => XLXI_6_unitCount(3),
      ADR2 => XLXI_6_unitCount(11),
      ADR3 => XLXI_6_unitCount(9),
      O => XLXI_6_unitCount_cmp_eq0000_wg_lut(1)
    );
  XLXI_6_symbolCode_14_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X54Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_symbolCode(14),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_6_symbolCode_14_rt_2450
    );
  XLXI_6_Mmux_symbolCode_mux0001_72 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X55Y35"
    )
    port map (
      ADR0 => XLXI_6_symbolCode(2),
      ADR1 => XLXI_6_symbolCode(3),
      ADR2 => XLXI_6_symbolCount(0),
      ADR3 => VCC,
      O => XLXI_6_Mmux_symbolCode_mux0001_72_2535
    );
  XLXI_6_unitCount_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X45Y56"
    )
    port map (
      ADR0 => XLXI_6_unitCount(19),
      ADR1 => XLXI_6_unitCount(18),
      ADR2 => XLXI_6_unitCount(20),
      ADR3 => XLXI_6_unitCount(0),
      O => XLXI_6_unitCount_cmp_eq0000_wg_lut(4)
    );
  XLXI_6_Mmux_symbolCode_mux0001_71 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X55Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_symbolCode(4),
      ADR2 => XLXI_6_symbolCount(0),
      ADR3 => XLXI_6_symbolCode(5),
      O => XLXI_6_Mmux_symbolCode_mux0001_71_2502
    );
  XLXI_6_unitCount_cmp_eq0000_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X45Y56"
    )
    port map (
      ADR0 => XLXI_6_unitCount(21),
      ADR1 => XLXI_6_unitCount(23),
      ADR2 => XLXI_6_unitCount(2),
      ADR3 => XLXI_6_unitCount(22),
      O => XLXI_6_unitCount_cmp_eq0000_wg_lut(5)
    );
  XLXI_6_Mmux_symbolCode_mux0001_8 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X55Y35"
    )
    port map (
      ADR0 => XLXI_6_symbolCode(1),
      ADR1 => VCC,
      ADR2 => XLXI_6_symbolCount(0),
      ADR3 => XLXI_6_symbolCode(0),
      O => XLXI_6_Mmux_symbolCode_mux0001_8_2527
    );
  XLXI_6_Mmux_symbolCode_mux0001_61 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X54Y35"
    )
    port map (
      ADR0 => XLXI_6_symbolCode(11),
      ADR1 => XLXI_6_symbolCode(10),
      ADR2 => XLXI_6_symbolCount(0),
      ADR3 => VCC,
      O => XLXI_6_Mmux_symbolCode_mux0001_61_2481
    );
  XLXI_6_Mmux_symbolCode_mux0001_7 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X54Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_symbolCount(0),
      ADR2 => XLXI_6_symbolCode(9),
      ADR3 => XLXI_6_symbolCode(8),
      O => XLXI_6_Mmux_symbolCode_mux0001_7_2471
    );
  XLXI_6_Mmux_symbolCode_mux0001_6 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X54Y34"
    )
    port map (
      ADR0 => XLXI_6_symbolCode(13),
      ADR1 => XLXI_6_symbolCount(0),
      ADR2 => VCC,
      ADR3 => XLXI_6_symbolCode(12),
      O => XLXI_6_Mmux_symbolCode_mux0001_6_2439
    );
  XLXI_6_Mmux_symbolCode_mux0001_62 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X55Y34"
    )
    port map (
      ADR0 => XLXI_6_symbolCode(7),
      ADR1 => VCC,
      ADR2 => XLXI_6_symbolCount(0),
      ADR3 => XLXI_6_symbolCode(6),
      O => XLXI_6_Mmux_symbolCode_mux0001_62_2511
    );
  CharIn_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn_0_INBUF,
      O => CharIn_0_IBUF_1038
    );
  XLXI_6_unitCount_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X44Y49"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_6_unitCount(1),
      O => XLXI_6_unitCount_0_G
    );
  XLXI_6_unitCount_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X44Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_6_unitCount(2),
      O => XLXI_6_unitCount_2_F
    );
  XLXI_6_unitCount_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X44Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_unitCount(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_6_unitCount_2_G
    );
  XLXI_6_unitCount_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X44Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => XLXI_6_unitCount(6),
      ADR3 => VCC,
      O => XLXI_6_unitCount_6_F
    );
  XLXI_6_unitCount_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X44Y52"
    )
    port map (
      ADR0 => XLXI_6_unitCount(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_6_unitCount_6_G
    );
  XLXI_6_unitCount_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X44Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => XLXI_6_unitCount(4),
      ADR3 => VCC,
      O => XLXI_6_unitCount_4_F
    );
  XLXI_6_unitCount_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X44Y51"
    )
    port map (
      ADR0 => XLXI_6_unitCount(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_6_unitCount_4_G
    );
  XLXI_6_unitCount_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X44Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_unitCount(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_6_unitCount_8_F
    );
  XLXI_6_unitCount_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X44Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_6_unitCount(9),
      O => XLXI_6_unitCount_8_G
    );
  XLXI_6_unitCount_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X44Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_6_unitCount(10),
      O => XLXI_6_unitCount_10_F
    );
  XLXI_6_unitCount_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X44Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_unitCount(11),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_6_unitCount_10_G
    );
  XLXI_6_unitCount_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X44Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => XLXI_6_unitCount(12),
      ADR3 => VCC,
      O => XLXI_6_unitCount_12_F
    );
  XLXI_6_unitCount_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X44Y55"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_unitCount(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_6_unitCount_12_G
    );
  XLXI_6_unitCount_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X44Y57"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_6_unitCount(16),
      O => XLXI_6_unitCount_16_F
    );
  XLXI_6_unitCount_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X44Y57"
    )
    port map (
      ADR0 => XLXI_6_unitCount(17),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_6_unitCount_16_G
    );
  XLXI_6_unitCount_20_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X44Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => XLXI_6_unitCount(20),
      ADR3 => VCC,
      O => XLXI_6_unitCount_20_F
    );
  XLXI_6_unitCount_20_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X44Y59"
    )
    port map (
      ADR0 => XLXI_6_unitCount(21),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_6_unitCount_20_G
    );
  XLXI_6_unitCount_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X44Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_6_unitCount(18),
      O => XLXI_6_unitCount_18_F
    );
  XLXI_6_unitCount_18_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X44Y58"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_unitCount(19),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_6_unitCount_18_G
    );
  XLXI_6_unitCount_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X44Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_unitCount(14),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_6_unitCount_14_F
    );
  XLXI_6_unitCount_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X44Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => XLXI_6_unitCount(15),
      ADR3 => VCC,
      O => XLXI_6_unitCount_14_G
    );
  XLXI_5_timeCnt_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_5_timeCnt(2),
      O => XLXI_5_timeCnt_2_F
    );
  XLXI_5_timeCnt_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => XLXI_5_timeCnt(3),
      ADR3 => VCC,
      O => XLXI_5_timeCnt_2_G
    );
  XLXI_5_timeCnt_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X67Y54"
    )
    port map (
      ADR0 => XLXI_5_timeCnt(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_5_timeCnt_8_F
    );
  XLXI_5_timeCnt_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_5_timeCnt(9),
      O => XLXI_5_timeCnt_8_G
    );
  XLXI_5_timeCnt_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y50"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => XLXI_5_timeCnt(1),
      ADR3 => VCC,
      O => XLXI_5_timeCnt_0_G
    );
  XLXI_5_timeCnt_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => XLXI_5_timeCnt(4),
      ADR3 => VCC,
      O => XLXI_5_timeCnt_4_F
    );
  XLXI_5_timeCnt_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X67Y52"
    )
    port map (
      ADR0 => XLXI_5_timeCnt(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_5_timeCnt_4_G
    );
  XLXI_6_unitCount_22_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X44Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_6_unitCount(22),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_6_unitCount_22_F
    );
  XLXI_5_timeCnt_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => XLXI_5_timeCnt(6),
      ADR3 => VCC,
      O => XLXI_5_timeCnt_6_F
    );
  XLXI_5_timeCnt_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_5_timeCnt(7),
      O => XLXI_5_timeCnt_6_G
    );
  XLXI_5_x_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X67Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_5_x(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_5_x_8_F
    );
  XLXI_5_x_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => XLXI_5_x(9),
      ADR3 => VCC,
      O => XLXI_5_x_8_G
    );
  XLXI_5_x_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X67Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => XLXI_5_x(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_5_x_4_F
    );
  XLXI_5_x_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_5_x(5),
      O => XLXI_5_x_4_G
    );
  XLXI_5_x_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => XLXI_5_x(3),
      ADR3 => VCC,
      O => XLXI_5_x_2_G
    );
  XLXI_5_x_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => XLXI_5_x(10),
      O => XLXI_5_x_10_F
    );
  XLXI_5_x_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X67Y30"
    )
    port map (
      ADR0 => XLXI_5_x(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => XLXI_5_x_6_F
    );
  CharOUT_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sendOut_1039,
      O => CharOUT_O
    );
  DwrStart_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_sendStart_1037,
      O => DwrStart_O
    );
  DwrCmd_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD116",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawCmd_1_INBUF,
      O => DwrCmd_1_O
    );
  DwrData_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 638 ps
    )
    port map (
      I => DwrData_1_OUTPUT_OFF_O1INV_2711,
      O => DwrData_1_O
    );
  DwrData_1_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => DwrData_1_OUTPUT_OFF_O1INV_2711
    );
  DwrData_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x(4),
      O => DwrData_4_O
    );
  DwrData_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x(2),
      O => DwrData_2_O
    );
  DwrData_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x(5),
      O => DwrData_5_O
    );
  DwrAddr_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawAddr_0_INBUF,
      O => DwrAddr_0_O
    );
  DwrData_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x(3),
      O => DwrData_3_O
    );
  DwrAddr_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawAddr_3_INBUF,
      O => DwrAddr_3_O
    );
  DwrData_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x(6),
      O => DwrData_6_O
    );
  DwrCmd_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawCmd_0_INBUF,
      O => DwrCmd_0_O
    );
  CharBUSY_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_6_sending_927,
      O => CharBUSY_O
    );
  DwrData_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x(11),
      O => DwrData_11_O
    );
  DwrAddr_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawAddr_1_INBUF,
      O => DwrAddr_1_O
    );
  DwrData_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x(10),
      O => DwrData_10_O
    );
  DwrAddr_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawAddr_2_INBUF,
      O => DwrAddr_2_O
    );
  DwrData_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 638 ps
    )
    port map (
      I => DwrData_0_OUTPUT_OFF_O1INV_2695,
      O => DwrData_0_O
    );
  DwrData_0_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => DwrData_0_OUTPUT_OFF_O1INV_2695
    );
  DwrData_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x(7),
      O => DwrData_7_O
    );
  DwrCmd_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD111",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawCmd_2_INBUF,
      O => DwrCmd_2_O
    );
  DwrData_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x(8),
      O => DwrData_8_O
    );
  DwrCmd_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 638 ps
    )
    port map (
      I => SawCmd_3_INBUF,
      O => DwrCmd_3_O
    );
  DwrData_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXI_5_x(9),
      O => DwrData_9_O
    );
  NlwBufferBlock_XLXI_6_Mrom_rom0000_ADDR_4_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn_4_IBUF_1044,
      O => NlwBufferSignal_XLXI_6_Mrom_rom0000_ADDR(4)
    );
  NlwBufferBlock_XLXI_6_Mrom_rom0000_ADDR_3_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn_3_IBUF_1043,
      O => NlwBufferSignal_XLXI_6_Mrom_rom0000_ADDR(3)
    );
  NlwBufferBlock_XLXI_6_Mrom_rom0000_ADDR_2_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn_2_IBUF_1041,
      O => NlwBufferSignal_XLXI_6_Mrom_rom0000_ADDR(2)
    );
  NlwBufferBlock_XLXI_6_Mrom_rom0000_ADDR_1_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn_1_IBUF_1040,
      O => NlwBufferSignal_XLXI_6_Mrom_rom0000_ADDR(1)
    );
  NlwBufferBlock_XLXI_6_Mrom_rom0000_ADDR_0_Q : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => CharIn_0_IBUF_1038,
      O => NlwBufferSignal_XLXI_6_Mrom_rom0000_ADDR(0)
    );
  NlwBlock_schemOne_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_schemOne_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

