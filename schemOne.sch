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
        <signal name="XLXN_33" />
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
            <timestamp>2021-4-28T15:29:27</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
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
            <wire x2="1488" y1="1472" y2="1472" x1="448" />
            <wire x2="448" y1="1280" y2="1472" x1="448" />
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
            <wire x2="848" y1="1216" y2="1216" x1="832" />
            <wire x2="864" y1="1216" y2="1216" x1="848" />
        </branch>
        <branch name="CharOUT">
            <wire x2="848" y1="1152" y2="1152" x1="832" />
            <wire x2="864" y1="1152" y2="1152" x1="848" />
        </branch>
        <branch name="CharStart">
            <wire x2="432" y1="1216" y2="1216" x1="416" />
            <wire x2="448" y1="1216" y2="1216" x1="432" />
        </branch>
        <branch name="CharIn(7:0)">
            <wire x2="432" y1="1152" y2="1152" x1="416" />
            <wire x2="448" y1="1152" y2="1152" x1="432" />
        </branch>
        <instance x="448" y="1312" name="XLXI_6" orien="R0">
        </instance>
        <iomarker fontsize="28" x="416" y="1152" name="CharIn(7:0)" orien="R180" />
        <iomarker fontsize="28" x="416" y="1216" name="CharStart" orien="R180" />
        <iomarker fontsize="28" x="864" y="1152" name="CharOUT" orien="R0" />
        <iomarker fontsize="28" x="864" y="1216" name="CharBUSY" orien="R0" />
        <iomarker fontsize="28" x="336" y="1472" name="Clk_50MHz" orien="R180" />
    </sheet>
</drawing>