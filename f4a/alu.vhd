library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_unsigned.all; 

entity alu is                           -----实体声明外部接口
    port ( 
        op: in STD_LOGIC_VECTOR(3 downto 0);   --选择控制运算类型
        accD: in STD_LOGIC_VECTOR(7 downto 0); -- 累加器的8位数据
        dBus: in STD_LOGIC_VECTOR(7 downto 0); -- 数据总线用于运算
        result: out STD_LOGIC_VECTOR(7 downto 0);   --结果的输出
        accZ: out STD_LOGIC 
); 
end alu; 

architecture aluArch of alu is 
SIGNAL temp : STD_LOGIC_VECTOR(15 downto 0);
begin 
--result <= (not accD) + "00000001" when op ="0000" else 
--       accD + dBus when op ="0001" else 
--       accD+"10000000" when op="0010" else
--       dBus+"10000000" when op="0011" else 
--       (not accD)-"00000001" when op="0100" else 
--       accD-dBus when op="0101" else 
--       --accD*dBus when op="0110" else
--       --accD*(not dBus) when op="0111" else 
--       accD when op="0110" else
--       accD when op="0111" else       
--       accD AND  dBus when op="1010" else 
--       accD NAND dBus when op="1011" else 
--       accD OR   dBus when op="1100" else
--       accD NOR  dBus when op="1101" else
--       accD XNOR dBus when op="1110" else
--       NOT accD when op="1111" else 
--       "00000000"; 


temp <= accD*dBus when op="0110" else
        accD*(not dBus) when op="0111"else 
       "0000000000000000";

--修改为下方代码	
result <= (not accD) + "00000001" when op ="0000" else 
       accD + dBus when op ="0001" else 
       accD+"10000000" when op="0010" else
       dBus+"10000000" when op="0011" else 
       (not accD)-"00000001" when op="0100" else 
       accD-dBus when op="0101" else 
       --accD*dBus when op="0110" else
       --accD*(not dBus) when op="0111" else 
		 temp(7 downto 0) when op="0110" else
       temp(7 downto 0) when op="0111" else     
		 --temp(15 downto 8) when op="0110" else
       --temp(15 downto 8) when op="0111" else  
       accD AND  dBus when op="1010" else 
       accD NAND dBus when op="1011" else 
       accD OR   dBus when op="1100" else
       accD NOR  dBus when op="1101" else
       accD XNOR dBus when op="1110" else
       NOT accD when op="1111" else 
       "00000000"; 
		 
 
--result <= accD when op ="0000" else 
--       accD AND dBus when op ="0001" else 
--       accD OR dBus when op="0010" else
--       (not accD) when op="0011" else 
--       accD XOR dBus when op="0100" else 
--       accD + dBus when op="0101" else 
--       accD - dBus when op="0110" else
--       accD + "00000001" when op="0111" else 
--       accD - "00000001" when op="1010" else 
--       "00000000"; 
		 
		 
 accZ <= not (accD(0) or  accD(1) or  accD(2) or  accD(3) or 
          accD(4) or  accD(5) or  accD(6) or  accD(7)
); 
end aluArch;