--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Mon Nov  9 21:47:28 2026
--Host        : Ultron running 64-bit major release  (build 9200)
--Command     : generate_target radio_bd_wrapper.bd
--Design      : radio_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity radio_bd_wrapper is
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
end radio_bd_wrapper;

architecture STRUCTURE of radio_bd_wrapper is
  component radio_bd is
  port (
    aresetn : in STD_LOGIC;
    dds_fake_adc_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dds_filt_out_left : out STD_LOGIC_VECTOR ( 47 downto 0 );
    dds_filt_out_right : out STD_LOGIC_VECTOR ( 47 downto 0 );
    dds_tuning_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mixed_dds_left : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mixed_dds_right : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sys_clk : in STD_LOGIC;
    fake_adc_axi_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fake_adc_axi_tvalid : in STD_LOGIC;
    tuning_axi_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tuning_axi_tvalid : in STD_LOGIC
  );
  end component radio_bd;
begin
radio_bd_i: component radio_bd
     port map (
      aresetn => aresetn,
      dds_fake_adc_out(15 downto 0) => dds_fake_adc_out(15 downto 0),
      dds_filt_out_left(47 downto 0) => dds_filt_out_left(47 downto 0),
      dds_filt_out_right(47 downto 0) => dds_filt_out_right(47 downto 0),
      dds_tuning_out(31 downto 0) => dds_tuning_out(31 downto 0),
      fake_adc_axi_data(31 downto 0) => fake_adc_axi_data(31 downto 0),
      fake_adc_axi_tvalid => fake_adc_axi_tvalid,
      mixed_dds_left(15 downto 0) => mixed_dds_left(15 downto 0),
      mixed_dds_right(15 downto 0) => mixed_dds_right(15 downto 0),
      sys_clk => sys_clk,
      tuning_axi_data(31 downto 0) => tuning_axi_data(31 downto 0),
      tuning_axi_tvalid => tuning_axi_tvalid
    );
end STRUCTURE;
