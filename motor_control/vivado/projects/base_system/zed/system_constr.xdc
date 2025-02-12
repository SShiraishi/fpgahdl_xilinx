
# constraints
# hdmi 

set_property  -dict {PACKAGE_PIN  W18  IOSTANDARD LVCMOS33} [get_ports hdmi_out_clk]
set_property  -dict {PACKAGE_PIN  W17  IOSTANDARD LVCMOS33} [get_ports hdmi_vsync]
set_property  -dict {PACKAGE_PIN  V17  IOSTANDARD LVCMOS33} [get_ports hdmi_hsync]
set_property  -dict {PACKAGE_PIN  U16  IOSTANDARD LVCMOS33} [get_ports hdmi_data_e]
set_property  -dict {PACKAGE_PIN  Y13  IOSTANDARD LVCMOS33} [get_ports hdmi_data[0]]
set_property  -dict {PACKAGE_PIN  AA13 IOSTANDARD LVCMOS33} [get_ports hdmi_data[1]]
set_property  -dict {PACKAGE_PIN  AA14 IOSTANDARD LVCMOS33} [get_ports hdmi_data[2]]
set_property  -dict {PACKAGE_PIN  Y14  IOSTANDARD LVCMOS33} [get_ports hdmi_data[3]]
set_property  -dict {PACKAGE_PIN  AB15 IOSTANDARD LVCMOS33} [get_ports hdmi_data[4]]
set_property  -dict {PACKAGE_PIN  AB16 IOSTANDARD LVCMOS33} [get_ports hdmi_data[5]]
set_property  -dict {PACKAGE_PIN  AA16 IOSTANDARD LVCMOS33} [get_ports hdmi_data[6]]
set_property  -dict {PACKAGE_PIN  AB17 IOSTANDARD LVCMOS33} [get_ports hdmi_data[7]]
set_property  -dict {PACKAGE_PIN  AA17 IOSTANDARD LVCMOS33} [get_ports hdmi_data[8]]
set_property  -dict {PACKAGE_PIN  Y15  IOSTANDARD LVCMOS33} [get_ports hdmi_data[9]]
set_property  -dict {PACKAGE_PIN  W13  IOSTANDARD LVCMOS33} [get_ports hdmi_data[10]]
set_property  -dict {PACKAGE_PIN  W15  IOSTANDARD LVCMOS33} [get_ports hdmi_data[11]]
set_property  -dict {PACKAGE_PIN  V15  IOSTANDARD LVCMOS33} [get_ports hdmi_data[12]]
set_property  -dict {PACKAGE_PIN  U17  IOSTANDARD LVCMOS33} [get_ports hdmi_data[13]]
set_property  -dict {PACKAGE_PIN  V14  IOSTANDARD LVCMOS33} [get_ports hdmi_data[14]]
set_property  -dict {PACKAGE_PIN  V13  IOSTANDARD LVCMOS33} [get_ports hdmi_data[15]]
#set_property  -dict {PACKAGE_PIN  W16  IOSTANDARD LVCMOS33} [get_ports hdmi_int]

# iic

set_property  -dict {PACKAGE_PIN  AA18 IOSTANDARD LVCMOS33} [get_ports iic_mux_scl[1]]
set_property  -dict {PACKAGE_PIN  Y16  IOSTANDARD LVCMOS33} [get_ports iic_mux_sda[1]]
set_property  -dict {PACKAGE_PIN  AB4  IOSTANDARD LVCMOS33} [get_ports iic_mux_scl[0]]
set_property  -dict {PACKAGE_PIN  AB5  IOSTANDARD LVCMOS33} [get_ports iic_mux_sda[0]]

# otg

set_property  -dict {PACKAGE_PIN  L16  IOSTANDARD LVCMOS25} [get_ports otg_vbusoc]

# gpio (switches, leds and such)

set_property  -dict {PACKAGE_PIN  P16  IOSTANDARD LVCMOS25} [get_ports gpio_bd[0]]      ; ## BTNC
set_property  -dict {PACKAGE_PIN  R16  IOSTANDARD LVCMOS25} [get_ports gpio_bd[1]]      ; ## BTND
set_property  -dict {PACKAGE_PIN  N15  IOSTANDARD LVCMOS25} [get_ports gpio_bd[2]]      ; ## BTNL
set_property  -dict {PACKAGE_PIN  R18  IOSTANDARD LVCMOS25} [get_ports gpio_bd[3]]      ; ## BTNR
set_property  -dict {PACKAGE_PIN  T18  IOSTANDARD LVCMOS25} [get_ports gpio_bd[4]]      ; ## BTNU
set_property  -dict {PACKAGE_PIN  U10  IOSTANDARD LVCMOS33} [get_ports gpio_bd[5]]      ; ## OLED-DC
set_property  -dict {PACKAGE_PIN  U9   IOSTANDARD LVCMOS33} [get_ports gpio_bd[6]]      ; ## OLED-RES
set_property  -dict {PACKAGE_PIN  AB12 IOSTANDARD LVCMOS33} [get_ports gpio_bd[7]]      ; ## OLED-SCLK
set_property  -dict {PACKAGE_PIN  AA12 IOSTANDARD LVCMOS33} [get_ports gpio_bd[8]]      ; ## OLED-SDIN
set_property  -dict {PACKAGE_PIN  U11  IOSTANDARD LVCMOS33} [get_ports gpio_bd[9]]      ; ## OLED-VBAT
set_property  -dict {PACKAGE_PIN  U12  IOSTANDARD LVCMOS33} [get_ports gpio_bd[10]]     ; ## OLED-VDD

set_property  -dict {PACKAGE_PIN  F22  IOSTANDARD LVCMOS25} [get_ports gpio_bd[11]]     ; ## SW0
set_property  -dict {PACKAGE_PIN  G22  IOSTANDARD LVCMOS25} [get_ports gpio_bd[12]]     ; ## SW1
set_property  -dict {PACKAGE_PIN  H22  IOSTANDARD LVCMOS25} [get_ports gpio_bd[13]]     ; ## SW2
set_property  -dict {PACKAGE_PIN  F21  IOSTANDARD LVCMOS25} [get_ports gpio_bd[14]]     ; ## SW3
set_property  -dict {PACKAGE_PIN  H19  IOSTANDARD LVCMOS25} [get_ports gpio_bd[15]]     ; ## SW4
set_property  -dict {PACKAGE_PIN  H18  IOSTANDARD LVCMOS25} [get_ports gpio_bd[16]]     ; ## SW5
set_property  -dict {PACKAGE_PIN  H17  IOSTANDARD LVCMOS25} [get_ports gpio_bd[17]]     ; ## SW6
set_property  -dict {PACKAGE_PIN  M15  IOSTANDARD LVCMOS25} [get_ports gpio_bd[18]]     ; ## SW7

set_property  -dict {PACKAGE_PIN  T22  IOSTANDARD LVCMOS33} [get_ports gpio_bd[19]]     ; ## LD0
set_property  -dict {PACKAGE_PIN  T21  IOSTANDARD LVCMOS33} [get_ports gpio_bd[20]]     ; ## LD1
set_property  -dict {PACKAGE_PIN  U22  IOSTANDARD LVCMOS33} [get_ports gpio_bd[21]]     ; ## LD2
set_property  -dict {PACKAGE_PIN  U21  IOSTANDARD LVCMOS33} [get_ports gpio_bd[22]]     ; ## LD3
set_property  -dict {PACKAGE_PIN  V22  IOSTANDARD LVCMOS33} [get_ports gpio_bd[23]]     ; ## LD4
set_property  -dict {PACKAGE_PIN  W22  IOSTANDARD LVCMOS33} [get_ports gpio_bd[24]]     ; ## LD5
set_property  -dict {PACKAGE_PIN  U19  IOSTANDARD LVCMOS33} [get_ports gpio_bd[25]]     ; ## LD6
set_property  -dict {PACKAGE_PIN  U14  IOSTANDARD LVCMOS33} [get_ports gpio_bd[26]]     ; ## LD7

# audio

set_property  -dict {PACKAGE_PIN  AB2  IOSTANDARD LVCMOS33} [get_ports i2s_mclk]
set_property  -dict {PACKAGE_PIN  AA6  IOSTANDARD LVCMOS33} [get_ports i2s_bclk]
set_property  -dict {PACKAGE_PIN  Y6   IOSTANDARD LVCMOS33} [get_ports i2s_lrclk]
set_property  -dict {PACKAGE_PIN  Y8   IOSTANDARD LVCMOS33} [get_ports i2s_sdata_out]
set_property  -dict {PACKAGE_PIN  AA7  IOSTANDARD LVCMOS33} [get_ports i2s_sdata_in]

set_property  -dict {PACKAGE_PIN  U15  IOSTANDARD LVCMOS33} [get_ports spdif_out]

# clocks

create_clock -name ps7_fclk0    -period 10.00 [get_pins i_system_wrapper/system_i/processing_system7_1/FCLK_CLK0]
create_clock -name ps7_fclk1    -period  5.00 [get_pins i_system_wrapper/system_i/processing_system7_1/FCLK_CLK1]
create_clock -name hdmi_clk     -period  6.73 [get_nets i_system_wrapper/system_i/axi_clkgen_1/inst/i_mmcm_drp/mmcm_clk_0_s]
create_clock -name audio_clk    -period 81.38 [get_pins i_system_wrapper/system_i/clkgen_audio_1/clk_out1]

set_clock_groups -name async_clocks -asynchronous \
	-group [get_clocks ps7_fclk0] \
	-group [get_clocks ps7_fclk1] \
	-group [get_clocks hdmi_clk] \
	-group [get_clocks audio_clk]
