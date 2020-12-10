LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY gateInv IS
  PORT (x: IN STD_LOGIC;
        y: 		 OUT STD_LOGIC);
END gateInv;

ARCHITECTURE logicFunction OF gateInv IS
BEGIN

  y <= not x;
  
END logicFunction;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY gateOr2 IS
  PORT (x0, x1: IN STD_LOGIC;
        y: 		 OUT STD_LOGIC);
END gateOr2;

ARCHITECTURE logicFunction OF gateOr2 IS
BEGIN

  y <= x0 OR x1;
  
END logicFunction;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY gateAnd2 IS
  PORT (x0, x1: IN STD_LOGIC;
        y: 		 OUT STD_LOGIC);
END gateAnd2;

ARCHITECTURE logicFunction OF gateAnd2 IS
BEGIN

  y <= x0 AND x1;
  
END logicFunction;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY gateXOr2 IS
  PORT (x0, x1: IN STD_LOGIC;
        y: 		 OUT STD_LOGIC);
END gateXOr2;

ARCHITECTURE logicFunction OF gateXOr2 IS
BEGIN

  y <= x0 XOR x1;
  
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY flipFlopDPET IS
  PORT (clk, D:     IN STD_LOGIC;
        nSet, nRst: IN STD_LOGIC;
        Q, nQ:      OUT STD_LOGIC);
END flipFlopDPET;

ARCHITECTURE behavior OF flipFlopDPET IS
BEGIN
  PROCESS (clk, nSet, nRst)
  BEGIN
    IF (nRst = '0')
	    THEN Q <= '0';
		      nQ <= '1';
		 ELSIF (nSet = '0')
		       THEN Q <= '1';
		            nQ <= '0';
	          ELSIF (clk = '1') AND (clk'EVENT)
	                THEN Q <= D;
		                  nQ <= NOT D;

	 END IF;
  END PROCESS;
END behavior;