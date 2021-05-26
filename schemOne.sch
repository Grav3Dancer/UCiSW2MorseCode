<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SawStart" />
        <signal name="SawCmd(3:0)" />
        <signal name="SawAddr(3:0)" />
        <signal name="Clk_50MHz" />
        <signal name="DwrData(11:0)" />
        <signal name="DwrAddr(3:0)" />
        <signal name="DwrCmd(3:0)" />
        <signal name="DwrStart" />
        <signal name="CharBUSY" />
        <signal name="CharOUT" />
        <signal name="CharStart" />
        <signal name="CharIn(7:0)" />
        <signal name="XLXN_1" />
        <signal name="XLXN_2(7:0)" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="VGA_RGB" />
        <signal name="VGA_Busy" />
        <port polarity="Input" name="SawStart" />
        <port polarity="Input" name="SawCmd(3:0)" />
        <port polarity="Input" name="SawAddr(3:0)" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="DwrData(11:0)" />
        <port polarity="Output" name="DwrAddr(3:0)" />
        <port polarity="Output" name="DwrCmd(3:0)" />
        <port polarity="Output" name="DwrStart" />
        <port polarity="Output" name="CharBUSY" />
        <port polarity="Output" name="CharOUT" />
        <port polarity="Input" name="CharStart" />
        <port polarity="Input" name="CharIn(7:0)" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_RGB" />
        <port polarity="Output" name="VGA_Busy" />
        <blockdef name="SawSignal">
            <timestamp>2021-4-13T15:49:6</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="76" y1="-40" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-24" x1="76" />
        </blockdef>
        <blockdef name="SendChar">
            <timestamp>2021-5-13T8:22:55</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="320" y1="-48" y2="-48" x1="384" />
            <line x2="320" y1="-16" y2="-16" x1="384" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T9:59:2</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="SawSignal" name="XLXI_5">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="SawStart" name="Start" />
            <blockpin signalname="SawAddr(3:0)" name="Addr(3:0)" />
            <blockpin signalname="SawCmd(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="DwrStart" name="DWR_Start" />
            <blockpin signalname="DwrAddr(3:0)" name="DWR_Addr(3:0)" />
            <blockpin signalname="DwrCmd(3:0)" name="DWR_Cmd(3:0)" />
            <blockpin signalname="DwrData(11:0)" name="DWR_Data(11:0)" />
        </block>
        <block symbolname="SendChar" name="XLXI_6">
            <blockpin signalname="CharIn(7:0)" name="CharInput(7:0)" />
            <blockpin signalname="CharStart" name="SendStart" />
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="CharOUT" name="CharOutput" />
            <blockpin signalname="CharBUSY" name="SendBusy" />
            <blockpin signalname="XLXN_2(7:0)" name="CharOutputVector(7:0)" />
            <blockpin signalname="XLXN_3" name="CharOut" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_8">
            <blockpin signalname="XLXN_2(7:0)" name="Char_DI(7:0)" />
            <blockpin signalname="XLXN_10" name="Home" />
            <blockpin signalname="XLXN_9" name="NewLine" />
            <blockpin signalname="XLXN_8" name="Goto00" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_4" name="CursorOn" />
            <blockpin signalname="XLXN_5" name="ScrollEn" />
            <blockpin signalname="XLXN_6" name="ScrollClear" />
            <blockpin signalname="VGA_Busy" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="VGA_RGB" name="VGA_RGB" />
            <blockpin signalname="XLXN_3" name="Char_WE" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="XLXN_4" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="XLXN_5" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="XLXN_6" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_13">
            <blockpin signalname="XLXN_8" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_14">
            <blockpin signalname="XLXN_9" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_15">
            <blockpin signalname="XLXN_10" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1504" y="1376" name="XLXI_5" orien="R0">
        </instance>
        <branch name="SawStart">
            <wire x2="1504" y1="1152" y2="1152" x1="1472" />
        </branch>
        <branch name="SawCmd(3:0)">
            <wire x2="1504" y1="1216" y2="1216" x1="1472" />
        </branch>
        <branch name="SawAddr(3:0)">
            <wire x2="1504" y1="1280" y2="1280" x1="1472" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="448" y1="1472" y2="1472" x1="336" />
            <wire x2="1216" y1="1472" y2="1472" x1="448" />
            <wire x2="1488" y1="1472" y2="1472" x1="1216" />
            <wire x2="448" y1="1280" y2="1472" x1="448" />
            <wire x2="1488" y1="880" y2="880" x1="1216" />
            <wire x2="1216" y1="880" y2="944" x1="1216" />
            <wire x2="1216" y1="944" y2="1472" x1="1216" />
            <wire x2="1488" y1="944" y2="944" x1="1216" />
            <wire x2="1504" y1="1344" y2="1344" x1="1488" />
            <wire x2="1488" y1="1344" y2="1472" x1="1488" />
        </branch>
        <branch name="DwrData(11:0)">
            <wire x2="1920" y1="1344" y2="1344" x1="1888" />
        </branch>
        <branch name="DwrAddr(3:0)">
            <wire x2="1920" y1="1280" y2="1280" x1="1888" />
        </branch>
        <branch name="DwrCmd(3:0)">
            <wire x2="1920" y1="1216" y2="1216" x1="1888" />
        </branch>
        <branch name="DwrStart">
            <wire x2="1920" y1="1152" y2="1152" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1472" y="1152" name="SawStart" orien="R180" />
        <iomarker fontsize="28" x="1472" y="1216" name="SawCmd(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1472" y="1280" name="SawAddr(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1920" y="1344" name="DwrData(11:0)" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1280" name="DwrAddr(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1216" name="DwrCmd(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1152" name="DwrStart" orien="R0" />
        <branch name="CharBUSY">
            <wire x2="864" y1="1216" y2="1216" x1="832" />
        </branch>
        <branch name="CharOUT">
            <wire x2="864" y1="1152" y2="1152" x1="832" />
        </branch>
        <branch name="CharStart">
            <wire x2="448" y1="1216" y2="1216" x1="416" />
        </branch>
        <branch name="CharIn(7:0)">
            <wire x2="448" y1="1152" y2="1152" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="1152" name="CharIn(7:0)" orien="R180" />
        <iomarker fontsize="28" x="416" y="1216" name="CharStart" orien="R180" />
        <iomarker fontsize="28" x="864" y="1152" name="CharOUT" orien="R0" />
        <iomarker fontsize="28" x="864" y="1216" name="CharBUSY" orien="R0" />
        <iomarker fontsize="28" x="336" y="1472" name="Clk_50MHz" orien="R180" />
        <instance x="448" y="1312" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1488" y="880" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_2(7:0)">
            <wire x2="1152" y1="1264" y2="1264" x1="832" />
            <wire x2="1152" y1="272" y2="1264" x1="1152" />
            <wire x2="1488" y1="272" y2="272" x1="1152" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1168" y1="1296" y2="1296" x1="832" />
            <wire x2="1168" y1="336" y2="1296" x1="1168" />
            <wire x2="1488" y1="336" y2="336" x1="1168" />
        </branch>
        <instance x="1344" y="656" name="XLXI_9" orien="R0" />
        <instance x="1296" y="720" name="XLXI_10" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1488" y1="656" y2="656" x1="1408" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1488" y1="720" y2="720" x1="1360" />
        </branch>
        <instance x="1248" y="784" name="XLXI_11" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1488" y1="784" y2="784" x1="1312" />
        </branch>
        <instance x="1216" y="688" name="XLXI_13" orien="R0" />
        <instance x="1152" y="640" name="XLXI_14" orien="R0" />
        <instance x="1168" y="496" name="XLXI_15" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1280" y1="496" y2="560" x1="1280" />
            <wire x2="1360" y1="496" y2="496" x1="1280" />
            <wire x2="1360" y1="496" y2="560" x1="1360" />
            <wire x2="1488" y1="560" y2="560" x1="1360" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1216" y1="480" y2="512" x1="1216" />
            <wire x2="1424" y1="480" y2="480" x1="1216" />
            <wire x2="1424" y1="480" y2="496" x1="1424" />
            <wire x2="1488" y1="496" y2="496" x1="1424" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1312" y1="368" y2="368" x1="1232" />
            <wire x2="1312" y1="368" y2="432" x1="1312" />
            <wire x2="1488" y1="432" y2="432" x1="1312" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="1952" y1="272" y2="272" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="272" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="1952" y1="336" y2="336" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="336" name="VGA_VS" orien="R0" />
        <branch name="VGA_RGB">
            <wire x2="1952" y1="400" y2="400" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="400" name="VGA_RGB" orien="R0" />
        <branch name="VGA_Busy">
            <wire x2="1952" y1="528" y2="528" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="528" name="VGA_Busy" orien="R0" />
    </sheet>
</drawing>