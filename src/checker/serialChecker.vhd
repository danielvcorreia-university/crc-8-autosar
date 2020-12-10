LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY serialChecker IS
  PORT (serialIn, clk, nRst: IN STD_LOGIC;
        error: OUT STD_LOGIC);
END serialChecker;

ARCHITECTURE structure OF serialChecker IS
	SIGNAL s_crc : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL s_count : STD_LOGIC_VECTOR(4 downto 0);
	SIGNAL s_tmp0, s_tmp1, s_tmp2, s_tmp3, s_tmp4, s_tmp5 : STD_LOGIC;
	SIGNAL s_error, s_valid : STD_LOGIC;
	COMPONENT sereialInCRC
		PORT( clk, d_in, nRst: in std_logic; 
				crc : out std_logic_vector(7 downto 0)); 
	END COMPONENT;
	COMPONENT gateOr2
	  PORT (x0, x1: IN STD_LOGIC;
			  y:      OUT STD_LOGIC);
	END COMPONENT;
	COMPONENT binCounter_5bit
		PORT (nRst: IN STD_LOGIC;
				clk:  IN STD_LOGIC;
				c:    OUT STD_LOGIC_VECTOR (4 DOWNTO 0));
	END COMPONENT;
	COMPONENT comp_5bit
	   PORT (x, y: IN STD_LOGIC_VECTOR(4 downto 0);
		   	c, nC: OUT STD_LOGIC);
	END COMPONENT;
	COMPONENT flipFlopDPET
    PORT (clk, D:     IN STD_LOGIC;
          nSet, nRst: IN STD_LOGIC;
          Q, nQ:      OUT STD_LOGIC);
	END COMPONENT;
BEGIN
	crc0 : sereialInCRC PORT MAP (clk, serialIn, nRst, s_crc);
	or0 : gateOr2 PORT MAP (s_crc(0), s_crc(1), s_tmp0);
	or1 : gateOr2 PORT MAP (s_crc(2), s_crc(3), s_tmp1);
	or2 : gateOr2 PORT MAP (s_crc(4), s_crc(5), s_tmp2);
	or3 : gateOr2 PORT MAP (s_crc(6), s_crc(7), s_tmp3);
	or5 : gateOr2 PORT MAP (s_tmp0, s_tmp1, s_tmp4);
	or6 : gateOr2 PORT MAP (s_tmp2, s_tmp3, s_tmp5);
	or7 : gateOr2 PORT MAP (s_tmp4, s_tmp5, s_error);
	cnt : binCounter_5bit PORT MAP (nRst, clk, s_count);
	cmp : comp_5bit PORT MAP (s_count, "11000", s_valid, open);
	ff  : flipFlopDPET PORT MAP(s_valid, s_error, '1', nRst, error);
END structure;