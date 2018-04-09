-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Apr  7 14:42:23 2018
-- Host        : DESKTOP-1OJ86MR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Workspaces/Xilinx/ip_test/Dual_DAC/Dual_DAC.srcs/sources_1/bd/design_1/ip/design_1_AD5065_Dual_DAC_RTL_0_1/design_1_AD5065_Dual_DAC_RTL_0_1_stub.vhdl
-- Design      : design_1_AD5065_Dual_DAC_RTL_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_AD5065_Dual_DAC_RTL_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sclk : out STD_LOGIC;
    sync : out STD_LOGIC;
    mosi : out STD_LOGIC;
    ldac : out STD_LOGIC
  );

end design_1_AD5065_Dual_DAC_RTL_0_1;

architecture stub of design_1_AD5065_Dual_DAC_RTL_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,data[31:0],sclk,sync,mosi,ldac";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AD5065_Dual_DAC,Vivado 2017.4";
begin
end;
