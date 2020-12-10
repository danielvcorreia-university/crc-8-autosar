library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL;

ENTITY sereialInCRC IS
	PORT( clk, d_in, nRst: in std_logic; 
			crc : out std_logic_vector(7 downto 0)); 
END sereialInCRC; 

ARCHITECTURE structure OF sereialInCRC IS
	SIGNAL s_out : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL s_xor0, s_xor1, s_xor2, s_xor3, s_xor4: STD_LOGIC;
	COMPONENT flipFlopDPET
		PORT (clk, D:     IN STD_LOGIC;
				nSet, nRst: IN STD_LOGIC;
				Q, nQ:      OUT STD_LOGIC);
	END COMPONENT;
	COMPONENT gateXor2 IS
	   PORT (x0, x1: IN STD_LOGIC;
			   y:      OUT STD_LOGIC);
	END COMPONENT;
BEGIN
	ff7 : flipFlopDPET PORT MAP(clk, s_out(6), '1', nRst, s_out(7));								
	ff6 : flipFlopDPET PORT MAP(clk, s_out(5), '1', nRst, s_out(6));
	ff5 : flipFlopDPET PORT MAP(clk, s_xor4, '1', nRst, s_out(5));									
	ff4 : flipFlopDPET PORT MAP(clk, s_out(3), '1', nRst, s_out(4));									
	ff3 : flipFlopDPET PORT MAP(clk, s_xor3, '1', nRst,  s_out(3));									
	ff2 : flipFlopDPET PORT MAP(clk, s_xor2, '1', nRst, s_out(2));								
	ff1 : flipFlopDPET PORT MAP(clk, s_xor1, '1', nRst, s_out(1));									
	ff0 : flipFlopDPET PORT MAP(clk, s_xor0, '1', nRst, s_out(0));
	xor0 : gateXor2 PORT MAP(d_in, s_out(7), s_xor0);
	xor1 : gateXor2 PORT MAP(s_out(0), s_xor0, s_xor1);
	xor2 : gateXor2 PORT MAP(s_out(1), s_xor0, s_xor2);
	xor3 : gateXor2 PORT MAP(s_out(2), s_xor0, s_xor3);
	xor4 : gateXor2 PORT MAP(s_out(4), s_xor0, s_xor4);
	crc <= s_out;
END structure;