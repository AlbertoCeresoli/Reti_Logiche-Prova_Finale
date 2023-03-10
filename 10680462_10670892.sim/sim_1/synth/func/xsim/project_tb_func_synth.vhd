-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Mar 10 10:32:09 2023
-- Host        : DESKTOP-UR6F32S running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/DELL/Desktop/10680462_10670892/Progetto_reti/10680462_10670892.sim/sim_1/synth/func/xsim/project_tb_func_synth.vhd
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity datapath is
  port (
    o_z3_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_z2_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_z1_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_z0_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \o_mem_addr_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_sequential_cur_state_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_rst_IBUF : in STD_LOGIC;
    i_start_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_clk_IBUF_BUFG : in STD_LOGIC;
    \reg_z3_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end datapath;

architecture STRUCTURE of datapath is
  signal r0_load : STD_LOGIC;
  signal r1_load : STD_LOGIC;
  signal r2_load : STD_LOGIC;
  signal r3_load : STD_LOGIC;
  signal \reg_w[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_w__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_w_n_0 : STD_LOGIC;
  signal reg_z : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_z0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_z1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_z2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_z3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg_z[1]_i_1_n_0\ : STD_LOGIC;
  signal rz_load : STD_LOGIC;
  signal z_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \z_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \z_sel[1]_i_1_n_0\ : STD_LOGIC;
begin
\FSM_sequential_cur_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0011EF33"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => z_sel(0),
      I3 => Q(2),
      I4 => Q(3),
      O => \FSM_sequential_cur_state_reg[0]\(0)
    );
\FSM_sequential_cur_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000011110110AAAA"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => z_sel(0),
      I3 => z_sel(1),
      I4 => Q(2),
      I5 => Q(1),
      O => \FSM_sequential_cur_state_reg[0]\(1)
    );
\FSM_sequential_cur_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F0000070000"
    )
        port map (
      I0 => z_sel(1),
      I1 => z_sel(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(0),
      O => \FSM_sequential_cur_state_reg[0]\(2)
    );
\FSM_sequential_cur_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00EA0000FF00"
    )
        port map (
      I0 => Q(0),
      I1 => z_sel(1),
      I2 => z_sel(0),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(2),
      O => \FSM_sequential_cur_state_reg[0]\(3)
    );
\o_mem_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(0),
      Q => \o_mem_addr_reg[15]_0\(0),
      R => '0'
    );
\o_mem_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(10),
      Q => \o_mem_addr_reg[15]_0\(10),
      R => '0'
    );
\o_mem_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(11),
      Q => \o_mem_addr_reg[15]_0\(11),
      R => '0'
    );
\o_mem_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(12),
      Q => \o_mem_addr_reg[15]_0\(12),
      R => '0'
    );
\o_mem_addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(13),
      Q => \o_mem_addr_reg[15]_0\(13),
      R => '0'
    );
\o_mem_addr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(14),
      Q => \o_mem_addr_reg[15]_0\(14),
      R => '0'
    );
\o_mem_addr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(15),
      Q => \o_mem_addr_reg[15]_0\(15),
      R => '0'
    );
\o_mem_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(1),
      Q => \o_mem_addr_reg[15]_0\(1),
      R => '0'
    );
\o_mem_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(2),
      Q => \o_mem_addr_reg[15]_0\(2),
      R => '0'
    );
\o_mem_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(3),
      Q => \o_mem_addr_reg[15]_0\(3),
      R => '0'
    );
\o_mem_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(4),
      Q => \o_mem_addr_reg[15]_0\(4),
      R => '0'
    );
\o_mem_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(5),
      Q => \o_mem_addr_reg[15]_0\(5),
      R => '0'
    );
\o_mem_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(6),
      Q => \o_mem_addr_reg[15]_0\(6),
      R => '0'
    );
\o_mem_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(7),
      Q => \o_mem_addr_reg[15]_0\(7),
      R => '0'
    );
\o_mem_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(8),
      Q => \o_mem_addr_reg[15]_0\(8),
      R => '0'
    );
\o_mem_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_w__0\(9),
      Q => \o_mem_addr_reg[15]_0\(9),
      R => '0'
    );
\o_z0_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z0(0),
      O => o_z0_OBUF(0)
    );
\o_z0_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z0(1),
      O => o_z0_OBUF(1)
    );
\o_z0_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z0(2),
      O => o_z0_OBUF(2)
    );
\o_z0_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z0(3),
      O => o_z0_OBUF(3)
    );
\o_z0_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z0(4),
      O => o_z0_OBUF(4)
    );
\o_z0_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z0(5),
      O => o_z0_OBUF(5)
    );
\o_z0_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z0(6),
      O => o_z0_OBUF(6)
    );
\o_z0_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z0(7),
      O => o_z0_OBUF(7)
    );
\o_z1_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z1(0),
      O => o_z1_OBUF(0)
    );
\o_z1_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z1(1),
      O => o_z1_OBUF(1)
    );
\o_z1_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z1(2),
      O => o_z1_OBUF(2)
    );
\o_z1_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z1(3),
      O => o_z1_OBUF(3)
    );
\o_z1_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z1(4),
      O => o_z1_OBUF(4)
    );
\o_z1_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z1(5),
      O => o_z1_OBUF(5)
    );
\o_z1_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z1(6),
      O => o_z1_OBUF(6)
    );
\o_z1_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z1(7),
      O => o_z1_OBUF(7)
    );
\o_z2_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z2(0),
      O => o_z2_OBUF(0)
    );
\o_z2_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z2(1),
      O => o_z2_OBUF(1)
    );
\o_z2_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z2(2),
      O => o_z2_OBUF(2)
    );
\o_z2_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z2(3),
      O => o_z2_OBUF(3)
    );
\o_z2_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z2(4),
      O => o_z2_OBUF(4)
    );
\o_z2_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z2(5),
      O => o_z2_OBUF(5)
    );
\o_z2_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z2(6),
      O => o_z2_OBUF(6)
    );
\o_z2_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z2(7),
      O => o_z2_OBUF(7)
    );
\o_z3_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z3(0),
      O => o_z3_OBUF(0)
    );
\o_z3_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z3(1),
      O => o_z3_OBUF(1)
    );
\o_z3_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z3(2),
      O => o_z3_OBUF(2)
    );
\o_z3_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z3(3),
      O => o_z3_OBUF(3)
    );
\o_z3_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z3(4),
      O => o_z3_OBUF(4)
    );
\o_z3_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z3(5),
      O => o_z3_OBUF(5)
    );
\o_z3_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z3(6),
      O => o_z3_OBUF(6)
    );
\o_z3_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => reg_z3(7),
      O => o_z3_OBUF(7)
    );
reg_w: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => i_start_IBUF,
      O => reg_w_n_0
    );
\reg_w[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF3AAAA"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => i_start_IBUF,
      O => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => D(0),
      Q => \reg_w__0\(0),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(9),
      Q => \reg_w__0\(10),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(10),
      Q => \reg_w__0\(11),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(11),
      Q => \reg_w__0\(12),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(12),
      Q => \reg_w__0\(13),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(13),
      Q => \reg_w__0\(14),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(14),
      Q => \reg_w__0\(15),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(0),
      Q => \reg_w__0\(1),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(1),
      Q => \reg_w__0\(2),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(2),
      Q => \reg_w__0\(3),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(3),
      Q => \reg_w__0\(4),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(4),
      Q => \reg_w__0\(5),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(5),
      Q => \reg_w__0\(6),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(6),
      Q => \reg_w__0\(7),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(7),
      Q => \reg_w__0\(8),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_w_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_w_n_0,
      D => \reg_w__0\(8),
      Q => \reg_w__0\(9),
      R => \reg_w[15]_i_1_n_0\
    );
\reg_z0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      O => r0_load
    );
\reg_z0_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(0),
      Q => reg_z0(0)
    );
\reg_z0_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(1),
      Q => reg_z0(1)
    );
\reg_z0_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(2),
      Q => reg_z0(2)
    );
\reg_z0_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(3),
      Q => reg_z0(3)
    );
\reg_z0_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(4),
      Q => reg_z0(4)
    );
\reg_z0_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(5),
      Q => reg_z0(5)
    );
\reg_z0_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(6),
      Q => reg_z0(6)
    );
\reg_z0_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(7),
      Q => reg_z0(7)
    );
\reg_z1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => r1_load
    );
\reg_z1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(0),
      Q => reg_z1(0)
    );
\reg_z1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(1),
      Q => reg_z1(1)
    );
\reg_z1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(2),
      Q => reg_z1(2)
    );
\reg_z1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(3),
      Q => reg_z1(3)
    );
\reg_z1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(4),
      Q => reg_z1(4)
    );
\reg_z1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(5),
      Q => reg_z1(5)
    );
\reg_z1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(6),
      Q => reg_z1(6)
    );
\reg_z1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(7),
      Q => reg_z1(7)
    );
\reg_z2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      O => r2_load
    );
\reg_z2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r2_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(0),
      Q => reg_z2(0)
    );
\reg_z2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r2_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(1),
      Q => reg_z2(1)
    );
\reg_z2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r2_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(2),
      Q => reg_z2(2)
    );
\reg_z2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r2_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(3),
      Q => reg_z2(3)
    );
\reg_z2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r2_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(4),
      Q => reg_z2(4)
    );
\reg_z2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r2_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(5),
      Q => reg_z2(5)
    );
\reg_z2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r2_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(6),
      Q => reg_z2(6)
    );
\reg_z2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r2_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(7),
      Q => reg_z2(7)
    );
\reg_z3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      O => r3_load
    );
\reg_z3_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(0),
      Q => reg_z3(0)
    );
\reg_z3_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(1),
      Q => reg_z3(1)
    );
\reg_z3_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(2),
      Q => reg_z3(2)
    );
\reg_z3_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(3),
      Q => reg_z3(3)
    );
\reg_z3_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(4),
      Q => reg_z3(4)
    );
\reg_z3_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(5),
      Q => reg_z3(5)
    );
\reg_z3_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(6),
      Q => reg_z3(6)
    );
\reg_z3_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_load,
      CLR => i_rst_IBUF,
      D => \reg_z3_reg[7]_0\(7),
      Q => reg_z3(7)
    );
\reg_z[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1B5B"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      O => rz_load
    );
\reg_z[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEBAEEBA028A228A"
    )
        port map (
      I0 => reg_z(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => reg_z(1),
      O => \reg_z[1]_i_1_n_0\
    );
\reg_z_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rz_load,
      D => D(0),
      Q => reg_z(0),
      R => i_rst_IBUF
    );
\reg_z_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_z[1]_i_1_n_0\,
      Q => reg_z(1),
      R => '0'
    );
\z_sel[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => reg_z(0),
      I1 => i_rst_IBUF,
      I2 => rz_load,
      I3 => z_sel(0),
      O => \z_sel[0]_i_1_n_0\
    );
\z_sel[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => reg_z(1),
      I1 => i_rst_IBUF,
      I2 => rz_load,
      I3 => z_sel(1),
      O => \z_sel[1]_i_1_n_0\
    );
\z_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \z_sel[0]_i_1_n_0\,
      Q => z_sel(0),
      R => '0'
    );
\z_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \z_sel[1]_i_1_n_0\,
      Q => z_sel(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_w : in STD_LOGIC;
    o_z0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_z1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_z2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_z3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_done : out STD_LOGIC;
    o_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_mem_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_mem_we : out STD_LOGIC;
    o_mem_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal \FSM_sequential_cur_state[3]_i_1_n_0\ : STD_LOGIC;
  signal cur_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_mem_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal i_w_IBUF : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal o_done_OBUF : STD_LOGIC;
  signal o_mem_addr_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_mem_en_OBUF : STD_LOGIC;
  signal o_z0_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_z1_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_z2_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_z3_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_reg[0]\ : label is "wait_mem:0100,receiving_w:0011,receiving_ch2:0010,finish:1010,receiving_ch1:0001,initiate:0000,print_out:1001,activate_z2:0111,activate_z1:0110,activate_z3:1000,activate_z0:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_reg[1]\ : label is "wait_mem:0100,receiving_w:0011,receiving_ch2:0010,finish:1010,receiving_ch1:0001,initiate:0000,print_out:1001,activate_z2:0111,activate_z1:0110,activate_z3:1000,activate_z0:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_reg[2]\ : label is "wait_mem:0100,receiving_w:0011,receiving_ch2:0010,finish:1010,receiving_ch1:0001,initiate:0000,print_out:1001,activate_z2:0111,activate_z1:0110,activate_z3:1000,activate_z0:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_reg[3]\ : label is "wait_mem:0100,receiving_w:0011,receiving_ch2:0010,finish:1010,receiving_ch1:0001,initiate:0000,print_out:1001,activate_z2:0111,activate_z1:0110,activate_z3:1000,activate_z0:0101";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of o_done_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_mem_en_OBUF_inst_i_1 : label is "soft_lutpair0";
begin
DATAPATH0: entity work.datapath
     port map (
      D(0) => i_w_IBUF,
      \FSM_sequential_cur_state_reg[0]\(3 downto 0) => next_state(3 downto 0),
      Q(3 downto 0) => cur_state(3 downto 0),
      i_clk_IBUF_BUFG => i_clk_IBUF_BUFG,
      i_rst_IBUF => i_rst_IBUF,
      i_start_IBUF => i_start_IBUF,
      \o_mem_addr_reg[15]_0\(15 downto 0) => o_mem_addr_OBUF(15 downto 0),
      o_z0_OBUF(7 downto 0) => o_z0_OBUF(7 downto 0),
      o_z1_OBUF(7 downto 0) => o_z1_OBUF(7 downto 0),
      o_z2_OBUF(7 downto 0) => o_z2_OBUF(7 downto 0),
      o_z3_OBUF(7 downto 0) => o_z3_OBUF(7 downto 0),
      \reg_z3_reg[7]_0\(7 downto 0) => i_mem_data_IBUF(7 downto 0)
    );
\FSM_sequential_cur_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF3F7E"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => cur_state(0),
      I2 => cur_state(1),
      I3 => cur_state(3),
      I4 => cur_state(2),
      O => \FSM_sequential_cur_state[3]_i_1_n_0\
    );
\FSM_sequential_cur_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_state(0),
      Q => cur_state(0)
    );
\FSM_sequential_cur_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_state(1),
      Q => cur_state(1)
    );
\FSM_sequential_cur_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_state(2),
      Q => cur_state(2)
    );
\FSM_sequential_cur_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_state(3),
      Q => cur_state(3)
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_mem_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(0),
      O => i_mem_data_IBUF(0)
    );
\i_mem_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(1),
      O => i_mem_data_IBUF(1)
    );
\i_mem_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(2),
      O => i_mem_data_IBUF(2)
    );
\i_mem_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(3),
      O => i_mem_data_IBUF(3)
    );
\i_mem_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(4),
      O => i_mem_data_IBUF(4)
    );
\i_mem_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(5),
      O => i_mem_data_IBUF(5)
    );
\i_mem_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(6),
      O => i_mem_data_IBUF(6)
    );
\i_mem_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(7),
      O => i_mem_data_IBUF(7)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_start,
      O => i_start_IBUF
    );
i_w_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_w,
      O => i_w_IBUF
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_done_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(2),
      I2 => cur_state(0),
      I3 => cur_state(3),
      O => o_done_OBUF
    );
\o_mem_addr_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(0),
      O => o_mem_addr(0)
    );
\o_mem_addr_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(10),
      O => o_mem_addr(10)
    );
\o_mem_addr_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(11),
      O => o_mem_addr(11)
    );
\o_mem_addr_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(12),
      O => o_mem_addr(12)
    );
\o_mem_addr_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(13),
      O => o_mem_addr(13)
    );
\o_mem_addr_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(14),
      O => o_mem_addr(14)
    );
\o_mem_addr_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(15),
      O => o_mem_addr(15)
    );
\o_mem_addr_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(1),
      O => o_mem_addr(1)
    );
\o_mem_addr_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(2),
      O => o_mem_addr(2)
    );
\o_mem_addr_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(3),
      O => o_mem_addr(3)
    );
\o_mem_addr_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(4),
      O => o_mem_addr(4)
    );
\o_mem_addr_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(5),
      O => o_mem_addr(5)
    );
\o_mem_addr_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(6),
      O => o_mem_addr(6)
    );
\o_mem_addr_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(7),
      O => o_mem_addr(7)
    );
\o_mem_addr_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(8),
      O => o_mem_addr(8)
    );
\o_mem_addr_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(9),
      O => o_mem_addr(9)
    );
o_mem_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_mem_en_OBUF,
      O => o_mem_en
    );
o_mem_en_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(0),
      I2 => cur_state(2),
      I3 => cur_state(1),
      O => o_mem_en_OBUF
    );
o_mem_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_mem_we
    );
\o_z0_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(0),
      O => o_z0(0)
    );
\o_z0_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(1),
      O => o_z0(1)
    );
\o_z0_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(2),
      O => o_z0(2)
    );
\o_z0_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(3),
      O => o_z0(3)
    );
\o_z0_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(4),
      O => o_z0(4)
    );
\o_z0_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(5),
      O => o_z0(5)
    );
\o_z0_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(6),
      O => o_z0(6)
    );
\o_z0_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(7),
      O => o_z0(7)
    );
\o_z1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(0),
      O => o_z1(0)
    );
\o_z1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(1),
      O => o_z1(1)
    );
\o_z1_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(2),
      O => o_z1(2)
    );
\o_z1_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(3),
      O => o_z1(3)
    );
\o_z1_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(4),
      O => o_z1(4)
    );
\o_z1_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(5),
      O => o_z1(5)
    );
\o_z1_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(6),
      O => o_z1(6)
    );
\o_z1_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(7),
      O => o_z1(7)
    );
\o_z2_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(0),
      O => o_z2(0)
    );
\o_z2_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(1),
      O => o_z2(1)
    );
\o_z2_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(2),
      O => o_z2(2)
    );
\o_z2_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(3),
      O => o_z2(3)
    );
\o_z2_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(4),
      O => o_z2(4)
    );
\o_z2_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(5),
      O => o_z2(5)
    );
\o_z2_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(6),
      O => o_z2(6)
    );
\o_z2_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(7),
      O => o_z2(7)
    );
\o_z3_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(0),
      O => o_z3(0)
    );
\o_z3_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(1),
      O => o_z3(1)
    );
\o_z3_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(2),
      O => o_z3(2)
    );
\o_z3_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(3),
      O => o_z3(3)
    );
\o_z3_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(4),
      O => o_z3(4)
    );
\o_z3_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(5),
      O => o_z3(5)
    );
\o_z3_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(6),
      O => o_z3(6)
    );
\o_z3_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(7),
      O => o_z3(7)
    );
end STRUCTURE;
