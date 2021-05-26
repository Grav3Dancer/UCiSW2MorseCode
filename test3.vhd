-- Vhdl test bench created from schematic F:\XilinxProjects\u2proj\schemOne.sch - Thu May 13 10:42:55 2021
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
          CharIn	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          VGA_HS	:	OUT	STD_LOGIC; 
          VGA_VS	:	OUT	STD_LOGIC; 
          VGA_RGB	:	OUT	STD_LOGIC; 
          VGA_Busy	:	OUT	STD_LOGIC);
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
   SIGNAL VGA_HS	:	STD_LOGIC;
   SIGNAL VGA_VS	:	STD_LOGIC;
   SIGNAL VGA_RGB	:	STD_LOGIC;
   SIGNAL VGA_Busy	:	STD_LOGIC;

	-- Interface to VGAscaner
   component VGAscan
       Generic ( -- VGA mode params (defaults are for 800x600/72Hz)
                 pxWidth    : integer := 800;         -- visible pixels: width
                 pxHeight   : integer := 600;         -- visible pixels: height
                 pxHSfrontP : integer := 56;          -- HSync front porch
                 lnVSfrontP : integer := 37;          -- VSync front porch
                 pxTotal    : integer := 1040;        -- total horiz. pixels (visible & invisible)
                 lnTotal    : integer := 666;         -- total vert. lines (visible & invisible)
                 mhzPixelClk: real    := 50.000;      -- pixel clock
                 activeHS   : std_logic := '1';       -- HSync polarity
                 activeVS   : std_logic := '1';       -- VSync polarity
                 -- Aux params
                 pxBorder   : integer := 2;           -- bitmap border around the visible area
                 FileName   : string := "D:/Frame"    -- output file name (frame number & ".bmp" will be appended)
               );
       Port ( VS, HS : in  STD_LOGIC;
              R, G, B : in  STD_LOGIC);
   end component;
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
		CharIn => CharIn, 
		VGA_HS => VGA_HS, 
		VGA_VS => VGA_VS, 
		VGA_RGB => VGA_RGB, 
		VGA_Busy => VGA_Busy
   );
	
	------------------------------------------------------------------
   -- Instance of the VGA scanner
   ------------------------------------------------------------------
   I_VGAscaner: VGAscan
      generic map(
         pxBorder => 3,
         FIleName => "F:/XilinxProjects/u2proj/Frame" )    -- VGAtxt48x20 works in 800x600/72Hz mode => VGA generics can be left with defaults
      port map(
         VS => VGA_VS,
         HS => VGA_HS,
         R => VGA_RGB,
         G => VGA_RGB,
         B => VGA_RGB );

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
	
	
	CharIn <= "00110001", "01100011" after 700 ns, "01101001" after 60000 ns, "01110011" after 100000 ns, "01110111" after 140000 ns;
	CharStart<= '0', '1' after 140 ns, '0' after 200 ns, '1' after 40000 ns, '0' after 40080 ns, '1' after 80000 ns, '0' after 80080 ns, 
	'1' after 120000 ns, '0' after 120080 ns, '1' after 160000 ns, '0' after 160080 ns;
-- *** End Test Bench - User Defined Section ***

END;
