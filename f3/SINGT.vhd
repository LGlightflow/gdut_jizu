LIBRARY IEEE;  --正弦信号发生器源文件
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY SINGT IS
    PORT ( CLK  : IN STD_LOGIC;              --信号源时钟
            DOUT : OUT STD_LOGIC_VECTOR (7 DOWNTO 0) );--8位波形数据输出
END;

ARCHITECTURE DACC OF SINGT IS
COMPONENT data_rom --调用波形数据存储器LPM_ROM文件：data_rom.vhd声明
   PORT(address : IN STD_LOGIC_VECTOR (5 DOWNTO 0);--6位地址信号
	    inclock : IN STD_LOGIC ;--地址锁存时钟
	           q : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)	);
END COMPONENT;
SIGNAL Q1 : STD_LOGIC_VECTOR (5 DOWNTO 0); --设定内部节点作为地址计数器
    BEGIN
PROCESS(CLK )                           --LPM_ROM地址发生器进程
    BEGIN
IF CLK'EVENT AND CLK = '1' THEN  Q1<=Q1+1; --Q1作为地址发生器计数器
END IF;
END PROCESS;
u1 : data_rom PORT MAP(address=>Q1, q => DOUT,inclock=>CLK);--例化
END; 




LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;    --使用宏功能库中的所有元件
ENTITY data_rom IS
	PORT (address		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
             inclock          : IN STD_LOGIC ;
             q	               : OUT STD_LOGIC_VECTOR (7 DOWNTO 0) );
END data_rom;
ARCHITECTURE SYN OF data_rom IS
	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (7 DOWNTO 0);
	COMPONENT altsyncram --例化altsyncram元件，调用了LPM模块altsyncram
	GENERIC (                               --参数传递语句
              intended_device_family  : STRING; --类属参量数据类型定义
              width_a                 : NATURAL;
             widthad_a		        : NATURAL;
             numwords_a               : NATURAL;
             operation_mode           : STRING;
	      outdata_reg_a	        : STRING;
             address_aclr_a	        : STRING;
		outdata_aclr_a	        : STRING;
             width_byteena_a	        : NATURAL; 
				 init_file		: STRING;
  		lpm_hint	       : STRING;
		lpm_type		: STRING	);
	PORT (	clock0	: IN STD_LOGIC ;            --altsyncram元件接口声明
			address_a: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
			q_a	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0) );
	END COMPONENT;
BEGIN
	q    <= sub_wire0(7 DOWNTO 0);
	altsyncram_component : altsyncram
	GENERIC MAP ( intended_device_family => "Cyclone", --参数传递映射
		width_a => 24,                              --数据线宽度8
		widthad_a => 6,                            --地址线宽度6
		numwords_a => 64,                          --数据数量64
		operation_mode => "ROM",                   --LPM模式ROM
		outdata_reg_a => "UNREGISTERED",           --输出无锁存
		address_aclr_a => "NONE",                  --无异步地址清0
		outdata_aclr_a => "NONE",                --无输出锁存异步清0
		width_byteena_a => 1,               -- byteena_a输入口宽度1
		init_file => "./sdata.hex", --ROM初始化数据文件，此处已修改过
		lpm_hint => "ENABLE_RUNTIME_MOD=YES, INSTANCE_NAME=NONE", 
		lpm_type => "altsyncram" )                     --LPM类型
	PORT MAP (clock0 => inclock, address_a => address,q_a => sub_wire0 );
END SYN;
