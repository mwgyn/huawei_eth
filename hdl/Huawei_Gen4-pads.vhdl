library ieee;	use ieee.std_logic_1164.all, ieee.numeric_std.all;

entity Huawei_F100_Gen4_pads is generic (
	C_NUM_CHNL:				positive	:= 1;
	-- Number of PCIe Lanes
	C_NUM_LANES:			positive	:=  4;
	-- Settings from Vivado IP Generator
	C_PCI_DATA_WIDTH:		positive	:= 128;
	C_MAX_PAYLOAD_BYTES:	positive	:= 256;
	C_LOG_NUM_TAGS:			positive	:= 5
); port (
	PCI_EXP_TXP:		out	std_ulogic_vector(C_NUM_LANES - 1 downto 0);
	PCI_EXP_TXN:		out	std_ulogic_vector(C_NUM_LANES - 1 downto 0);
	PCI_EXP_RXP:		in	std_ulogic_vector(C_NUM_LANES - 1 downto 0);
	PCI_EXP_RXN:		in	std_ulogic_vector(C_NUM_LANES - 1 downto 0);
	
	LED:				out	std_ulogic_vector(7 downto 0);
	pin_pcie_ref_clk_p:	in	std_ulogic;
	pin_pcie_ref_clk_n:	in	std_ulogic;
	pin_reset_n:		in	std_ulogic
);
end entity Huawei_F100_Gen4_pads;

architecture rtl of Huawei_F100_Gen4_pads is begin
	u_core: entity work.Huawei_F100_Gen4 generic map (
		C_NUM_CHNL			=> C_NUM_CHNL,
		C_NUM_LANES			=> C_NUM_LANES,
		C_PCI_DATA_WIDTH	=> C_PCI_DATA_WIDTH,
		C_MAX_PAYLOAD_BYTES	=> C_MAX_PAYLOAD_BYTES,
		C_LOG_NUM_TAGS		=> C_LOG_NUM_TAGS,
	) port map (
		PCI_EXP_TXP			=> PCI_EXP_TXP,
		PCI_EXP_TXN 		=> PCI_EXP_TXN,
		PCI_EXP_RXP 		=> PCI_EXP_RXP,
		PCI_EXP_RXN 		=> PCI_EXP_RXN,
		LED					=> LED,
		PCIE_REFCLK_P		=> pin_pcie_ref_clk_p,
		PCIE_REFCLK_N		=> pin_pcie_ref_clk_n,
		PCIE_RESET_N		=> pin_reset_n,
	);
end architecture rtl;
