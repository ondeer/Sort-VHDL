
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity sort is
PORT  
(in1, in2, in3, in4,in5: IN STD_LOGIC_VECTOR (7  DOWNTO 0);   
out1,out2,out3,out4,out5:  OUT    STD_LOGIC_VECTOR(7  DOWNTO 0));
end sort;

architecture quick of sort is

COMPONENT quick1 is 
PORT (in1_1,in1_2,in1_3,in1_4,in1_5: IN  STD_LOGIC_VECTOR(7 DOWNTO 0); 
out1_1,out1_2,out1_3,out1_4,out1_5: OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)); 
END COMPONENT;

COMPONENT quick2 is 
PORT (in2_1,in2_2: IN  STD_LOGIC_VECTOR(7 DOWNTO 0); 
out2_1,out2_2: OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)); 
END COMPONENT;

COMPONENT quick3 is 
PORT (in3_1,in3_2,in3_3,in3_4,in3_5: IN  STD_LOGIC_VECTOR(7 DOWNTO 0);    
out3_1,out3_2,out3_3,out3_4,out3_5: OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)); 
END COMPONENT;

SIGNAL a,b,c,d,e,k,l,m,n: STD_LOGIC_VECTOR (7 DOWNTO 0);

begin

lev1:  quick1 PORT MAP (in1,in2,in3,in4,in5,a,b,c,d,e); 
lev2_1:  quick2 PORT MAP (a,b,k,l); 
lev2_2:  quick2 PORT MAP (d,e,m,n);
lev3 :quick3 PORT MAP (k,l,c,m,n,out1,out2,out3,out4,out5);


end quick;

