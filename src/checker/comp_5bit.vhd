LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY comp_5bit IS
  PORT (x, y: IN STD_LOGIC_VECTOR(4 downto 0);
        c, nC: OUT STD_LOGIC);
END comp_5bit;

ARCHITECTURE structural OF comp_5bit IS
	SIGNAL s_comp : STD_LOGIC_VECTOR(4 downto 0);
	SIGNAL s_tmp0, s_tmp1, s_tmp2, s_c : STD_LOGIC;
	COMPONENT gateOr2
	  PORT (x0, x1: IN STD_LOGIC;
			  y:      OUT STD_LOGIC);
	END COMPONENT;
	COMPONENT gateXor2
	  PORT (x0, x1: IN STD_LOGIC;
			  y:      OUT STD_LOGIC);
	END COMPONENT;
	COMPONENT gateInv 
	   PORT (x: IN STD_LOGIC;
			   y: OUT STD_LOGIC);
	END COMPONENT;
BEGIN
	xor0 : gateXor2 PORT MAP (x(0), y(0), s_comp(0));
	xor1 : gateXor2 PORT MAP (x(1), y(1), s_comp(1));
	xor2 : gateXor2 PORT MAP (x(2), y(2), s_comp(2));
	xor3 : gateXor2 PORT MAP (x(3), y(3), s_comp(3));
	xor4 : gateXor2 PORT MAP (x(4), y(4), s_comp(4));
	and0 : gateOr2 PORT MAP (s_comp(0), s_comp(1), s_tmp0);
	and1 : gateOr2 PORT MAP (s_comp(2), s_comp(3), s_tmp1);
	and2 : gateOr2 PORT MAP (s_comp(4), s_tmp0, s_tmp2);
	and3 : gateOr2 PORT MAP (s_tmp1, s_tmp2, s_c);
	inv : gateInv PORT MAP(s_c, c);
	nC <= s_c;
END structural;