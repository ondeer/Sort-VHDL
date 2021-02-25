
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity quick2 is
PORT (in2_1,in2_2: IN  STD_LOGIC_VECTOR(7 DOWNTO 0); 
out2_1,out2_2: OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)); 
end quick2;

architecture level2 of quick2 is

begin
PROCESS(in2_1, in2_2) IS
BEGIN 
IF (in2_1 <= in2_2) THEN           
	out2_1<= in2_1;          
	out2_2<= in2_2; 
ELSE             
	out2_1<= in2_2;          
	out2_2<= in2_1; 
END IF; 
END PROCESS;

end level2;

