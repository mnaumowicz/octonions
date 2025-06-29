library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hadamard2 is
	Generic (N: NATURAL:=16);
	Port (
	x0, x1 : in SIGNED(N-1 downto 0);
	y0, y1 : out SIGNED(N-1 downto 0)
);
end hadamard2;

architecture Flow of hadamard2 is
begin
	y0 <= x0+x1;
	y1 <= x0-x1;
end Flow;

Library IEEE;
USE IEEE.Std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity reg is 
Generic (N: NATURAL:=8);
   port(
      Q : out SIGNED(N-1 downto 0);   
      Clk :in std_logic;   
      D :in  SIGNED(N-1 downto 0)   
   );
end reg;
architecture Behavioral of reg is  
begin  
 process(Clk)
 begin 
    if(rising_edge(Clk)) then
   Q <= D; 
    end if;       
 end process;  
end Behavioral; 

Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;

Entity delay3 is
Generic (N: NATURAL:=8);
   port(
      Q : out SIGNED(N-1 downto 0);   
      Clk :in std_logic;   
      D :in  SIGNED(N-1 downto 0)   
   );
End entity delay3;

Architecture RTL of delay3 is
component reg is 
Generic (N: NATURAL:=8);
   port(
      Q : out SIGNED(N-1 downto 0);   
      Clk :in std_logic;   
      D :in  SIGNED(N-1 downto 0)   
   );
end component;
signal r1, r2: SIGNED(N-1 downto 0);
begin
reg0: reg generic map(N=>N) port map (r1,clk,D);
reg1: reg generic map(N=>N) port map (r2,clk,r1);
reg2: reg generic map(N=>N) port map (Q,clk,r2);
end RTL;

Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;

Entity octonions is
Generic (N: NATURAL:=16);
port( 
clk : in std_logic;
x0,x1,x2,x3,x4,x5,x6,x7  : in  SIGNED(N-1 downto 0);
b0,b1,b2,b3,b4,b5,b6,b7  : in  SIGNED(N-1 downto 0);
y0,y1,y2,y3,y4,y5,y6,y7  : out SIGNED(2*N-1 downto 0) );
End entity octonions;
Architecture proposed of octonions is

component hadamard2 is
	Generic (N: NATURAL:=16);
	Port (
	x0, x1 : in SIGNED(N-1 downto 0);
	y0, y1 : out SIGNED(N-1 downto 0)
);
end component;

component reg is 
Generic (N: NATURAL:=8);
   port(
      Q : out SIGNED(N-1 downto 0);   
      Clk :in std_logic;   
      D :in  SIGNED(N-1 downto 0)   
   );
end component;

component delay3 is
Generic (N: NATURAL:=8);
   port(
      Q : out SIGNED(N-1 downto 0);   
      Clk :in std_logic;   
      D :in  SIGNED(N-1 downto 0)   
   );
end component;

signal uhx0o0, uhx0o1: SIGNED(N-1 downto 0);
signal uhx1o0, uhx1o1: SIGNED(N-1 downto 0);
signal uhx2o0, uhx2o1: SIGNED(N-1 downto 0);
signal uhx3o0, uhx3o1: SIGNED(N-1 downto 0);
signal uhx4o0, uhx4o1: SIGNED(N-1 downto 0);
signal uhx5o0, uhx5o1: SIGNED(N-1 downto 0);
signal uhx6o0, uhx6o1: SIGNED(N-1 downto 0);
signal uhx7o0, uhx7o1: SIGNED(N-1 downto 0);
signal uhx8o0, uhx8o1: SIGNED(N-1 downto 0);
signal uhx9o0, uhx9o1: SIGNED(N-1 downto 0);
signal uhx10o0, uhx10o1: SIGNED(N-1 downto 0);
signal uhx11o0, uhx11o1: SIGNED(N-1 downto 0);

signal uhb0o0, uhb0o1: SIGNED(N-1 downto 0);
signal uhb1o0, uhb1o1: SIGNED(N-1 downto 0);
signal uhb2o0, uhb2o1: SIGNED(N-1 downto 0);
signal uhb3o0, uhb3o1: SIGNED(N-1 downto 0);
signal uhb4o0, uhb4o1: SIGNED(N-1 downto 0);
signal uhb5o0, uhb5o1: SIGNED(N-1 downto 0);
signal uhb6o0, uhb6o1: SIGNED(N-1 downto 0);
signal uhb7o0, uhb7o1: SIGNED(N-1 downto 0);
signal uhb8o0, uhb8o1: SIGNED(N-1 downto 0);
signal uhb9o0, uhb9o1: SIGNED(N-1 downto 0);
signal uhb10o0, uhb10o1: SIGNED(N-1 downto 0);
signal uhb11o0, uhb11o1: SIGNED(N-1 downto 0);

signal uhc0o0, uhc0o1: SIGNED(2*N-1 downto 0);
signal uhc1o0, uhc1o1: SIGNED(2*N-1 downto 0);
signal uhc2o0, uhc2o1: SIGNED(2*N-1 downto 0);
signal uhc3o0, uhc3o1: SIGNED(2*N-1 downto 0);
signal uhc4o0, uhc4o1: SIGNED(2*N-1 downto 0);
signal uhc5o0, uhc5o1: SIGNED(2*N-1 downto 0);
signal uhc6o0, uhc6o1: SIGNED(2*N-1 downto 0);
signal uhc7o0, uhc7o1: SIGNED(2*N-1 downto 0);
signal uhc8o0, uhc8o1: SIGNED(2*N-1 downto 0);
signal uhc9o0, uhc9o1: SIGNED(2*N-1 downto 0);
signal uhc10o0, uhc10o1: SIGNED(2*N-1 downto 0);
signal uhc11o0, uhc11o1: SIGNED(2*N-1 downto 0);

signal uhb0o0_reg, uhb0o1_reg: SIGNED(N-1 downto 0);
signal uhb1o0_reg, uhb1o1_reg: SIGNED(N-1 downto 0);
signal uhb2o0_reg, uhb2o1_reg: SIGNED(N-1 downto 0);
signal uhb3o0_reg, uhb3o1_reg: SIGNED(N-1 downto 0);
signal uhb4o0_reg, uhb4o1_reg: SIGNED(N-1 downto 0);
signal uhb5o0_reg, uhb5o1_reg: SIGNED(N-1 downto 0);
signal uhb6o0_reg, uhb6o1_reg: SIGNED(N-1 downto 0);
signal uhb7o0_reg, uhb7o1_reg: SIGNED(N-1 downto 0);
signal uhb8o0_reg, uhb8o1_reg: SIGNED(N-1 downto 0);
signal uhb9o0_reg, uhb9o1_reg: SIGNED(N-1 downto 0);
signal uhb10o0_reg, uhb10o1_reg: SIGNED(N-1 downto 0);
signal uhb11o0_reg, uhb11o1_reg: SIGNED(N-1 downto 0);

signal uhx0o0_reg, uhx0o1_reg: SIGNED(N-1 downto 0);
signal uhx1o0_reg, uhx1o1_reg: SIGNED(N-1 downto 0);
signal uhx2o0_reg, uhx2o1_reg: SIGNED(N-1 downto 0);
signal uhx3o0_reg, uhx3o1_reg: SIGNED(N-1 downto 0);
signal uhx4o0_reg, uhx4o1_reg: SIGNED(N-1 downto 0);
signal uhx5o0_reg, uhx5o1_reg: SIGNED(N-1 downto 0);
signal uhx6o0_reg, uhx6o1_reg: SIGNED(N-1 downto 0);
signal uhx7o0_reg, uhx7o1_reg: SIGNED(N-1 downto 0);
signal uhx8o0_reg, uhx8o1_reg: SIGNED(N-1 downto 0);
signal uhx9o0_reg, uhx9o1_reg: SIGNED(N-1 downto 0);
signal uhx10o0_reg, uhx10o1_reg: SIGNED(N-1 downto 0);
signal uhx11o0_reg, uhx11o1_reg: SIGNED(N-1 downto 0);

signal uhc0o0_reg, uhc0o1_reg: SIGNED(2*N-1 downto 0);
signal uhc1o0_reg, uhc1o1_reg: SIGNED(2*N-1 downto 0);
signal uhc2o0_reg, uhc2o1_reg: SIGNED(2*N-1 downto 0);
signal uhc3o0_reg, uhc3o1_reg: SIGNED(2*N-1 downto 0);
signal uhc4o0_reg, uhc4o1_reg: SIGNED(2*N-1 downto 0);
signal uhc5o0_reg, uhc5o1_reg: SIGNED(2*N-1 downto 0);
signal uhc6o0_reg, uhc6o1_reg: SIGNED(2*N-1 downto 0);
signal uhc7o0_reg, uhc7o1_reg: SIGNED(2*N-1 downto 0);
signal uhc8o0_reg, uhc8o1_reg: SIGNED(2*N-1 downto 0);
signal uhc9o0_reg, uhc9o1_reg: SIGNED(2*N-1 downto 0);
signal uhc10o0_reg, uhc10o1_reg: SIGNED(2*N-1 downto 0);
signal uhc11o0_reg, uhc11o1_reg: SIGNED(2*N-1 downto 0);

signal c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29 : SIGNED(N-1 downto 0);
signal c0_reg, c1_reg, c2_reg, c3_reg, c4_reg, c5_reg, c6_reg, c7_reg, c8_reg, c9_reg, c10_reg, c11_reg, c12_reg, c13_reg, c14_reg, c15_reg, c16_reg, c17_reg, c18_reg, c19_reg, c20_reg, c21_reg, c22_reg, c23_reg, c24_reg, c25_reg, c26_reg, c27_reg, c28_reg, c29_reg : SIGNED(N-1 downto 0);
signal yc0, yc1, yc2, yc3, yc4, yc5, yc6, yc7, yc8, yc9, yc10, yc11, yc12, yc13, yc14, yc15, yc16, yc17, yc18, yc19, yc20, yc21, yc22, yc23, yc24, yc25, yc26, yc27, yc28, yc29 : SIGNED(2*N-1 downto 0);
signal yc0_reg, yc1_reg, yc2_reg, yc3_reg, yc4_reg, yc5_reg, yc6_reg, yc7_reg, yc8_reg, yc9_reg, yc10_reg, yc11_reg, yc12_reg, yc13_reg, yc14_reg, yc15_reg, yc16_reg, yc17_reg, yc18_reg, yc19_reg, yc20_reg, yc21_reg, yc22_reg, yc23_reg, yc24_reg, yc25_reg, yc26_reg, yc27_reg, yc28_reg, yc29_reg : SIGNED(2*N-1 downto 0);
signal x0_reg, x1_reg, x2_reg, x3_reg, x4_reg, x5_reg, x6_reg, x7_reg:SIGNED(N-1 downto 0);
signal b0_reg, b1_reg, b2_reg, b3_reg, b4_reg, b5_reg, b6_reg, b7_reg:SIGNED(N-1 downto 0);
signal y0r,y1r,y2r,y3r,y4r,y5r,y6r,y7r:SIGNED(2*N-1 downto 0);
signal y1r0,y2r0,y3r0,y4r0,y5r0,y6r0,y7r0:SIGNED(2*N-1 downto 0);
signal y1r1,y2r1,y3r1,y4r1,y5r1,y6r1,y7r1:SIGNED(2*N-1 downto 0);
signal y1r0_reg,y2r0_reg,y3r0_reg,y4r0_reg,y5r0_reg,y6r0_reg,y7r0_reg:SIGNED(2*N-1 downto 0);
signal y1r1_reg,y2r1_reg,y3r1_reg,y4r1_reg,y5r1_reg,y6r1_reg,y7r1_reg:SIGNED(2*N-1 downto 0);
signal b0_d3_reg, b1_d3_reg, b2_d3_reg, b3_d3_reg, b4_d3_reg, b5_d3_reg, b6_d3_reg, b7_d3_reg:SIGNED(N-1 downto 0);
signal x0_d3_reg, x1_d3_reg, x2_d3_reg, x3_d3_reg, x4_d3_reg, x5_d3_reg, x6_d3_reg, x7_d3_reg:SIGNED(N-1 downto 0);
signal yc0_d3_reg, yc1_d3_reg, yc2_d3_reg, yc3_d3_reg, yc4_d3_reg, yc5_d3_reg, yc6_d3_reg, yc7_d3_reg, yc8_d3_reg, yc9_d3_reg, yc10_d3_reg, yc11_d3_reg, yc12_d3_reg, yc13_d3_reg, yc14_d3_reg, yc15_d3_reg, yc16_d3_reg, yc17_d3_reg, yc18_d3_reg, yc19_d3_reg, yc20_d3_reg, yc21_d3_reg, yc22_d3_reg, yc23_d3_reg, yc24_d3_reg, yc25_d3_reg, yc26_d3_reg, yc27_d3_reg, yc28_d3_reg, yc29_d3_reg : SIGNED(2*N-1 downto 0);

Begin

delay3b0: delay3 generic map(N=>N) port map (b0_d3_reg,clk,b0_reg);
delay3b1: delay3 generic map(N=>N) port map (b1_d3_reg,clk,b1_reg);
delay3b2: delay3 generic map(N=>N) port map (b2_d3_reg,clk,b2_reg);
delay3b3: delay3 generic map(N=>N) port map (b3_d3_reg,clk,b3_reg);
delay3b4: delay3 generic map(N=>N) port map (b4_d3_reg,clk,b4_reg);
delay3b5: delay3 generic map(N=>N) port map (b5_d3_reg,clk,b5_reg);
delay3b6: delay3 generic map(N=>N) port map (b6_d3_reg,clk,b6_reg);
delay3b7: delay3 generic map(N=>N) port map (b7_d3_reg,clk,b7_reg);

delay3x0: delay3 generic map(N=>N) port map (x0_d3_reg,clk,x0_reg);
delay3x1: delay3 generic map(N=>N) port map (x1_d3_reg,clk,x1_reg);
delay3x2: delay3 generic map(N=>N) port map (x2_d3_reg,clk,x2_reg);
delay3x3: delay3 generic map(N=>N) port map (x3_d3_reg,clk,x3_reg);
delay3x4: delay3 generic map(N=>N) port map (x4_d3_reg,clk,x4_reg);
delay3x5: delay3 generic map(N=>N) port map (x5_d3_reg,clk,x5_reg);
delay3x6: delay3 generic map(N=>N) port map (x6_d3_reg,clk,x6_reg);
delay3x7: delay3 generic map(N=>N) port map (x7_d3_reg,clk,x7_reg);


regx0: reg generic map(N=>N) port map (x0_reg,clk,x0);
regx1: reg generic map(N=>N) port map (x1_reg,clk,x1);
regx2: reg generic map(N=>N) port map (x2_reg,clk,x2);
regx3: reg generic map(N=>N) port map (x3_reg,clk,x3);
regx4: reg generic map(N=>N) port map (x4_reg,clk,x4);
regx5: reg generic map(N=>N) port map (x5_reg,clk,x5);
regx6: reg generic map(N=>N) port map (x6_reg,clk,x6);
regx7: reg generic map(N=>N) port map (x7_reg,clk,x7);

regb0: reg generic map(N=>N) port map (b0_reg,clk,b0);
regb1: reg generic map(N=>N) port map (b1_reg,clk,b1);
regb2: reg generic map(N=>N) port map (b2_reg,clk,b2);
regb3: reg generic map(N=>N) port map (b3_reg,clk,b3);
regb4: reg generic map(N=>N) port map (b4_reg,clk,b4);
regb5: reg generic map(N=>N) port map (b5_reg,clk,b5);
regb6: reg generic map(N=>N) port map (b6_reg,clk,b6);
regb7: reg generic map(N=>N) port map (b7_reg,clk,b7);


uhb0: hadamard2 generic map(N=>N) port map (b0_reg, b4_reg, uhb0o0, uhb0o1);
uhb1: hadamard2 generic map(N=>N) port map (b1_reg, b5_reg, uhb1o0, uhb1o1);
uhb2: hadamard2 generic map(N=>N) port map (b2_reg, b6_reg, uhb2o0, uhb2o1);
uhb3: hadamard2 generic map(N=>N) port map (b3_reg, b7_reg, uhb3o0, uhb3o1);


reguhb00: reg generic map(N=>N) port map (uhb0o0_reg,clk,uhb0o0);
reguhb01: reg generic map(N=>N) port map (uhb0o1_reg,clk,uhb0o1);
reguhb10: reg generic map(N=>N) port map (uhb1o0_reg,clk,uhb1o0);
reguhb11: reg generic map(N=>N) port map (uhb1o1_reg,clk,uhb1o1);
reguhb20: reg generic map(N=>N) port map (uhb2o0_reg,clk,uhb2o0);
reguhb21: reg generic map(N=>N) port map (uhb2o1_reg,clk,uhb2o1);
reguhb30: reg generic map(N=>N) port map (uhb3o0_reg,clk,uhb3o0);
reguhb31: reg generic map(N=>N) port map (uhb3o1_reg,clk,uhb3o1);

uhb4: hadamard2 generic map(N=>N) port map (uhb0o0_reg, uhb2o0_reg, uhb4o0, uhb4o1);
uhb5: hadamard2 generic map(N=>N) port map (uhb0o1_reg, uhb2o1_reg, uhb5o0, uhb5o1);
uhb6: hadamard2 generic map(N=>N) port map (uhb1o0_reg, uhb3o0_reg, uhb6o0, uhb6o1);
uhb7: hadamard2 generic map(N=>N) port map (uhb1o1_reg, uhb3o1_reg, uhb7o0, uhb7o1);

reguhb40: reg generic map(N=>N) port map (uhb4o0_reg,clk,uhb4o0);
reguhb41: reg generic map(N=>N) port map (uhb4o1_reg,clk,uhb4o1);
reguhb50: reg generic map(N=>N) port map (uhb5o0_reg,clk,uhb5o0);
reguhb51: reg generic map(N=>N) port map (uhb5o1_reg,clk,uhb5o1);
reguhb60: reg generic map(N=>N) port map (uhb6o0_reg,clk,uhb6o0);
reguhb61: reg generic map(N=>N) port map (uhb6o1_reg,clk,uhb6o1);
reguhb70: reg generic map(N=>N) port map (uhb7o0_reg,clk,uhb7o0);
reguhb71: reg generic map(N=>N) port map (uhb7o1_reg,clk,uhb7o1);

uhb8: hadamard2 generic map(N=>N) port map (uhb4o0_reg, uhb6o0_reg, uhb8o0, uhb8o1);
uhb9: hadamard2 generic map(N=>N) port map (uhb4o1_reg, uhb6o1_reg, uhb9o0, uhb9o1);
uhb10: hadamard2 generic map(N=>N) port map (uhb5o0_reg, uhb7o0_reg, uhb10o0, uhb10o1);
uhb11: hadamard2 generic map(N=>N) port map (uhb5o1_reg, uhb7o1_reg, uhb11o0, uhb11o1);

uhx0: hadamard2 generic map(N=>N) port map (x0_reg, x4_reg, uhx0o0, uhx0o1);
uhx1: hadamard2 generic map(N=>N) port map (x1_reg, x5_reg, uhx1o0, uhx1o1);
uhx2: hadamard2 generic map(N=>N) port map (x2_reg, x6_reg, uhx2o0, uhx2o1);
uhx3: hadamard2 generic map(N=>N) port map (x3_reg, x7_reg, uhx3o0, uhx3o1);
uhx4: hadamard2 generic map(N=>N) port map (uhx0o0_reg, uhx2o0_reg, uhx4o0, uhx4o1);
uhx5: hadamard2 generic map(N=>N) port map (uhx0o1_reg, uhx2o1_reg, uhx5o0, uhx5o1);
uhx6: hadamard2 generic map(N=>N) port map (uhx1o0_reg, uhx3o0_reg, uhx6o0, uhx6o1);
uhx7: hadamard2 generic map(N=>N) port map (uhx1o1_reg, uhx3o1_reg, uhx7o0, uhx7o1);

reguhx00: reg generic map(N=>N) port map (uhx0o0_reg,clk,uhx0o0);
reguhx01: reg generic map(N=>N) port map (uhx0o1_reg,clk,uhx0o1);
reguhx10: reg generic map(N=>N) port map (uhx1o0_reg,clk,uhx1o0);
reguhx11: reg generic map(N=>N) port map (uhx1o1_reg,clk,uhx1o1);
reguhx20: reg generic map(N=>N) port map (uhx2o0_reg,clk,uhx2o0);
reguhx21: reg generic map(N=>N) port map (uhx2o1_reg,clk,uhx2o1);
reguhx30: reg generic map(N=>N) port map (uhx3o0_reg,clk,uhx3o0);
reguhx31: reg generic map(N=>N) port map (uhx3o1_reg,clk,uhx3o1);
reguhx40: reg generic map(N=>N) port map (uhx4o0_reg,clk,uhx4o0);
reguhx41: reg generic map(N=>N) port map (uhx4o1_reg,clk,uhx4o1);
reguhx50: reg generic map(N=>N) port map (uhx5o0_reg,clk,uhx5o0);
reguhx51: reg generic map(N=>N) port map (uhx5o1_reg,clk,uhx5o1);
reguhx60: reg generic map(N=>N) port map (uhx6o0_reg,clk,uhx6o0);
reguhx61: reg generic map(N=>N) port map (uhx6o1_reg,clk,uhx6o1);
reguhx70: reg generic map(N=>N) port map (uhx7o0_reg,clk,uhx7o0);
reguhx71: reg generic map(N=>N) port map (uhx7o1_reg,clk,uhx7o1);

uhx8: hadamard2 generic map(N=>N) port map (uhx4o0_reg, uhx6o0_reg, uhx8o0, uhx8o1);
uhx9: hadamard2 generic map(N=>N) port map (uhx4o1_reg, uhx6o1_reg, uhx9o0, uhx9o1);
uhx10: hadamard2 generic map(N=>N) port map (uhx5o0_reg, uhx7o0_reg, uhx10o0, uhx10o1);
uhx11: hadamard2 generic map(N=>N) port map (uhx5o1_reg, uhx7o1_reg, uhx11o0, uhx11o1);

uhc0: hadamard2 generic map(N=>2*N) port map (yc0_reg, yc1_reg, uhc0o0, uhc0o1);
uhc1: hadamard2 generic map(N=>2*N) port map (yc2_reg, yc3_reg, uhc1o0, uhc1o1);
uhc2: hadamard2 generic map(N=>2*N) port map (yc4_reg, yc5_reg, uhc2o0, uhc2o1);
uhc3: hadamard2 generic map(N=>2*N) port map (yc6_reg, yc7_reg, uhc3o0, uhc3o1);

uhc4: hadamard2 generic map(N=>2*N) port map (uhc0o0_reg, uhc1o0_reg, uhc4o0, uhc4o1);
uhc5: hadamard2 generic map(N=>2*N) port map (uhc2o0_reg, uhc3o0_reg, uhc5o0, uhc5o1);
uhc6: hadamard2 generic map(N=>2*N) port map (uhc0o1_reg, uhc1o1_reg, uhc6o0, uhc6o1);
uhc7: hadamard2 generic map(N=>2*N) port map (uhc2o1_reg, uhc3o1_reg, uhc7o0, uhc7o1);

uhc8: hadamard2 generic map(N=>2*N) port map (uhc4o0_reg, uhc5o0_reg, uhc8o0, uhc8o1);
uhc9: hadamard2 generic map(N=>2*N) port map (uhc6o0_reg, uhc7o0_reg, uhc9o0, uhc9o1);
uhc10: hadamard2 generic map(N=>2*N) port map (uhc4o1_reg, uhc5o1_reg, uhc10o0, uhc10o1);
uhc11: hadamard2 generic map(N=>2*N) port map (uhc6o1_reg, uhc7o1_reg, uhc11o0, uhc11o1);

reguhc00: reg generic map(N=>2*N) port map (uhc0o0_reg,clk,uhc0o0);
reguhc01: reg generic map(N=>2*N) port map (uhc0o1_reg,clk,uhc0o1);
reguhc10: reg generic map(N=>2*N) port map (uhc1o0_reg,clk,uhc1o0);
reguhc11: reg generic map(N=>2*N) port map (uhc1o1_reg,clk,uhc1o1);
reguhc20: reg generic map(N=>2*N) port map (uhc2o0_reg,clk,uhc2o0);
reguhc21: reg generic map(N=>2*N) port map (uhc2o1_reg,clk,uhc2o1);
reguhc30: reg generic map(N=>2*N) port map (uhc3o0_reg,clk,uhc3o0);
reguhc31: reg generic map(N=>2*N) port map (uhc3o1_reg,clk,uhc3o1);
reguhc40: reg generic map(N=>2*N) port map (uhc4o0_reg,clk,uhc4o0);
reguhc41: reg generic map(N=>2*N) port map (uhc4o1_reg,clk,uhc4o1);
reguhc50: reg generic map(N=>2*N) port map (uhc5o0_reg,clk,uhc5o0);
reguhc51: reg generic map(N=>2*N) port map (uhc5o1_reg,clk,uhc5o1);
reguhc60: reg generic map(N=>2*N) port map (uhc6o0_reg,clk,uhc6o0);
reguhc61: reg generic map(N=>2*N) port map (uhc6o1_reg,clk,uhc6o1);
reguhc70: reg generic map(N=>2*N) port map (uhc7o0_reg,clk,uhc7o0);
reguhc71: reg generic map(N=>2*N) port map (uhc7o1_reg,clk,uhc7o1);

reguhb0: reg generic map(N=>N) port map (uhb8o0_reg,clk,uhb8o0);
reguhb1: reg generic map(N=>N) port map (uhb8o1_reg,clk,uhb8o1);
reguhb2: reg generic map(N=>N) port map (uhb9o0_reg,clk,uhb9o0);
reguhb3: reg generic map(N=>N) port map (uhb9o1_reg,clk,uhb9o1);
reguhb4: reg generic map(N=>N) port map (uhb10o0_reg,clk,uhb10o0);
reguhb5: reg generic map(N=>N) port map (uhb10o1_reg,clk,uhb10o1);
reguhb6: reg generic map(N=>N) port map (uhb11o0_reg,clk,uhb11o0);
reguhb7: reg generic map(N=>N) port map (uhb11o1_reg,clk,uhb11o1);

reguhx0: reg generic map(N=>N) port map (uhx8o0_reg,clk,uhx8o0);
reguhx1: reg generic map(N=>N) port map (uhx8o1_reg,clk,uhx8o1);
reguhx2: reg generic map(N=>N) port map (uhx9o0_reg,clk,uhx9o0);
reguhx3: reg generic map(N=>N) port map (uhx9o1_reg,clk,uhx9o1);
reguhx4: reg generic map(N=>N) port map (uhx10o0_reg,clk,uhx10o0);
reguhx5: reg generic map(N=>N) port map (uhx10o1_reg,clk,uhx10o1);
reguhx6: reg generic map(N=>N) port map (uhx11o0_reg,clk,uhx11o0);
reguhx7: reg generic map(N=>N) port map (uhx11o1_reg,clk,uhx11o1);

reguhc0: reg generic map(N=>2*N) port map (uhc8o0_reg,clk,uhc8o0);
reguhc1: reg generic map(N=>2*N) port map (uhc8o1_reg,clk,uhc8o1);
reguhc2: reg generic map(N=>2*N) port map (uhc9o0_reg,clk,uhc9o0);
reguhc3: reg generic map(N=>2*N) port map (uhc9o1_reg,clk,uhc9o1);
reguhc4: reg generic map(N=>2*N) port map (uhc10o0_reg,clk,uhc10o0);
reguhc5: reg generic map(N=>2*N) port map (uhc10o1_reg,clk,uhc10o1);
reguhc6: reg generic map(N=>2*N) port map (uhc11o0_reg,clk,uhc11o0);
reguhc7: reg generic map(N=>2*N) port map (uhc11o1_reg,clk,uhc11o1);

y0r<=-uhc8o0_reg+yc8_d3_reg;
y1r0<=uhc9o0_reg-yc15_d3_reg;
y1r1<=yc21_d3_reg+yc24_d3_reg;
y1r<=y1r0_reg-y1r1_reg;
y2r0<=uhc10o0_reg-yc25_d3_reg;
y2r1<=yc27_d3_reg+yc9_d3_reg;
y2r<=y2r0_reg-y2r1_reg;
y3r0<=uhc11o0_reg-yc12_d3_reg;
y3r1<=yc22_d3_reg+yc28_d3_reg;
y3r<=y3r0_reg-y3r1_reg;
y4r0<=uhc8o1_reg-yc10_d3_reg;
y4r1<=yc13_d3_reg+yc16_d3_reg;
y4r<=y4r0_reg-y4r1_reg;
y5r0<=uhc9o1_reg-yc14_d3_reg;
y5r1<=yc18_d3_reg+yc26_d3_reg;
y5r<=y5r0_reg-y5r1_reg;
y6r0<=uhc10o1_reg-yc17_d3_reg;
y6r1<=yc19_d3_reg+yc29_d3_reg;
y6r<=y6r0_reg-y6r1_reg;
y7r0<=uhc11o1_reg-yc11_d3_reg;
y7r1<=yc20_d3_reg+yc23_d3_reg;
y7r<=y7r0_reg-y7r1_reg;

regy1r0: reg generic map(N=>2*N) port map (y1r0_reg,clk,y1r0);
regy1r1: reg generic map(N=>2*N) port map (y1r1_reg,clk,y1r1);
regy2r0: reg generic map(N=>2*N) port map (y2r0_reg,clk,y2r0);
regy2r1: reg generic map(N=>2*N) port map (y2r1_reg,clk,y2r1);
regy3r0: reg generic map(N=>2*N) port map (y3r0_reg,clk,y3r0);
regy3r1: reg generic map(N=>2*N) port map (y3r1_reg,clk,y3r1);
regy4r0: reg generic map(N=>2*N) port map (y4r0_reg,clk,y4r0);
regy4r1: reg generic map(N=>2*N) port map (y4r1_reg,clk,y4r1);
regy5r0: reg generic map(N=>2*N) port map (y5r0_reg,clk,y5r0);
regy5r1: reg generic map(N=>2*N) port map (y5r1_reg,clk,y5r1);
regy6r0: reg generic map(N=>2*N) port map (y6r0_reg,clk,y6r0);
regy6r1: reg generic map(N=>2*N) port map (y6r1_reg,clk,y6r1);
regy7r0: reg generic map(N=>2*N) port map (y7r0_reg,clk,y7r0);
regy7r1: reg generic map(N=>2*N) port map (y7r1_reg,clk,y7r1);

regy0: reg generic map(N=>2*N) port map (y0,clk,y0r);
regy1: reg generic map(N=>2*N) port map (y1,clk,y1r);
regy2: reg generic map(N=>2*N) port map (y2,clk,y2r);
regy3: reg generic map(N=>2*N) port map (y3,clk,y3r);
regy4: reg generic map(N=>2*N) port map (y4,clk,y4r);
regy5: reg generic map(N=>2*N) port map (y5,clk,y5r);
regy6: reg generic map(N=>2*N) port map (y6,clk,y6r);
regy7: reg generic map(N=>2*N) port map (y7,clk,y7r);

c0<=(uhb8o0_reg(N-1)&uhb8o0_reg(N-1)&uhb8o0_reg(N-1)&uhb8o0_reg(N-1 downto 3));
c1<=(uhb8o1_reg(N-1)&uhb8o1_reg(N-1)&uhb8o1_reg(N-1)&uhb8o1_reg(N-1 downto 3));
c2<=(uhb9o0_reg(N-1)&uhb9o0_reg(N-1)&uhb9o0_reg(N-1)&uhb9o0_reg(N-1 downto 3));
c3<=(uhb9o1_reg(N-1)&uhb9o1_reg(N-1)&uhb9o0_reg(N-1)&uhb9o1_reg(N-1 downto 3));
c4<=(uhb10o0_reg(N-1)&uhb10o0_reg(N-1)&uhb10o0_reg(N-1)&uhb10o0_reg(N-1 downto 3));
c5<=(uhb10o1_reg(N-1)&uhb10o1_reg(N-1)&uhb10o0_reg(N-1)&uhb10o1_reg(N-1 downto 3));
c6<=(uhb11o0_reg(N-1)&uhb11o0_reg(N-1)&uhb11o0_reg(N-1)&uhb11o0_reg(N-1 downto 3));
c7<=(uhb11o1_reg(N-1)&uhb11o1_reg(N-1)&uhb11o0_reg(N-1)&uhb11o1_reg(N-1 downto 3));
c8<=b0_d3_reg(N-2 downto 0)&'0';
c9<=b3_d3_reg(N-2 downto 0)&'0';
c10<=b5_d3_reg(N-2 downto 0)&'0';
c11<=b6_d3_reg(N-2 downto 0)&'0';
c12<=b1_d3_reg(N-2 downto 0)&'0';
c13<=b6_d3_reg(N-2 downto 0)&'0';
c14<=b7_d3_reg(N-2 downto 0)&'0';
c15<=b2_d3_reg(N-2 downto 0)&'0';
c16<=b7_d3_reg(N-2 downto 0)&'0';
c17<=b5_d3_reg(N-2 downto 0)&'0';
c18<=b1_d3_reg(N-2 downto 0)&'0';
c19<=b2_d3_reg(N-2 downto 0)&'0';
c20<=b3_d3_reg(N-2 downto 0)&'0';
c21<=b4_d3_reg(N-2 downto 0)&'0';
c22<=b6_d3_reg(N-2 downto 0)&'0';
c23<=b2_d3_reg(N-2 downto 0)&'0';
c24<=b7_d3_reg(N-2 downto 0)&'0';
c25<=b4_d3_reg(N-2 downto 0)&'0';
c26<=b3_d3_reg(N-2 downto 0)&'0';
c27<=b5_d3_reg(N-2 downto 0)&'0';
c28<=b4_d3_reg(N-2 downto 0)&'0';
c29<=b1_d3_reg(N-2 downto 0)&'0';

regc0: reg generic map(N=>N) port map (c0_reg,clk,c0);
regc1: reg generic map(N=>N) port map (c1_reg,clk,c1);
regc2: reg generic map(N=>N) port map (c2_reg,clk,c2);
regc3: reg generic map(N=>N) port map (c3_reg,clk,c3);
regc4: reg generic map(N=>N) port map (c4_reg,clk,c4);
regc5: reg generic map(N=>N) port map (c5_reg,clk,c5);
regc6: reg generic map(N=>N) port map (c6_reg,clk,c6);
regc7: reg generic map(N=>N) port map (c7_reg,clk,c7);
regc8: reg generic map(N=>N) port map (c8_reg,clk,c8);
regc9: reg generic map(N=>N) port map (c9_reg,clk,c9);
regc10: reg generic map(N=>N) port map (c10_reg,clk,c10);
regc11: reg generic map(N=>N) port map (c11_reg,clk,c11);
regc12: reg generic map(N=>N) port map (c12_reg,clk,c12);
regc13: reg generic map(N=>N) port map (c13_reg,clk,c13);
regc14: reg generic map(N=>N) port map (c14_reg,clk,c14);
regc15: reg generic map(N=>N) port map (c15_reg,clk,c15);
regc16: reg generic map(N=>N) port map (c16_reg,clk,c16);
regc17: reg generic map(N=>N) port map (c17_reg,clk,c17);
regc18: reg generic map(N=>N) port map (c18_reg,clk,c18);
regc19: reg generic map(N=>N) port map (c19_reg,clk,c19);
regc20: reg generic map(N=>N) port map (c20_reg,clk,c20);
regc21: reg generic map(N=>N) port map (c21_reg,clk,c21);
regc22: reg generic map(N=>N) port map (c22_reg,clk,c22);
regc23: reg generic map(N=>N) port map (c23_reg,clk,c23);
regc24: reg generic map(N=>N) port map (c24_reg,clk,c24);
regc25: reg generic map(N=>N) port map (c25_reg,clk,c25);
regc26: reg generic map(N=>N) port map (c26_reg,clk,c26);
regc27: reg generic map(N=>N) port map (c27_reg,clk,c27);
regc28: reg generic map(N=>N) port map (c28_reg,clk,c28);
regc29: reg generic map(N=>N) port map (c29_reg,clk,c29);

yc0<=c0_reg*uhx8o0_reg;
yc1<=c1_reg*uhx8o1_reg;
yc2<=c2_reg*uhx9o0_reg;
yc3<=c3_reg*uhx9o1_reg;
yc4<=c4_reg*uhx10o0_reg;
yc5<=c5_reg*uhx10o1_reg;
yc6<=c6_reg*uhx11o0_reg;
yc7<=c7_reg*uhx11o1_reg;
yc8<=c8_reg*x0_d3_reg;
yc9<=c9_reg*x1_d3_reg;
yc10<=c10_reg*x1_d3_reg;
yc11<=c11_reg*x1_d3_reg;
yc12<=c12_reg*x2_d3_reg;
yc13<=c13_reg*x2_d3_reg;
yc14<=c14_reg*x2_d3_reg;
yc15<=c15_reg*x3_d3_reg;
yc16<=c16_reg*x3_d3_reg;
yc17<=c17_reg*x3_d3_reg;
yc18<=c18_reg*x4_d3_reg;
yc19<=c19_reg*x4_d3_reg;
yc20<=c20_reg*x4_d3_reg;
yc21<=c21_reg*x5_d3_reg;
yc22<=c22_reg*x5_d3_reg;
yc23<=c23_reg*x5_d3_reg;
yc24<=c24_reg*x6_d3_reg;
yc25<=c25_reg*x6_d3_reg;
yc26<=c26_reg*x6_d3_reg;
yc27<=c27_reg*x7_d3_reg;
yc28<=c28_reg*x7_d3_reg;
yc29<=c29_reg*x7_d3_reg;

delay3c8: delay3 generic map(N=>2*N) port map (yc8_d3_reg,clk,yc8_reg);
delay3c9: delay3 generic map(N=>2*N) port map (yc9_d3_reg,clk,yc9_reg);
delay3c10: delay3 generic map(N=>2*N) port map (yc10_d3_reg,clk,yc10_reg);
delay3c11: delay3 generic map(N=>2*N) port map (yc11_d3_reg,clk,yc11_reg);
delay3c12: delay3 generic map(N=>2*N) port map (yc12_d3_reg,clk,yc12_reg);
delay3c13: delay3 generic map(N=>2*N) port map (yc13_d3_reg,clk,yc13_reg);
delay3c14: delay3 generic map(N=>2*N) port map (yc14_d3_reg,clk,yc14_reg);
delay3c15: delay3 generic map(N=>2*N) port map (yc15_d3_reg,clk,yc15_reg);
delay3c16: delay3 generic map(N=>2*N) port map (yc16_d3_reg,clk,yc16_reg);
delay3c17: delay3 generic map(N=>2*N) port map (yc17_d3_reg,clk,yc17_reg);
delay3c18: delay3 generic map(N=>2*N) port map (yc18_d3_reg,clk,yc18_reg);
delay3c19: delay3 generic map(N=>2*N) port map (yc19_d3_reg,clk,yc19_reg);
delay3c20: delay3 generic map(N=>2*N) port map (yc20_d3_reg,clk,yc20_reg);
delay3c21: delay3 generic map(N=>2*N) port map (yc21_d3_reg,clk,yc21_reg);
delay3c22: delay3 generic map(N=>2*N) port map (yc22_d3_reg,clk,yc22_reg);
delay3c23: delay3 generic map(N=>2*N) port map (yc23_d3_reg,clk,yc23_reg);
delay3c24: delay3 generic map(N=>2*N) port map (yc24_d3_reg,clk,yc24_reg);
delay3c25: delay3 generic map(N=>2*N) port map (yc25_d3_reg,clk,yc25_reg);
delay3c26: delay3 generic map(N=>2*N) port map (yc26_d3_reg,clk,yc26_reg);
delay3c27: delay3 generic map(N=>2*N) port map (yc27_d3_reg,clk,yc27_reg);
delay3c28: delay3 generic map(N=>2*N) port map (yc28_d3_reg,clk,yc28_reg);
delay3c29: delay3 generic map(N=>2*N) port map (yc29_d3_reg,clk,yc29_reg);

regyc0: reg generic map(N=>2*N) port map (yc0_reg,clk,yc0);
regyc1: reg generic map(N=>2*N) port map (yc1_reg,clk,yc1);
regyc2: reg generic map(N=>2*N) port map (yc2_reg,clk,yc2);
regyc3: reg generic map(N=>2*N) port map (yc3_reg,clk,yc3);
regyc4: reg generic map(N=>2*N) port map (yc4_reg,clk,yc4);
regyc5: reg generic map(N=>2*N) port map (yc5_reg,clk,yc5);
regyc6: reg generic map(N=>2*N) port map (yc6_reg,clk,yc6);
regyc7: reg generic map(N=>2*N) port map (yc7_reg,clk,yc7);
regyc8: reg generic map(N=>2*N) port map (yc8_reg,clk,yc8);
regyc9: reg generic map(N=>2*N) port map (yc9_reg,clk,yc9);
regyc10: reg generic map(N=>2*N) port map (yc10_reg,clk,yc10);
regyc11: reg generic map(N=>2*N) port map (yc11_reg,clk,yc11);
regyc12: reg generic map(N=>2*N) port map (yc12_reg,clk,yc12);
regyc13: reg generic map(N=>2*N) port map (yc13_reg,clk,yc13);
regyc14: reg generic map(N=>2*N) port map (yc14_reg,clk,yc14);
regyc15: reg generic map(N=>2*N) port map (yc15_reg,clk,yc15);
regyc16: reg generic map(N=>2*N) port map (yc16_reg,clk,yc16);
regyc17: reg generic map(N=>2*N) port map (yc17_reg,clk,yc17);
regyc18: reg generic map(N=>2*N) port map (yc18_reg,clk,yc18);
regyc19: reg generic map(N=>2*N) port map (yc19_reg,clk,yc19);
regyc20: reg generic map(N=>2*N) port map (yc20_reg,clk,yc20);
regyc21: reg generic map(N=>2*N) port map (yc21_reg,clk,yc21);
regyc22: reg generic map(N=>2*N) port map (yc22_reg,clk,yc22);
regyc23: reg generic map(N=>2*N) port map (yc23_reg,clk,yc23);
regyc24: reg generic map(N=>2*N) port map (yc24_reg,clk,yc24);
regyc25: reg generic map(N=>2*N) port map (yc25_reg,clk,yc25);
regyc26: reg generic map(N=>2*N) port map (yc26_reg,clk,yc26);
regyc27: reg generic map(N=>2*N) port map (yc27_reg,clk,yc27);
regyc28: reg generic map(N=>2*N) port map (yc28_reg,clk,yc28);
regyc29: reg generic map(N=>2*N) port map (yc29_reg,clk,yc29);
End architecture proposed;

Architecture RTL of octonions is

signal x0_reg, x1_reg, x2_reg, x3_reg, x4_reg, x5_reg, x6_reg, x7_reg:SIGNED(N-1 downto 0);
signal b0_reg, b1_reg, b2_reg, b3_reg, b4_reg, b5_reg, b6_reg, b7_reg:SIGNED(N-1 downto 0);
signal y0r0, y0r1, y0r2, y0r3, y0r4, y0r5, y0r6, y0r7 : SIGNED(2*N-1 downto 0);
signal y1r0, y1r1, y1r2, y1r3, y1r4, y1r5, y1r6, y1r7 : SIGNED(2*N-1 downto 0);
signal y2r0, y2r1, y2r2, y2r3, y2r4, y2r5, y2r6, y2r7 : SIGNED(2*N-1 downto 0);
signal y3r0, y3r1, y3r2, y3r3, y3r4, y3r5, y3r6, y3r7 : SIGNED(2*N-1 downto 0);
signal y4r0, y4r1, y4r2, y4r3, y4r4, y4r5, y4r6, y4r7 : SIGNED(2*N-1 downto 0);
signal y5r0, y5r1, y5r2, y5r3, y5r4, y5r5, y5r6, y5r7 : SIGNED(2*N-1 downto 0);
signal y6r0, y6r1, y6r2, y6r3, y6r4, y6r5, y6r6, y6r7 : SIGNED(2*N-1 downto 0);
signal y7r0, y7r1, y7r2, y7r3, y7r4, y7r5, y7r6, y7r7 : SIGNED(2*N-1 downto 0);
signal y0r0_reg, y0r1_reg, y0r2_reg, y0r3_reg, y0r4_reg, y0r5_reg, y0r6_reg, y0r7_reg : SIGNED(2*N-1 downto 0);
signal y1r0_reg, y1r1_reg, y1r2_reg, y1r3_reg, y1r4_reg, y1r5_reg, y1r6_reg, y1r7_reg : SIGNED(2*N-1 downto 0);
signal y2r0_reg, y2r1_reg, y2r2_reg, y2r3_reg, y2r4_reg, y2r5_reg, y2r6_reg, y2r7_reg : SIGNED(2*N-1 downto 0);
signal y3r0_reg, y3r1_reg, y3r2_reg, y3r3_reg, y3r4_reg, y3r5_reg, y3r6_reg, y3r7_reg : SIGNED(2*N-1 downto 0);
signal y4r0_reg, y4r1_reg, y4r2_reg, y4r3_reg, y4r4_reg, y4r5_reg, y4r6_reg, y4r7_reg : SIGNED(2*N-1 downto 0);
signal y5r0_reg, y5r1_reg, y5r2_reg, y5r3_reg, y5r4_reg, y5r5_reg, y5r6_reg, y5r7_reg : SIGNED(2*N-1 downto 0);
signal y6r0_reg, y6r1_reg, y6r2_reg, y6r3_reg, y6r4_reg, y6r5_reg, y6r6_reg, y6r7_reg : SIGNED(2*N-1 downto 0);
signal y7r0_reg, y7r1_reg, y7r2_reg, y7r3_reg, y7r4_reg, y7r5_reg, y7r6_reg, y7r7_reg : SIGNED(2*N-1 downto 0);
signal y0o,y1o,y2o,y3o,y4o,y5o,y6o,y7o : SIGNED(2*N-1 downto 0);
signal y00s1,y01s1, y02s1, y03s1, y00s2,y01s2 : SIGNED(2*N-1 downto 0);
signal y00s1_reg,y01s1_reg, y02s1_reg, y03s1_reg, y00s2_reg,y01s2_reg : SIGNED(2*N-1 downto 0);
signal y10s1,y11s1, y12s1, y13s1, y10s2,y11s2 : SIGNED(2*N-1 downto 0);
signal y10s1_reg,y11s1_reg, y12s1_reg, y13s1_reg, y10s2_reg,y11s2_reg : SIGNED(2*N-1 downto 0);
signal y20s1,y21s1, y22s1, y23s1, y20s2,y21s2 : SIGNED(2*N-1 downto 0);
signal y20s1_reg,y21s1_reg, y22s1_reg, y23s1_reg, y20s2_reg,y21s2_reg : SIGNED(2*N-1 downto 0);
signal y30s1,y31s1, y32s1, y33s1, y30s2,y31s2 : SIGNED(2*N-1 downto 0);
signal y30s1_reg,y31s1_reg, y32s1_reg, y33s1_reg, y30s2_reg,y31s2_reg : SIGNED(2*N-1 downto 0);
signal y40s1,y41s1, y42s1, y43s1, y40s2,y41s2 : SIGNED(2*N-1 downto 0);
signal y40s1_reg,y41s1_reg, y42s1_reg, y43s1_reg, y40s2_reg,y41s2_reg : SIGNED(2*N-1 downto 0);
signal y50s1,y51s1, y52s1, y53s1, y50s2,y51s2 : SIGNED(2*N-1 downto 0);
signal y50s1_reg,y51s1_reg, y52s1_reg, y53s1_reg, y50s2_reg,y51s2_reg : SIGNED(2*N-1 downto 0);
signal y60s1,y61s1, y62s1, y63s1, y60s2,y61s2 : SIGNED(2*N-1 downto 0);
signal y60s1_reg,y61s1_reg, y62s1_reg, y63s1_reg, y60s2_reg,y61s2_reg : SIGNED(2*N-1 downto 0);
signal y70s1,y71s1, y72s1, y73s1, y70s2,y71s2 : SIGNED(2*N-1 downto 0);
signal y70s1_reg,y71s1_reg, y72s1_reg, y73s1_reg, y70s2_reg,y71s2_reg : SIGNED(2*N-1 downto 0);

component reg is 
Generic (N: NATURAL:=8);
   port(
      Q : out SIGNED(N-1 downto 0);   
      Clk :in std_logic;   
      D :in  SIGNED(N-1 downto 0)   
   );
end component;
Begin

regx0: reg generic map(N=>N) port map (x0_reg,clk,x0);
regx1: reg generic map(N=>N) port map (x1_reg,clk,x1);
regx2: reg generic map(N=>N) port map (x2_reg,clk,x2);
regx3: reg generic map(N=>N) port map (x3_reg,clk,x3);
regx4: reg generic map(N=>N) port map (x4_reg,clk,x4);
regx5: reg generic map(N=>N) port map (x5_reg,clk,x5);
regx6: reg generic map(N=>N) port map (x6_reg,clk,x6);
regx7: reg generic map(N=>N) port map (x7_reg,clk,x7);

regb0: reg generic map(N=>N) port map (b0_reg,clk,b0);
regb1: reg generic map(N=>N) port map (b1_reg,clk,b1);
regb2: reg generic map(N=>N) port map (b2_reg,clk,b2);
regb3: reg generic map(N=>N) port map (b3_reg,clk,b3);
regb4: reg generic map(N=>N) port map (b4_reg,clk,b4);
regb5: reg generic map(N=>N) port map (b5_reg,clk,b5);
regb6: reg generic map(N=>N) port map (b6_reg,clk,b6);
regb7: reg generic map(N=>N) port map (b7_reg,clk,b7);

y0r0<=b0_reg*x0_reg;
y0r1<=b1_reg*x1_reg;
y0r2<=b2_reg*x2_reg;
y0r3<=b3_reg*x3_reg;
y0r4<=b4_reg*x4_reg;
y0r5<=b5_reg*x5_reg;
y0r6<=b6_reg*x6_reg;
y0r7<=b7_reg*x7_reg;

y00_reg: reg generic map(N=>2*N) port map (y0r0_reg,clk,y0r0);
y01_reg: reg generic map(N=>2*N) port map (y0r1_reg,clk,y0r1);
y02_reg: reg generic map(N=>2*N) port map (y0r2_reg,clk,y0r2);                                                                  
y03_reg: reg generic map(N=>2*N) port map (y0r3_reg,clk,y0r3);
y04_reg: reg generic map(N=>2*N) port map (y0r4_reg,clk,y0r4);
y05_reg: reg generic map(N=>2*N) port map (y0r5_reg,clk,y0r5);
y06_reg: reg generic map(N=>2*N) port map (y0r6_reg,clk,y0r6);
y07_reg: reg generic map(N=>2*N) port map (y0r7_reg,clk,y0r7);

y00s1<=y0r0_reg - y0r1_reg;
y01s1<=- y0r2_reg - y0r3_reg;
y02s1<=- y0r4_reg - y0r5_reg;
y03s1<=- y0r6_reg - y0r7_reg;

y00s1r_reg: reg generic map(N=>2*N) port map (y00s1_reg,clk,y00s1);
y01s1r_reg: reg generic map(N=>2*N) port map (y01s1_reg,clk,y01s1);
y02s1r_reg: reg generic map(N=>2*N) port map (y02s1_reg,clk,y02s1);                                                                  
y03s1r_reg: reg generic map(N=>2*N) port map (y03s1_reg,clk,y03s1);


y00s2<=y00s1_reg+y01s1_reg;
y01s2<=y02s1_reg+y03s1_reg;

y00s2r_reg: reg generic map(N=>2*N) port map (y00s2_reg,clk,y00s2);
y01s2r_reg: reg generic map(N=>2*N) port map (y01s2_reg,clk,y01s2);

  y0o<=y00s2_reg + y01s2_reg;
  
 y1r0<=b0_reg*x1_reg;
  y1r1<=b1_reg*x0_reg;
  y1r2<=b2_reg*x3_reg ;
  y1r3<=b3_reg*x2_reg;
  y1r4<=b4_reg*x5_reg;
  y1r5<=b5_reg*x4_reg;
  y1r6<=b6_reg*x7_reg;
  y1r7<=b7_reg*x6_reg;
  
  y10_reg: reg generic map(N=>2*N) port map (y1r0_reg,clk,y1r0);
  y11_reg: reg generic map(N=>2*N) port map (y1r1_reg,clk,y1r1);
  y12_reg: reg generic map(N=>2*N) port map (y1r2_reg,clk,y1r2);                                                                  
  y13_reg: reg generic map(N=>2*N) port map (y1r3_reg,clk,y1r3);
  y14_reg: reg generic map(N=>2*N) port map (y1r4_reg,clk,y1r4);
  y15_reg: reg generic map(N=>2*N) port map (y1r5_reg,clk,y1r5);
  y16_reg: reg generic map(N=>2*N) port map (y1r6_reg,clk,y1r6);
  y17_reg: reg generic map(N=>2*N) port map (y1r7_reg,clk,y1r7); 
  
  y10s1<=y1r0_reg + y1r1_reg;
y11s1<=- y1r2_reg + y1r3_reg;
y12s1<=- y1r4_reg + y1r5_reg;
y13s1<=y1r6_reg - y1r7_reg;

y10s1r_reg: reg generic map(N=>2*N) port map (y10s1_reg,clk,y10s1);
y11s1r_reg: reg generic map(N=>2*N) port map (y11s1_reg,clk,y11s1);
y12s1r_reg: reg generic map(N=>2*N) port map (y12s1_reg,clk,y12s1);                                                                  
y13s1r_reg: reg generic map(N=>2*N) port map (y13s1_reg,clk,y13s1);


y10s2<=y10s1_reg+y11s1_reg;
y11s2<=y12s1_reg+y13s1_reg;

y10s2r_reg: reg generic map(N=>2*N) port map (y10s2_reg,clk,y10s2);
y11s2r_reg: reg generic map(N=>2*N) port map (y11s2_reg,clk,y11s2);
  
  y1o<=y10s2_reg + y11s2_reg ;
  
   y2r0<=b0_reg*x2_reg;
  y2r1<=b1_reg*x3_reg;
  y2r2<=b2_reg*x0_reg;
  y2r3<=b3_reg*x1_reg;
  y2r4<=b4_reg*x6_reg;
  y2r5<=b5_reg*x7_reg;
  y2r6<=b6_reg*x4_reg;
  y2r7<=b7_reg*x5_reg;
  
  y20_reg: reg generic map(N=>2*N) port map (y2r0_reg,clk,y2r0);
  y21_reg: reg generic map(N=>2*N) port map (y2r1_reg,clk,y2r1);
  y22_reg: reg generic map(N=>2*N) port map (y2r2_reg,clk,y2r2);                                                                  
  y23_reg: reg generic map(N=>2*N) port map (y2r3_reg,clk,y2r3);
  y24_reg: reg generic map(N=>2*N) port map (y2r4_reg,clk,y2r4);
  y25_reg: reg generic map(N=>2*N) port map (y2r5_reg,clk,y2r5);
  y26_reg: reg generic map(N=>2*N) port map (y2r6_reg,clk,y2r6);
  y27_reg: reg generic map(N=>2*N) port map (y2r7_reg,clk,y2r7); 
  
  y20s1<=y2r0_reg + y2r1_reg;
y21s1<=y2r2_reg - y2r3_reg;
y22s1<=- y2r4_reg - y2r5_reg ;
y23s1<=y2r6_reg + y2r7_reg;

y20s1r_reg: reg generic map(N=>2*N) port map (y20s1_reg,clk,y20s1);
y21s1r_reg: reg generic map(N=>2*N) port map (y21s1_reg,clk,y21s1);
y22s1r_reg: reg generic map(N=>2*N) port map (y22s1_reg,clk,y22s1);                                                                  
y23s1r_reg: reg generic map(N=>2*N) port map (y23s1_reg,clk,y23s1);


y20s2<=y20s1_reg+y21s1_reg;
y21s2<=y22s1_reg+y23s1_reg;

y20s2r_reg: reg generic map(N=>2*N) port map (y20s2_reg,clk,y20s2);
y21s2r_reg: reg generic map(N=>2*N) port map (y21s2_reg,clk,y21s2);
  
  y2o<=y20s2_reg + y21s2_reg ;
  

  
     y3r0<=b0_reg*x3_reg;
y3r1<=b1_reg*x2_reg;
y3r2<=b2_reg*x1_reg;
y3r3<=b3_reg*x0_reg;
y3r4<=b4_reg*x7_reg;
y3r5<=b5_reg*x6_reg;
y3r6<=b6_reg*x5_reg;
y3r7<=b7_reg*x4_reg;

y30_reg: reg generic map(N=>2*N) port map (y3r0_reg,clk,y3r0);
y31_reg: reg generic map(N=>2*N) port map (y3r1_reg,clk,y3r1);
y32_reg: reg generic map(N=>2*N) port map (y3r2_reg,clk,y3r2);                                                                  
y33_reg: reg generic map(N=>2*N) port map (y3r3_reg,clk,y3r3);
y34_reg: reg generic map(N=>2*N) port map (y3r4_reg,clk,y3r4);
y35_reg: reg generic map(N=>2*N) port map (y3r5_reg,clk,y3r5);
y36_reg: reg generic map(N=>2*N) port map (y3r6_reg,clk,y3r6);
y37_reg: reg generic map(N=>2*N) port map (y3r7_reg,clk,y3r7); 

  y30s1<=y3r0_reg - y3r1_reg;
y31s1<=y3r2_reg + y3r3_reg;
y32s1<=- y3r4_reg + y3r5_reg;
y33s1<=- y3r6_reg + y3r7_reg;

y30s1r_reg: reg generic map(N=>2*N) port map (y30s1_reg,clk,y30s1);
y31s1r_reg: reg generic map(N=>2*N) port map (y31s1_reg,clk,y31s1);
y32s1r_reg: reg generic map(N=>2*N) port map (y32s1_reg,clk,y32s1);                                                                  
y33s1r_reg: reg generic map(N=>2*N) port map (y33s1_reg,clk,y33s1);


y30s2<=y30s1_reg+y31s1_reg;
y31s2<=y32s1_reg+y33s1_reg;

y30s2r_reg: reg generic map(N=>2*N) port map (y30s2_reg,clk,y30s2);
y31s2r_reg: reg generic map(N=>2*N) port map (y31s2_reg,clk,y31s2);
  
  y3o<=y30s2_reg + y31s2_reg ;
  

   
     y4r0<=b0_reg*x4_reg;
y4r1<=b1_reg*x5_reg;
y4r2<=b2_reg*x6_reg;
y4r3<=b3_reg*x7_reg;
y4r4<=b4_reg*x0_reg;
y4r5<=b5_reg*x1_reg;
y4r6<=b6_reg*x2_reg;
y4r7<=b7_reg*x3_reg;

y40_reg: reg generic map(N=>2*N) port map (y4r0_reg,clk,y4r0);
y41_reg: reg generic map(N=>2*N) port map (y4r1_reg,clk,y4r1);
y42_reg: reg generic map(N=>2*N) port map (y4r2_reg,clk,y4r2);                                                                  
y43_reg: reg generic map(N=>2*N) port map (y4r3_reg,clk,y4r3);
y44_reg: reg generic map(N=>2*N) port map (y4r4_reg,clk,y4r4);
y45_reg: reg generic map(N=>2*N) port map (y4r5_reg,clk,y4r5);
y46_reg: reg generic map(N=>2*N) port map (y4r6_reg,clk,y4r6);
y47_reg: reg generic map(N=>2*N) port map (y4r7_reg,clk,y4r7); 

  y40s1<=y4r0_reg + y4r1_reg;
y41s1<=y4r2_reg + y4r3_reg;
y42s1<=y4r4_reg - y4r5_reg;
y43s1<=- y4r6_reg - y4r7_reg;

y40s1r_reg: reg generic map(N=>2*N) port map (y40s1_reg,clk,y40s1);
y41s1r_reg: reg generic map(N=>2*N) port map (y41s1_reg,clk,y41s1);
y42s1r_reg: reg generic map(N=>2*N) port map (y42s1_reg,clk,y42s1);                                                                  
y43s1r_reg: reg generic map(N=>2*N) port map (y43s1_reg,clk,y43s1);


y40s2<=y40s1_reg+y41s1_reg;
y41s2<=y42s1_reg+y43s1_reg;

y40s2r_reg: reg generic map(N=>2*N) port map (y40s2_reg,clk,y40s2);
y41s2r_reg: reg generic map(N=>2*N) port map (y41s2_reg,clk,y41s2);
  
  y4o<=y40s2_reg + y41s2_reg ;


     y5r0<=b0_reg*x5_reg;
y5r1<=b1_reg*x4_reg;
y5r2<=b2_reg*x7_reg;
y5r3<=b3_reg*x6_reg;
y5r4<=b4_reg*x1_reg;
y5r5<=b5_reg*x0_reg;
y5r6<=b6_reg*x3_reg;
y5r7<=b7_reg*x2_reg;

y50_reg: reg generic map(N=>2*N) port map (y5r0_reg,clk,y5r0);
y51_reg: reg generic map(N=>2*N) port map (y5r1_reg,clk,y5r1);
y52_reg: reg generic map(N=>2*N) port map (y5r2_reg,clk,y5r2);                                                                  
y53_reg: reg generic map(N=>2*N) port map (y5r3_reg,clk,y5r3);
y54_reg: reg generic map(N=>2*N) port map (y5r4_reg,clk,y5r4);
y55_reg: reg generic map(N=>2*N) port map (y5r5_reg,clk,y5r5);
y56_reg: reg generic map(N=>2*N) port map (y5r6_reg,clk,y5r6);
y57_reg: reg generic map(N=>2*N) port map (y5r7_reg,clk,y5r7); 

  y50s1<=y5r0_reg - y5r1_reg;
y51s1<=y5r2_reg - y5r3_reg;
y52s1<=y5r4_reg + y5r5_reg;
y53s1<=y5r6_reg - y5r7_reg;

y50s1r_reg: reg generic map(N=>2*N) port map (y50s1_reg,clk,y50s1);
y51s1r_reg: reg generic map(N=>2*N) port map (y51s1_reg,clk,y51s1);
y52s1r_reg: reg generic map(N=>2*N) port map (y52s1_reg,clk,y52s1);                                                                  
y53s1r_reg: reg generic map(N=>2*N) port map (y53s1_reg,clk,y53s1);


y50s2<=y50s1_reg+y51s1_reg;
y51s2<=y52s1_reg+y53s1_reg;

y50s2r_reg: reg generic map(N=>2*N) port map (y50s2_reg,clk,y50s2);
y51s2r_reg: reg generic map(N=>2*N) port map (y51s2_reg,clk,y51s2);
  
  y5o<=y50s2_reg + y51s2_reg ;



     y6r0<=b0_reg*x6_reg;
y6r1<=b1_reg*x7_reg;
y6r2<=b2_reg*x4_reg;
y6r3<=b3_reg*x5_reg;
y6r4<=b4_reg*x2_reg;
y6r5<=b5_reg*x3_reg;
y6r6<=b6_reg*x0_reg;
y6r7<=b7_reg*x1_reg;

y60_reg: reg generic map(N=>2*N) port map (y6r0_reg,clk,y6r0);
y61_reg: reg generic map(N=>2*N) port map (y6r1_reg,clk,y6r1);
y62_reg: reg generic map(N=>2*N) port map (y6r2_reg,clk,y6r2);                                                                  
y63_reg: reg generic map(N=>2*N) port map (y6r3_reg,clk,y6r3);
y64_reg: reg generic map(N=>2*N) port map (y6r4_reg,clk,y6r4);
y65_reg: reg generic map(N=>2*N) port map (y6r5_reg,clk,y6r5);
y66_reg: reg generic map(N=>2*N) port map (y6r6_reg,clk,y6r6);
y67_reg: reg generic map(N=>2*N) port map (y6r7_reg,clk,y6r7); 


  y60s1<=y6r0_reg - y6r1_reg;
y61s1<=y6r3_reg - y6r2_reg;
y62s1<=y6r4_reg - y6r5_reg;
y63s1<=y6r6_reg + y6r7_reg;

y60s1r_reg: reg generic map(N=>2*N) port map (y60s1_reg,clk,y60s1);
y61s1r_reg: reg generic map(N=>2*N) port map (y61s1_reg,clk,y61s1);
y62s1r_reg: reg generic map(N=>2*N) port map (y62s1_reg,clk,y62s1);                                                                  
y63s1r_reg: reg generic map(N=>2*N) port map (y63s1_reg,clk,y63s1);


y60s2<=y60s1_reg+y61s1_reg;
y61s2<=y62s1_reg+y63s1_reg;

y60s2r_reg: reg generic map(N=>2*N) port map (y60s2_reg,clk,y60s2);
y61s2r_reg: reg generic map(N=>2*N) port map (y61s2_reg,clk,y61s2);
  
  y6o<=y60s2_reg + y61s2_reg ;



     y7r0<=b0_reg*x7_reg;
y7r1<=b1_reg*x6_reg ;
y7r2<=b2_reg*x5_reg ;
y7r3<=b3_reg*x4_reg;
y7r4<=b4_reg*x3_reg;
y7r5<=b5_reg*x2_reg;
y7r6<=b6_reg*x1_reg;
y7r7<=b7_reg*x0_reg;

y70_reg: reg generic map(N=>2*N) port map (y7r0_reg,clk,y7r0);
y71_reg: reg generic map(N=>2*N) port map (y7r1_reg,clk,y7r1);
y72_reg: reg generic map(N=>2*N) port map (y7r2_reg,clk,y7r2);                                                                  
y73_reg: reg generic map(N=>2*N) port map (y7r3_reg,clk,y7r3);
y74_reg: reg generic map(N=>2*N) port map (y7r4_reg,clk,y7r4);
y75_reg: reg generic map(N=>2*N) port map (y7r5_reg,clk,y7r5);
y76_reg: reg generic map(N=>2*N) port map (y7r6_reg,clk,y7r6);
y77_reg: reg generic map(N=>2*N) port map (y7r7_reg,clk,y7r7); 

  y70s1<=y7r0_reg + y7r1_reg;
y71s1<=y7r2_reg + y7r3_reg;
y72s1<=y7r4_reg + y7r5_reg;
y73s1<= y7r7_reg - y7r6_reg;

y70s1r_reg: reg generic map(N=>2*N) port map (y70s1_reg,clk,y70s1);
y71s1r_reg: reg generic map(N=>2*N) port map (y71s1_reg,clk,y71s1);
y72s1r_reg: reg generic map(N=>2*N) port map (y72s1_reg,clk,y72s1);                                                                  
y73s1r_reg: reg generic map(N=>2*N) port map (y73s1_reg,clk,y73s1);


y70s2<=y70s1_reg-y71s1_reg;
y71s2<=y72s1_reg+y73s1_reg;

y70s2r_reg: reg generic map(N=>2*N) port map (y70s2_reg,clk,y70s2);
y71s2r_reg: reg generic map(N=>2*N) port map (y71s2_reg,clk,y71s2);
  
  y7o<=y70s2_reg + y71s2_reg ;


y0o_reg: reg generic map(N=>2*N) port map (y0,clk,y0o);
y1o_reg: reg generic map(N=>2*N) port map (y1,clk,y1o);
y2o_reg: reg generic map(N=>2*N) port map (y2,clk,y2o);                                                                  
y3o_reg: reg generic map(N=>2*N) port map (y3,clk,y3o);
y4o_reg: reg generic map(N=>2*N) port map (y4,clk,y4o);
y5o_reg: reg generic map(N=>2*N) port map (y5,clk,y5o);
y6o_reg: reg generic map(N=>2*N) port map (y6,clk,y6o);
y7o_reg: reg generic map(N=>2*N) port map (y7,clk,y7o); 

End architecture RTL;