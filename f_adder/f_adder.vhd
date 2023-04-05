LIBRARY  IEEE;   --1位二进制全加器
 USE IEEE.STD_LOGIC_1164.ALL;
 ENTITY f_adder IS
   PORT (ain, bin,  cin : IN STD_LOGIC;
              cout, sum : OUT STD_LOGIC);
 END ENTITY f_adder;
 ARCHITECTURE fd1 OF f_adder IS
   COMPONENT h_adder                  --调用半加器声明语句
     PORT (  a, b : IN STD_LOGIC;
           co, so : OUT STD_LOGIC);
   END COMPONENT;
   COMPONENT or2a
      PORT (a, b : IN STD_LOGIC;
               c : OUT STD_LOGIC);
   END COMPONENT;
SIGNAL d, e, f : STD_LOGIC; --定义3个信号作为内部的连接线
  BEGIN
   u1 : h_adder PORT MAP(a=>ain, b=>bin, co=>d, so=>e);  
   u2 : h_adder PORT MAP(a=>e, b=>cin, co=>f, so=>sum);
   u3 : or2a    PORT MAP(a=>d, b=>f, c=>cout);
 END ARCHITECTURE fd1; 

 LIBRARY  IEEE ;   --或门逻辑描述
 USE IEEE.STD_LOGIC_1164.ALL;
 ENTITY or2a IS
   PORT (a, b : IN STD_LOGIC;  c : OUT STD_LOGIC );
 END ENTITY or2a ;
 ARCHITECTURE one OF or2a IS
   BEGIN
   c <= a OR b ;
 END ARCHITECTURE one ;

 LIBRARY  IEEE;   --半加器
USE IEEE.STD_LOGIC_1164.ALL; 
ENTITY h_adder IS 
PORT (a, b : IN STD_LOGIC;  
    co, so : OUT STD_LOGIC);  
END ENTITY h_adder;     
ARCHITECTURE fh1 OF h_adder IS  
SIGNAL abc : STD_LOGIC_VECTOR(1 DOWNTO 0);
                          --定义标准逻辑位矢量数据类型
BEGIN
  abc <= a & b ;   --a相并b, 即a与b并置操作
 PROCESS(abc)
  BEGIN
   CASE abc IS      --类似于真值表的CASE语句
    WHEN "00" => so<='0'; co<='0' ;
    WHEN "01" => so<='1'; co<='0' ;
    WHEN "10" => so<='1'; co<='0' ;
    WHEN "11" => so<='0'; co<='1' ;
    WHEN OTHERS => NULL ;
   END CASE;
 END PROCESS; 
END ARCHITECTURE fh1 ; 
