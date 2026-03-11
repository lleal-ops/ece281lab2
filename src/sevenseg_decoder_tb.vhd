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

    signal i_hex   : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal o_seg_n : STD_LOGIC_VECTOR (6 downto 0);

begin

    uut: sevenseg_decoder
        port map (
            i_hex   => i_hex,
            o_seg_n => o_seg_n
        );

    stim_proc: process
    begin
        i_hex <= "0000"; wait for 10 ns;
        i_hex <= "0001"; wait for 10 ns;
        i_hex <= "0010"; wait for 10 ns;
        i_hex <= "0011"; wait for 10 ns;
        i_hex <= "0100"; wait for 10 ns;
        i_hex <= "0101"; wait for 10 ns;
        i_hex <= "0110"; wait for 10 ns;
        i_hex <= "0111"; wait for 10 ns;
        i_hex <= "1000"; wait for 10 ns;
        i_hex <= "1001"; wait for 10 ns;
        i_hex <= "1010"; wait for 10 ns;
        i_hex <= "1011"; wait for 10 ns;
        i_hex <= "1100"; wait for 10 ns;
        i_hex <= "1101"; wait for 10 ns;
        i_hex <= "1110"; wait for 10 ns;
        i_hex <= "1111"; wait for 10 ns;
        wait;
    end process;




end Behavioral;
