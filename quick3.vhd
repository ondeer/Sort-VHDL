
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity quick3 is
PORT (in3_1,in3_2,in3_3,in3_4,in3_5: IN  STD_LOGIC_VECTOR(7 DOWNTO 0);    
out3_1,out3_2,out3_3,out3_4,out3_5: OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)); 
end quick3;

architecture level3 of quick3 is
SIGNAL flag: std_logic;


 
BEGIN  
PROCESS (in3_1, in3_2, in3_3, in3_4, in3_5) IS 
BEGIN
flag<='0';
 
IF (in3_1 <= in3_4) THEN             
	out3_1 <= in3_1;
		
ELSIF (in3_1 > in3_4) THEN             
	out3_1 <= in3_4; 
	flag <= '1'; 
end if;    

IF (in3_2<=in3_4 and flag='0') THEN               
	out3_2<= in3_2;  
	out3_3 <= in3_3;	
	out3_4<= in3_4;              
	out3_5<= in3_5; 
ELSIF (flag='0') THEN         
	out3_2<= in3_4; 
	out3_3 <= in3_3;
	out3_4<= in3_5;         
	out3_5<= in3_2;
		
END IF;

IF (in3_5<=in3_1 and flag='1') THEN
	out3_2<= in3_5; 
	out3_3 <= in3_3;
	out3_4<= in3_1;          
	out3_5<= in3_2;
	
ELSIF (in3_5>=in3_2 and flag='1') THEN          
	out3_2<= in3_1;  
	out3_3 <= in3_3;
	out3_4<= in3_2;          
	out3_5<= in3_5;
	
ELSIF (flag='1') THEN          
	out3_2<= in3_1; 
	out3_3 <= in3_3;
	out3_4<= in3_5;          
	out3_5<= in3_2;
	
END IF;                    
END PROCESS; 


end level3;

