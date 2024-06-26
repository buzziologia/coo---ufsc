LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY mux2para1 IS
    GENERIC (N : INTEGER);
    PORT (
        sel : IN STD_LOGIC;
        a, b : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
        y : OUT STD_LOGIC_VECTOR (N - 1 DOWNTO 0)
    );
END mux2para1;
ARCHITECTURE comportamento OF mux2para1 IS
BEGIN
    WITH sel SELECT
        y <= a WHEN '0',
        b WHEN OTHERS;
END comportamento;
