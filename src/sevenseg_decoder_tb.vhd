----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2026 08:51:57 AM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is
    component sevenseg_decoder
         Port (
            i_hex   : in  STD_LOGIC_VECTOR (3 downto 0);
            o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;

    signal w_hex   : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal w_seg_n : STD_LOGIC_VECTOR (6 downto 0);

begin

    uut: sevenseg_decoder
        port map (
            i_hex   => w_hex,
            i_seg_n => w_seg_n
        );

   test_process : process
   begin
        w_hex <= x"0"; wait for 10 ns;
        assert w_seg_n = "1000000" report "ERROR on 0" severity failure;
        
        w_hex <= x"1"; wait for 10 ns;
        assert w_seg_n = "1111001" report "ERROR on 1" severity failure;
        
        w_hex <= x"2"; wait for 10 ns;
        assert w_seg_n = "0100100" report "ERROR on 2" severity failure;
        
        w_hex <= x"3"; wait for 10 ns;
        assert w_seg_n = "0110000" report "ERROR on 3" severity failure;
        
        w_hex <= x"4"; wait for 10 ns;
        assert w_seg_n = "0011001" report "ERROR on 4" severity failure;
        
        w_hex <= x"5"; wait for 10 ns;
        assert w_seg_n = "0010010" report "ERROR on 5" severity failure;
        
        w_hex <= x"6"; wait for 10 ns;
        assert w_seg_n = "0000010" report "ERROR on 6" severity failure;
        
        w_hex <= x"7"; wait for 10 ns;
        assert w_seg_n = "1111000" report "ERROR on 7" severity failure;
        
        w_hex <= x"8"; wait for 10 ns;
        assert w_seg_n = "0000000" report "ERROR on 8" severity failure;
        
        w_hex <= x"9"; wait for 10 ns;
        assert w_seg_n = "0010000" report "ERROR on 9" severity failure;
        
        w_hex <= x"A"; wait for 10 ns;
        assert w_seg_n = "0001000" report "ERROR on A" severity failure;
        
        w_hex <= x"B"; wait for 10 ns;
        assert w_seg_n = "0000011" report "ERROR on B" severity failure;
        
        w_hex <= x"C"; wait for 10 ns;
        assert w_seg_n = "1000110" report "ERROR on C" severity failure;
        
        w_hex <= x"D"; wait for 10 ns;
        assert w_seg_n = "0100001" report "ERROR on D" severity failure;
        
        w_hex <= x"E"; wait for 10 ns;
        assert w_seg_n = "0000110" report "ERROR on E" severity failure;
        
        w_hex <= x"F"; wait for 10 ns;
        assert w_seg_n = "0001110" report "ERROR on F" severity failure;
        
        wait;
        
     end process;

end Behavioral;
