# SWITCHES
set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS33} [get_ports sw0];
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS33} [get_ports sw1];

#LEDS
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports led2];
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports led5];

#CLOCK
set_property -dict { PACKAGE_PIN R2 IOSTANDARD SSTL135 } [get_ports { CLK100MHZ }];
create_clock -add -name CLK100MHZ -period 10.000 -waveform {0 5.000}  [get_ports { CLK100MHZ }];