--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Mon Nov  9 21:47:28 2026
--Host        : Ultron running 64-bit major release  (build 9200)
--Command     : generate_target radio_bd.bd
--Design      : radio_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity radio_bd is
  port (
    aresetn : in STD_LOGIC;
    dds_fake_adc_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dds_filt_out_left : out STD_LOGIC_VECTOR ( 47 downto 0 );
    dds_filt_out_right : out STD_LOGIC_VECTOR ( 47 downto 0 );
    dds_tuning_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fake_adc_axi_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fake_adc_axi_tvalid : in STD_LOGIC;
    mixed_dds_left : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mixed_dds_right : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sys_clk : in STD_LOGIC;
    tuning_axi_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tuning_axi_tvalid : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of radio_bd : entity is "radio_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=radio_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of radio_bd : entity is "radio_bd.hwdef";
end radio_bd;

architecture STRUCTURE of radio_bd is
  component radio_bd_dds_compiler_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component radio_bd_dds_compiler_0_0;
  component radio_bd_dds_compiler_fake_adc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component radio_bd_dds_compiler_fake_adc_0;
  component radio_bd_fir_compiler_18k_64dec_left_0 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component radio_bd_fir_compiler_18k_64dec_left_0;
  component radio_bd_fir_compiler_18k_64dec_right_0 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component radio_bd_fir_compiler_18k_64dec_right_0;
  component radio_bd_fir_compiler_576k_40dec_left_0 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component radio_bd_fir_compiler_576k_40dec_left_0;
  component radio_bd_fir_compiler_576k_40dec_right_0 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component radio_bd_fir_compiler_576k_40dec_right_0;
  signal fir_compiler_576k_40dec_M_AXIS_DATA_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fir_compiler_576k_40dec_M_AXIS_DATA_TVALID : STD_LOGIC;
  signal fir_compiler_576k_40dec_left_M_AXIS_DATA_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fir_compiler_576k_40dec_left_M_AXIS_DATA_TVALID : STD_LOGIC;
  signal NLW_dds_compiler_fake_adc_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_dds_compiler_tuning_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_compiler_18k_64dec_left_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_compiler_18k_64dec_left_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_compiler_18k_64dec_right_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_compiler_18k_64dec_right_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_compiler_576k_40dec_left_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_compiler_576k_40dec_right_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of dds_fake_adc_out : signal is "xilinx.com:signal:data:1.0 DATA.DDS_FAKE_ADC_OUT DATA";
  attribute X_INTERFACE_PARAMETER of dds_fake_adc_out : signal is "XIL_INTERFACENAME DATA.DDS_FAKE_ADC_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of fake_adc_axi_data : signal is "xilinx.com:signal:data:1.0 DATA.FAKE_ADC_AXI_DATA DATA";
  attribute X_INTERFACE_PARAMETER of fake_adc_axi_data : signal is "XIL_INTERFACENAME DATA.FAKE_ADC_AXI_DATA, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of tuning_axi_data : signal is "xilinx.com:signal:data:1.0 DATA.TUNING_AXI_DATA DATA";
  attribute X_INTERFACE_PARAMETER of tuning_axi_data : signal is "XIL_INTERFACENAME DATA.TUNING_AXI_DATA, LAYERED_METADATA undef";
begin
dds_compiler_fake_adc: component radio_bd_dds_compiler_fake_adc_0
     port map (
      aclk => sys_clk,
      aresetn => aresetn,
      m_axis_data_tdata(15 downto 0) => dds_fake_adc_out(15 downto 0),
      m_axis_data_tvalid => NLW_dds_compiler_fake_adc_m_axis_data_tvalid_UNCONNECTED,
      s_axis_phase_tdata(31 downto 0) => fake_adc_axi_data(31 downto 0),
      s_axis_phase_tvalid => fake_adc_axi_tvalid
    );
dds_compiler_tuning: component radio_bd_dds_compiler_0_0
     port map (
      aclk => sys_clk,
      aresetn => aresetn,
      m_axis_data_tdata(31 downto 0) => dds_tuning_out(31 downto 0),
      m_axis_data_tvalid => NLW_dds_compiler_tuning_m_axis_data_tvalid_UNCONNECTED,
      s_axis_phase_tdata(31 downto 0) => tuning_axi_data(31 downto 0),
      s_axis_phase_tvalid => tuning_axi_tvalid
    );
fir_compiler_18k_64dec_left: component radio_bd_fir_compiler_18k_64dec_left_0
     port map (
      aclk => sys_clk,
      aresetn => aresetn,
      m_axis_data_tdata(47 downto 0) => dds_filt_out_left(47 downto 0),
      m_axis_data_tvalid => NLW_fir_compiler_18k_64dec_left_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => fir_compiler_576k_40dec_left_M_AXIS_DATA_TDATA(15 downto 0),
      s_axis_data_tready => NLW_fir_compiler_18k_64dec_left_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fir_compiler_576k_40dec_left_M_AXIS_DATA_TVALID
    );
fir_compiler_18k_64dec_right: component radio_bd_fir_compiler_18k_64dec_right_0
     port map (
      aclk => sys_clk,
      aresetn => aresetn,
      m_axis_data_tdata(47 downto 0) => dds_filt_out_right(47 downto 0),
      m_axis_data_tvalid => NLW_fir_compiler_18k_64dec_right_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 0) => fir_compiler_576k_40dec_M_AXIS_DATA_TDATA(15 downto 0),
      s_axis_data_tready => NLW_fir_compiler_18k_64dec_right_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fir_compiler_576k_40dec_M_AXIS_DATA_TVALID
    );
fir_compiler_576k_40dec_left: component radio_bd_fir_compiler_576k_40dec_left_0
     port map (
      aclk => sys_clk,
      aresetn => aresetn,
      m_axis_data_tdata(15 downto 0) => fir_compiler_576k_40dec_left_M_AXIS_DATA_TDATA(15 downto 0),
      m_axis_data_tvalid => fir_compiler_576k_40dec_left_M_AXIS_DATA_TVALID,
      s_axis_data_tdata(15 downto 0) => mixed_dds_left(15 downto 0),
      s_axis_data_tready => NLW_fir_compiler_576k_40dec_left_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => aresetn
    );
fir_compiler_576k_40dec_right: component radio_bd_fir_compiler_576k_40dec_right_0
     port map (
      aclk => sys_clk,
      aresetn => aresetn,
      m_axis_data_tdata(15 downto 0) => fir_compiler_576k_40dec_M_AXIS_DATA_TDATA(15 downto 0),
      m_axis_data_tvalid => fir_compiler_576k_40dec_M_AXIS_DATA_TVALID,
      s_axis_data_tdata(15 downto 0) => mixed_dds_right(15 downto 0),
      s_axis_data_tready => NLW_fir_compiler_576k_40dec_right_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => aresetn
    );
end STRUCTURE;
