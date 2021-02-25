

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY quick_test_vhdl IS
END quick_test_vhdl;

ARCHITECTURE behavior OF quick_test_vhdl IS 

	
	COMPONENT sort
	PORT(
		in1 : IN std_logic_vector(7 downto 0);
		in2 : IN std_logic_vector(7 downto 0);
		in3 : IN std_logic_vector(7 downto 0);
		in4 : IN std_logic_vector(7 downto 0);  
		in5 : IN std_logic_vector(7 downto 0);	
		out1 : OUT std_logic_vector(7 downto 0);
		out2 : OUT std_logic_vector(7 downto 0);
		out3 : OUT std_logic_vector(7 downto 0);
		out4 : OUT std_logic_vector(7 downto 0);
		out5 : OUT std_logic_vector(7 downto 0)
		
		);
	END COMPONENT;

	SIGNAL in1 :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL in2 :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL in3 :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL in4 :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL in5 :  std_logic_vector(7 downto 0) := (others=>'0');
	
	SIGNAL out1 :  std_logic_vector(7 downto 0);
	SIGNAL out2 :  std_logic_vector(7 downto 0);
	SIGNAL out3 :  std_logic_vector(7 downto 0);
	SIGNAL out4 :  std_logic_vector(7 downto 0);
	SIGNAL out5 :  std_logic_vector(7 downto 0);

BEGIN


	uut: sort PORT MAP(
		in1 => in1,
		in2 => in2,
		in3 => in3,
		in4 => in4,
		in5 => in5,
		out1 => out1,
		out2 => out2,
		out3 => out3,
		out4 => out4,
		out5 => out5
	);

	tb : PROCESS
	BEGIN

		in1<="01110001";
		in2<="00011101";
		in3<="00101011";
		in4<="00000101";
		in5<="00111110";

		
		
		
		wait for 500 ns;

		

		wait; 
	END PROCESS;

END;
