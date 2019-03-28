-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    RS232_Uart_1_sout : out std_logic;
    RS232_Uart_1_sin : in std_logic;
    RESET : in std_logic;
    LEDS_TRI_O : out std_logic_vector(0 to 7);
    DIP_Switches_TRI_I : in std_logic_vector(0 to 7);
    CLK_P : in std_logic;
    CLK_N : in std_logic;
    vga_peripheral_0_clk_i_pin : in std_logic;
    vga_peripheral_0_reset_n_i_pin : in std_logic;
    vga_peripheral_0_direct_mode_i_pin : in std_logic;
    vga_peripheral_0_display_mode_i_pin : in std_logic_vector(1 downto 0);
    vga_peripheral_0_vga_hsync_o_pin : out std_logic;
    vga_peripheral_0_vga_vsync_o_pin : out std_logic;
    vga_peripheral_0_blank_o_pin : out std_logic;
    vga_peripheral_0_pix_clock_o_pin : out std_logic;
    vga_peripheral_0_psave_o_pin : out std_logic;
    vga_peripheral_0_sync_o_pin : out std_logic;
    vga_peripheral_0_red_o_pin : out std_logic_vector(7 downto 0);
    vga_peripheral_0_green_o_pin : out std_logic_vector(7 downto 0);
    vga_peripheral_0_blue_o_pin : out std_logic_vector(7 downto 0)
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      RS232_Uart_1_sout : out std_logic;
      RS232_Uart_1_sin : in std_logic;
      RESET : in std_logic;
      LEDS_TRI_O : out std_logic_vector(0 to 7);
      DIP_Switches_TRI_I : in std_logic_vector(0 to 7);
      CLK_P : in std_logic;
      CLK_N : in std_logic;
      vga_peripheral_0_clk_i_pin : in std_logic;
      vga_peripheral_0_reset_n_i_pin : in std_logic;
      vga_peripheral_0_direct_mode_i_pin : in std_logic;
      vga_peripheral_0_display_mode_i_pin : in std_logic_vector(1 downto 0);
      vga_peripheral_0_vga_hsync_o_pin : out std_logic;
      vga_peripheral_0_vga_vsync_o_pin : out std_logic;
      vga_peripheral_0_blank_o_pin : out std_logic;
      vga_peripheral_0_pix_clock_o_pin : out std_logic;
      vga_peripheral_0_psave_o_pin : out std_logic;
      vga_peripheral_0_sync_o_pin : out std_logic;
      vga_peripheral_0_red_o_pin : out std_logic_vector(7 downto 0);
      vga_peripheral_0_green_o_pin : out std_logic_vector(7 downto 0);
      vga_peripheral_0_blue_o_pin : out std_logic_vector(7 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      RS232_Uart_1_sout => RS232_Uart_1_sout,
      RS232_Uart_1_sin => RS232_Uart_1_sin,
      RESET => RESET,
      LEDS_TRI_O => LEDS_TRI_O,
      DIP_Switches_TRI_I => DIP_Switches_TRI_I,
      CLK_P => CLK_P,
      CLK_N => CLK_N,
      vga_peripheral_0_clk_i_pin => vga_peripheral_0_clk_i_pin,
      vga_peripheral_0_reset_n_i_pin => vga_peripheral_0_reset_n_i_pin,
      vga_peripheral_0_direct_mode_i_pin => vga_peripheral_0_direct_mode_i_pin,
      vga_peripheral_0_display_mode_i_pin => vga_peripheral_0_display_mode_i_pin,
      vga_peripheral_0_vga_hsync_o_pin => vga_peripheral_0_vga_hsync_o_pin,
      vga_peripheral_0_vga_vsync_o_pin => vga_peripheral_0_vga_vsync_o_pin,
      vga_peripheral_0_blank_o_pin => vga_peripheral_0_blank_o_pin,
      vga_peripheral_0_pix_clock_o_pin => vga_peripheral_0_pix_clock_o_pin,
      vga_peripheral_0_psave_o_pin => vga_peripheral_0_psave_o_pin,
      vga_peripheral_0_sync_o_pin => vga_peripheral_0_sync_o_pin,
      vga_peripheral_0_red_o_pin => vga_peripheral_0_red_o_pin,
      vga_peripheral_0_green_o_pin => vga_peripheral_0_green_o_pin,
      vga_peripheral_0_blue_o_pin => vga_peripheral_0_blue_o_pin
    );

end architecture STRUCTURE;

