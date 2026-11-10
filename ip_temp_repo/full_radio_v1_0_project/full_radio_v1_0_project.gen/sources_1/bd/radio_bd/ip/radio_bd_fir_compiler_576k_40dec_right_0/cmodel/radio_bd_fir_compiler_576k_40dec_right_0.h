
//------------------------------------------------------------------------------
// (c) Copyright 2023 Advanced Micro Devices. All rights reserved.
//
// This file contains confidential and proprietary information
// of AMD, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "radio_bd_fir_compiler_576k_40dec_right_0" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -1063,-604,-771,-965,-1188,-1441,-1728,-2050,-2408,-2805,-3242,-3719,-4238,-4800,-5404,-6051,-6740,-7469,-8236,-9040,-9878,-10746,-11640,-12555,-13486,-14428,-15371,-16310,-17235,-18138,-19009,-19837,-20611,-21319,-21949,-22487,-22921,-23236,-23418,-23452,-23324,-23018,-22519,-21812,-20883,-19716,-18298,-16614,-14652,-12398,-9840,-6968,-3773,-244,3625,7840,12408,17329,22608,28242,34231,40571,47257,54281,61634,69305,77280,85546,94084,102876,111901,121137,130559,140143,149860,159682,169579,179520,189472,199404,209280,219067,228731,238236,247547,256631,265452,273978,282174,290009,297453,304474,311046,317141,322735,327804,332328,336288,339667,342452,344630,346192,347132,347446,347132,346192,344630,342452,339667,336288,332328,327804,322735,317141,311046,304474,297453,290009,282174,273978,265452,256631,247547,238236,228731,219067,209280,199404,189472,179520,169579,159682,149860,140143,130559,121137,111901,102876,94084,85546,77280,69305,61634,54281,47257,40571,34231,28242,22608,17329,12408,7840,3625,-244,-3773,-6968,-9840,-12398,-14652,-16614,-18298,-19716,-20883,-21812,-22519,-23018,-23324,-23452,-23418,-23236,-22921,-22487,-21949,-21319,-20611,-19837,-19009,-18138,-17235,-16310,-15371,-14428,-13486,-12555,-11640,-10746,-9878,-9040,-8236,-7469,-6740,-6051,-5404,-4800,-4238,-3719,-3242,-2805,-2408,-2050,-1728,-1441,-1188,-965,-771,-604,-1063
// chanpats: 173
// name: radio_bd_fir_compiler_576k_40dec_right_0
// data_coefficient_type: 0
// filter_type: 2
// rate_change: 0
// interp_rate: 1
// decim_rate: 40
// zero_pack_factor: 1
// coeff_padding: 16
// num_coeffs: 207
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 0
// coeff_width: 32
// coeff_fract_width: 0
// chan_seq: 0
// num_channels: 1
// num_paths: 1
// data_width: 16
// data_fract_width: 15
// output_rounding_mode: 1
// output_width: 16
// accum_width: 41
// output_fract_width: 0
// config_method: 0

const double radio_bd_fir_compiler_576k_40dec_right_0_coefficients[207] = {-1063,-604,-771,-965,-1188,-1441,-1728,-2050,-2408,-2805,-3242,-3719,-4238,-4800,-5404,-6051,-6740,-7469,-8236,-9040,-9878,-10746,-11640,-12555,-13486,-14428,-15371,-16310,-17235,-18138,-19009,-19837,-20611,-21319,-21949,-22487,-22921,-23236,-23418,-23452,-23324,-23018,-22519,-21812,-20883,-19716,-18298,-16614,-14652,-12398,-9840,-6968,-3773,-244,3625,7840,12408,17329,22608,28242,34231,40571,47257,54281,61634,69305,77280,85546,94084,102876,111901,121137,130559,140143,149860,159682,169579,179520,189472,199404,209280,219067,228731,238236,247547,256631,265452,273978,282174,290009,297453,304474,311046,317141,322735,327804,332328,336288,339667,342452,344630,346192,347132,347446,347132,346192,344630,342452,339667,336288,332328,327804,322735,317141,311046,304474,297453,290009,282174,273978,265452,256631,247547,238236,228731,219067,209280,199404,189472,179520,169579,159682,149860,140143,130559,121137,111901,102876,94084,85546,77280,69305,61634,54281,47257,40571,34231,28242,22608,17329,12408,7840,3625,-244,-3773,-6968,-9840,-12398,-14652,-16614,-18298,-19716,-20883,-21812,-22519,-23018,-23324,-23452,-23418,-23236,-22921,-22487,-21949,-21319,-20611,-19837,-19009,-18138,-17235,-16310,-15371,-14428,-13486,-12555,-11640,-10746,-9878,-9040,-8236,-7469,-6740,-6051,-5404,-4800,-4238,-3719,-3242,-2805,-2408,-2050,-1728,-1441,-1188,-965,-771,-604,-1063};

const xip_fir_v7_2_pattern radio_bd_fir_compiler_576k_40dec_right_0_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_radio_bd_fir_compiler_576k_40dec_right_0_config() {
  xip_fir_v7_2_config config;
  config.name                = "radio_bd_fir_compiler_576k_40dec_right_0";
  config.data_coefficient_type = XIP_FIR_REAL_TYPE;
  config.filter_type         = 2;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 40;
  config.zero_pack_factor    = 1;
  config.coeff               = &radio_bd_fir_compiler_576k_40dec_right_0_coefficients[0];
  config.coeff_padding       = 16;
  config.num_coeffs          = 207;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 32;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = radio_bd_fir_compiler_576k_40dec_right_0_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 16;
  config.data_fract_width    = 15;
  config.output_rounding_mode= XIP_FIR_TRUNCATE_LSBS;
  config.output_width        = 16;
  config.accum_width         = 41;
  config.output_fract_width  = 0;
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config radio_bd_fir_compiler_576k_40dec_right_0_config = gen_radio_bd_fir_compiler_576k_40dec_right_0_config();

