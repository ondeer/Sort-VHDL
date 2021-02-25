
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity quick1 is
PORT (in1_1,in1_2,in1_3,in1_4,in1_5: IN  STD_LOGIC_VECTOR(7 DOWNTO 0); 
out1_1,out1_2,out1_3,out1_4,out1_5: OUT  STD_LOGIC_VECTOR(7 DOWNTO 0));
end quick1;

architecture level1 of quick1 is

begin
 
PROCESS(in1_1,in1_2,in1_3,in1_4,in1_5) IS
BEGIN 
IF (in1_1 <= in1_3 and in1_5 >=in1_3 ) THEN           
	out1_1<= in1_1;          
	out1_3<= in1_3;
	out1_4<=in1_5;	
	
ELSIF ( in1_5 <= in1_3 and in1_1 >=in1_3 ) THEN           
	out1_1<= in1_5;          
	out1_3<= in1_3;
	out1_4<=in1_1; 
	
ELSIF(in1_1 <= in1_3)THEN	
	out1_1<= in1_1;          
	out1_2<= in1_5;
	out1_3<=in1_3;
	out1_4<=in1_2;
	out1_5<=in1_4;
ELSE
	out1_1<= in1_2;          
	out1_2<= in1_4;
	out1_3<=in1_3;
	out1_4<=in1_1;
	out1_5<=in1_5;	
END IF; 

IF(in1_2 <=in1_3 and in1_4 >=in1_3 ) THEN
	out1_2<= in1_2;
	out1_5<=in1_4;
ELSIF	(in1_4 <=in1_3 and in1_2 >=in1_3) THEN 
	out1_2<= in1_4;
	out1_5<=in1_2;
	
END IF;
END PROCESS;


end level1;

