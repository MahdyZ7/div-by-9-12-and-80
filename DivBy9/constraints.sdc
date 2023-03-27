###################################################################

# Created by write_sdc on Sun Mar 26 18:32:11 2023

###################################################################
set sdc_version 2.1

set_units -time ps -resistance kOhm -capacitance fF -voltage V -current mA
set_operating_conditions SSG_0P72V_0P00V_0P00V_0P00V_M40C -library             \
GF22FDX_SC8T_104CPP_BASE_CSC20L_SSG_0P72V_0P00V_0P00V_0P00V_M40C
create_clock -name CLK  -period 500  -waveform {0 250}
