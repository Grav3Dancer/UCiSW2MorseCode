-- Vhdl test bench created from schematic F:\XilinxProjects\u2proj\schemOne.sch - Wed Apr 28 19:41:04 2021
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY schemOne_schemOne_sch_tb IS
END schemOne_schemOne_sch_tb;
ARCHITECTURE behavioral OF schemOne_schemOne_sch_tb IS 

   COMPONENT schemOne
   PORT( SawStart	:	IN	STD_LOGIC; 
          SawCmd	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          SawAddr	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Clk_50MHz	:	IN	STD_LOGIC; 
          DwrData	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0); 
          DwrAddr	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          DwrCmd	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          DwrStart	:	OUT	STD_LOGIC; 
          CharBUSY	:	OUT	STD_LOGIC; 
          CharOUT	:	OUT	STD_LOGIC; 
          CharStart	:	IN	STD_LOGIC; 
          CharIn	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL SawStart	:	STD_LOGIC;
   SIGNAL SawCmd	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL SawAddr	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL Clk_50MHz	:	STD_LOGIC;
   SIGNAL DwrData	:	STD_LOGIC_VECTOR (11 DOWNTO 0);
   SIGNAL DwrAddr	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL DwrCmd	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL DwrStart	:	STD_LOGIC;
   SIGNAL CharBUSY	:	STD_LOGIC;
   SIGNAL CharOUT	:	STD_LOGIC;
   SIGNAL CharStart	:	STD_LOGIC;
   SIGNAL CharIn	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

   UUT: schemOne PORT MAP(
		SawStart => SawStart, 
		SawCmd => SawCmd, 
		SawAddr => SawAddr, 
		Clk_50MHz => Clk_50MHz, 
		DwrData => DwrData, 
		DwrAddr => DwrAddr, 
		DwrCmd => DwrCmd, 
		DwrStart => DwrStart, 
		CharBUSY => CharBUSY, 
		CharOUT => CharOUT, 
		CharStart => CharStart, 
		CharIn => CharIn
   );

-- *** Test Bench - User Defined Section ***
	clk_process :process
   begin
        Clk_50MHz <= '0';
        wait for 10 ns;  --for 0.5 ns signal is '0'.
        Clk_50MHz <= '1';
        wait for 10 ns;  --for next 0.5 ns signal is '1'.
   end process;
	
	SawStart <= '1', '0' after 500000 ns, '1' after 1 ms;
	SawAddr <= "1111";
	SawCmd <= "0011";
	
	
	CharIn <= "01101100", "01110000" after 700 ns;
	CharStart<= '0', '1' after 140 ns, '0' after 200 ns, '1' after 40000 ns, '0' after 40080 ns, '1' after 80000 ns, '0' after 80180 ns;
-- *** End Test Bench - User Defined Section ***

END;
