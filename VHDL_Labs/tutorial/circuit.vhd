library ieee;
use ieee.std_logic_1164.all;

entity circuit is
  port (
    a, b, enable : in std_logic;
    y            : out std_logic
  );
end entity circuit; -- Error was here: missing end entity

architecture rtl of circuit is
    signal q : std_logic; -- Error was here: typo 'siganl'
begin

    q <= a and b;
    y <= not q when enable = '1' else 'Z'; -- Error was here: missing quotes around '1'

end architecture rtl; -- Error was here: missing semicolon