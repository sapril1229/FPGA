-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Mar 20 13:01:34 2018
-- Host        : DESKTOP-CL37U4I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Arty_RGB_RTL_0_0_stub.vhdl
-- Design      : design_1_Arty_RGB_RTL_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    r0_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    g0_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b0_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    r1_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    g1_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b1_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led0_r : out STD_LOGIC;
    led0_g : out STD_LOGIC;
    led0_b : out STD_LOGIC;
    led1_r : out STD_LOGIC;
    led1_g : out STD_LOGIC;
    led1_b : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,r0_val[7:0],g0_val[7:0],b0_val[7:0],r1_val[7:0],g1_val[7:0],b1_val[7:0],led0_r,led0_g,led0_b,led1_r,led1_g,led1_b";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "RGB_controller,Vivado 2017.4";
begin
end;
