LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use ieee.std_logic_signed.all;

ENTITY tb IS
Generic(N: Natural:=16);
END tb;
 
ARCHITECTURE behavior OF tb IS 

 
    COMPONENT octonions
	Generic (N:NATURAL:=16);
	Port (
	clk : in std_logic;
	x0,x1,x2,x3,x4,x5,x6,x7  : in  SIGNED(N-1 downto 0);
	b0,b1,b2,b3,b4,b5,b6,b7  : in  SIGNED(N-1 downto 0);
	y0,y1,y2,y3,y4,y5,y6,y7  : out SIGNED(2*N-1 downto 0)   
	);
    END COMPONENT;
    
 
   --Inputs
   signal clk : std_logic :='0';
   signal x0,x1,x2,x3,x4,x5,x6,x7 : signed(N-1 downto 0) := (others => '0');
   signal b0,b1,b2,b3,b4,b5,b6,b7 : signed(N-1 downto 0) := (others => '0');
   signal y0,y1,y2,y3,y4,y5,y6,y7 : signed(2*N-1 downto 0) := (others => '0');
   signal fy0,fy1,fy2,fy3,fy4,fy5,fy6,fy7 : signed(2*N-1 downto 0) := (others => '0');

   for uut1 : octonions use entity work.octonions(proposed);
   for uut2 : octonions use entity work.octonions(rtl);
BEGIN

  uut1: octonions generic map (N=>N) PORT MAP (
          clk => clk,
          x0 => x0,
          x1 => x1,
          x2 => x2,
          x3 => x3,
          x4 => x4,
          x5 => x5,
          x6 => x6,
          x7 => x7,
          b0 => b0,
          b1 => b1,
          b2 => b2,
          b3 => b3,
          b4 => b4,
          b5 => b5,
          b6 => b6,
          b7 => b7,
          y0 => y0,
          y1 => y1,
          y2 => y2,
          y3 => y3,
          y4 => y4,
          y5 => y5,
          y6 => y6,
          y7 => y7
        );

  uut2: octonions generic map (N=>N) PORT MAP (
          clk => clk,
          x0 => x0,
          x1 => x1,
          x2 => x2,
          x3 => x3,
          x4 => x4,
          x5 => x5,
          x6 => x6,
          x7 => x7,
          b0 => b0,
          b1 => b1,
          b2 => b2,
          b3 => b3,
          b4 => b4,
          b5 => b5,
          b6 => b6,
          b7 => b7,
          y0 => fy0,
          y1 => fy1,
          y2 => fy2,
          y3 => fy3,
          y4 => fy4,
          y5 => fy5,
          y6 => fy6,
          y7 => fy7
        );
  process (clk)
  begin
	  clk <= not clk after 5 ns;
  end process;

stim_proc: process
begin		

x0<=X"0010";
x1<=X"0020";
x2<=X"0030";
x3<=X"0040";
x4<=X"0050";
x5<=X"0060";
x6<=X"0070";
x7<=X"0080";
b0<=X"0010";
b1<=X"0020";
b2<=X"0030";
b3<=X"0040";
b4<=X"0050";
b5<=X"0060";
b6<=X"0070";
b7<=X"0080";
wait for 120 ns;
report integer'image(to_integer(fy0)) & " " & integer'image(to_integer(y0)) severity note;
report integer'image(to_integer(fy1)) & " " & integer'image(to_integer(y1)) severity note;
report integer'image(to_integer(fy2)) & " " & integer'image(to_integer(y2)) severity note;
report integer'image(to_integer(fy3)) & " " & integer'image(to_integer(y3)) severity note;
report integer'image(to_integer(fy4)) & " " & integer'image(to_integer(y4)) severity note;
report integer'image(to_integer(fy5)) & " " & integer'image(to_integer(y5)) severity note;
report integer'image(to_integer(fy6)) & " " & integer'image(to_integer(y6)) severity note;
report integer'image(to_integer(fy7)) & " " & integer'image(to_integer(y7)) severity note;
wait;
end process;

END;
