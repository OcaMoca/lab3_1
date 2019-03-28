-------------------------------------------------------------------------------
-- system_vga_peripheral_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library vga_peripheral_v1_00_a;
use vga_peripheral_v1_00_a.all;

entity system_vga_peripheral_0_wrapper is
  port (
    S_AXI_ACLK : in std_logic;
    S_AXI_ARESETN : in std_logic;
    S_AXI_AWADDR : in std_logic_vector(31 downto 0);
    S_AXI_AWVALID : in std_logic;
    S_AXI_WDATA : in std_logic_vector(31 downto 0);
    S_AXI_WSTRB : in std_logic_vector(3 downto 0);
    S_AXI_WVALID : in std_logic;
    S_AXI_BREADY : in std_logic;
    S_AXI_ARADDR : in std_logic_vector(31 downto 0);
    S_AXI_ARVALID : in std_logic;
    S_AXI_RREADY : in std_logic;
    S_AXI_ARREADY : out std_logic;
    S_AXI_RDATA : out std_logic_vector(31 downto 0);
    S_AXI_RRESP : out std_logic_vector(1 downto 0);
    S_AXI_RVALID : out std_logic;
    S_AXI_WREADY : out std_logic;
    S_AXI_BRESP : out std_logic_vector(1 downto 0);
    S_AXI_BVALID : out std_logic;
    S_AXI_AWREADY : out std_logic;
    clk_i : in std_logic;
    reset_n_i : in std_logic;
    direct_mode_i : in std_logic;
    display_mode_i : in std_logic_vector(1 downto 0);
    vga_hsync_o : out std_logic;
    vga_vsync_o : out std_logic;
    blank_o : out std_logic;
    pix_clock_o : out std_logic;
    psave_o : out std_logic;
    sync_o : out std_logic;
    red_o : out std_logic_vector(7 downto 0);
    green_o : out std_logic_vector(7 downto 0);
    blue_o : out std_logic_vector(7 downto 0)
  );
end system_vga_peripheral_0_wrapper;

architecture STRUCTURE of system_vga_peripheral_0_wrapper is

  component vga_peripheral is
    generic (
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_MIN_SIZE : std_logic_vector;
      C_USE_WSTRB : INTEGER;
      C_DPHASE_TIMEOUT : INTEGER;
      C_BASEADDR : std_logic_vector;
      C_HIGHADDR : std_logic_vector;
      C_FAMILY : STRING;
      C_NUM_REG : INTEGER;
      C_NUM_MEM : INTEGER;
      C_SLV_AWIDTH : INTEGER;
      C_SLV_DWIDTH : INTEGER;
      RES_TYPE : INTEGER;
      TEXT_MEM_DATA_WIDTH : INTEGER;
      GRAPH_MEM_DATA_WIDTH : INTEGER
    );
    port (
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_WDATA : in std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_WSTRB : in std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0);
      S_AXI_WVALID : in std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_RREADY : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_AWREADY : out std_logic;
      clk_i : in std_logic;
      reset_n_i : in std_logic;
      direct_mode_i : in std_logic;
      display_mode_i : in std_logic_vector(1 downto 0);
      vga_hsync_o : out std_logic;
      vga_vsync_o : out std_logic;
      blank_o : out std_logic;
      pix_clock_o : out std_logic;
      psave_o : out std_logic;
      sync_o : out std_logic;
      red_o : out std_logic_vector(7 downto 0);
      green_o : out std_logic_vector(7 downto 0);
      blue_o : out std_logic_vector(7 downto 0)
    );
  end component;

begin

  vga_peripheral_0 : vga_peripheral
    generic map (
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI_ADDR_WIDTH => 32,
      C_S_AXI_MIN_SIZE => X"000001ff",
      C_USE_WSTRB => 0,
      C_DPHASE_TIMEOUT => 8,
      C_BASEADDR => X"7fc00000",
      C_HIGHADDR => X"7fc0ffff",
      C_FAMILY => "spartan6",
      C_NUM_REG => 1,
      C_NUM_MEM => 1,
      C_SLV_AWIDTH => 32,
      C_SLV_DWIDTH => 32,
      RES_TYPE => 1,
      TEXT_MEM_DATA_WIDTH => 6,
      GRAPH_MEM_DATA_WIDTH => 32
    )
    port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWADDR => S_AXI_AWADDR,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_WDATA => S_AXI_WDATA,
      S_AXI_WSTRB => S_AXI_WSTRB,
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_ARADDR => S_AXI_ARADDR,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_RDATA => S_AXI_RDATA,
      S_AXI_RRESP => S_AXI_RRESP,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_BRESP => S_AXI_BRESP,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      clk_i => clk_i,
      reset_n_i => reset_n_i,
      direct_mode_i => direct_mode_i,
      display_mode_i => display_mode_i,
      vga_hsync_o => vga_hsync_o,
      vga_vsync_o => vga_vsync_o,
      blank_o => blank_o,
      pix_clock_o => pix_clock_o,
      psave_o => psave_o,
      sync_o => sync_o,
      red_o => red_o,
      green_o => green_o,
      blue_o => blue_o
    );

end architecture STRUCTURE;

