###################################################################

# Created by write_sdc on Sat Oct 27 18:31:13 2018

###################################################################
set sdc_version 1.7

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_clock_uncertainty -setup 0.5  [get_clocks clk]
set_false_path -hold   -from [list [get_ports {P[63]}] [get_ports {P[62]}] [get_ports {P[61]}]       \
[get_ports {P[60]}] [get_ports {P[59]}] [get_ports {P[58]}] [get_ports         \
{P[57]}] [get_ports {P[56]}] [get_ports {P[55]}] [get_ports {P[54]}]           \
[get_ports {P[53]}] [get_ports {P[52]}] [get_ports {P[51]}] [get_ports         \
{P[50]}] [get_ports {P[49]}] [get_ports {P[48]}] [get_ports {P[47]}]           \
[get_ports {P[46]}] [get_ports {P[45]}] [get_ports {P[44]}] [get_ports         \
{P[43]}] [get_ports {P[42]}] [get_ports {P[41]}] [get_ports {P[40]}]           \
[get_ports {P[39]}] [get_ports {P[38]}] [get_ports {P[37]}] [get_ports         \
{P[36]}] [get_ports {P[35]}] [get_ports {P[34]}] [get_ports {P[33]}]           \
[get_ports {P[32]}] [get_ports {P[31]}] [get_ports {P[30]}] [get_ports         \
{P[29]}] [get_ports {P[28]}] [get_ports {P[27]}] [get_ports {P[26]}]           \
[get_ports {P[25]}] [get_ports {P[24]}] [get_ports {P[23]}] [get_ports         \
{P[22]}] [get_ports {P[21]}] [get_ports {P[20]}] [get_ports {P[19]}]           \
[get_ports {P[18]}] [get_ports {P[17]}] [get_ports {P[16]}] [get_ports         \
{P[15]}] [get_ports {P[14]}] [get_ports {P[13]}] [get_ports {P[12]}]           \
[get_ports {P[11]}] [get_ports {P[10]}] [get_ports {P[9]}] [get_ports {P[8]}]  \
[get_ports {P[7]}] [get_ports {P[6]}] [get_ports {P[5]}] [get_ports {P[4]}]    \
[get_ports {P[3]}] [get_ports {P[2]}] [get_ports {P[1]}] [get_ports {P[0]}]    \
[get_ports {MK[127]}] [get_ports {MK[126]}] [get_ports {MK[125]}] [get_ports   \
{MK[124]}] [get_ports {MK[123]}] [get_ports {MK[122]}] [get_ports {MK[121]}]   \
[get_ports {MK[120]}] [get_ports {MK[119]}] [get_ports {MK[118]}] [get_ports   \
{MK[117]}] [get_ports {MK[116]}] [get_ports {MK[115]}] [get_ports {MK[114]}]   \
[get_ports {MK[113]}] [get_ports {MK[112]}] [get_ports {MK[111]}] [get_ports   \
{MK[110]}] [get_ports {MK[109]}] [get_ports {MK[108]}] [get_ports {MK[107]}]   \
[get_ports {MK[106]}] [get_ports {MK[105]}] [get_ports {MK[104]}] [get_ports   \
{MK[103]}] [get_ports {MK[102]}] [get_ports {MK[101]}] [get_ports {MK[100]}]   \
[get_ports {MK[99]}] [get_ports {MK[98]}] [get_ports {MK[97]}] [get_ports      \
{MK[96]}] [get_ports {MK[95]}] [get_ports {MK[94]}] [get_ports {MK[93]}]       \
[get_ports {MK[92]}] [get_ports {MK[91]}] [get_ports {MK[90]}] [get_ports      \
{MK[89]}] [get_ports {MK[88]}] [get_ports {MK[87]}] [get_ports {MK[86]}]       \
[get_ports {MK[85]}] [get_ports {MK[84]}] [get_ports {MK[83]}] [get_ports      \
{MK[82]}] [get_ports {MK[81]}] [get_ports {MK[80]}] [get_ports {MK[79]}]       \
[get_ports {MK[78]}] [get_ports {MK[77]}] [get_ports {MK[76]}] [get_ports      \
{MK[75]}] [get_ports {MK[74]}] [get_ports {MK[73]}] [get_ports {MK[72]}]       \
[get_ports {MK[71]}] [get_ports {MK[70]}] [get_ports {MK[69]}] [get_ports      \
{MK[68]}] [get_ports {MK[67]}] [get_ports {MK[66]}] [get_ports {MK[65]}]       \
[get_ports {MK[64]}] [get_ports {MK[63]}] [get_ports {MK[62]}] [get_ports      \
{MK[61]}] [get_ports {MK[60]}] [get_ports {MK[59]}] [get_ports {MK[58]}]       \
[get_ports {MK[57]}] [get_ports {MK[56]}] [get_ports {MK[55]}] [get_ports      \
{MK[54]}] [get_ports {MK[53]}] [get_ports {MK[52]}] [get_ports {MK[51]}]       \
[get_ports {MK[50]}] [get_ports {MK[49]}] [get_ports {MK[48]}] [get_ports      \
{MK[47]}] [get_ports {MK[46]}] [get_ports {MK[45]}] [get_ports {MK[44]}]       \
[get_ports {MK[43]}] [get_ports {MK[42]}] [get_ports {MK[41]}] [get_ports      \
{MK[40]}] [get_ports {MK[39]}] [get_ports {MK[38]}] [get_ports {MK[37]}]       \
[get_ports {MK[36]}] [get_ports {MK[35]}] [get_ports {MK[34]}] [get_ports      \
{MK[33]}] [get_ports {MK[32]}] [get_ports {MK[31]}] [get_ports {MK[30]}]       \
[get_ports {MK[29]}] [get_ports {MK[28]}] [get_ports {MK[27]}] [get_ports      \
{MK[26]}] [get_ports {MK[25]}] [get_ports {MK[24]}] [get_ports {MK[23]}]       \
[get_ports {MK[22]}] [get_ports {MK[21]}] [get_ports {MK[20]}] [get_ports      \
{MK[19]}] [get_ports {MK[18]}] [get_ports {MK[17]}] [get_ports {MK[16]}]       \
[get_ports {MK[15]}] [get_ports {MK[14]}] [get_ports {MK[13]}] [get_ports      \
{MK[12]}] [get_ports {MK[11]}] [get_ports {MK[10]}] [get_ports {MK[9]}]        \
[get_ports {MK[8]}] [get_ports {MK[7]}] [get_ports {MK[6]}] [get_ports         \
{MK[5]}] [get_ports {MK[4]}] [get_ports {MK[3]}] [get_ports {MK[2]}]           \
[get_ports {MK[1]}] [get_ports {MK[0]}] [get_ports reset] [get_ports ed]]
set_false_path -hold   -to [list [get_ports {C[63]}] [get_ports {C[62]}] [get_ports {C[61]}]         \
[get_ports {C[60]}] [get_ports {C[59]}] [get_ports {C[58]}] [get_ports         \
{C[57]}] [get_ports {C[56]}] [get_ports {C[55]}] [get_ports {C[54]}]           \
[get_ports {C[53]}] [get_ports {C[52]}] [get_ports {C[51]}] [get_ports         \
{C[50]}] [get_ports {C[49]}] [get_ports {C[48]}] [get_ports {C[47]}]           \
[get_ports {C[46]}] [get_ports {C[45]}] [get_ports {C[44]}] [get_ports         \
{C[43]}] [get_ports {C[42]}] [get_ports {C[41]}] [get_ports {C[40]}]           \
[get_ports {C[39]}] [get_ports {C[38]}] [get_ports {C[37]}] [get_ports         \
{C[36]}] [get_ports {C[35]}] [get_ports {C[34]}] [get_ports {C[33]}]           \
[get_ports {C[32]}] [get_ports {C[31]}] [get_ports {C[30]}] [get_ports         \
{C[29]}] [get_ports {C[28]}] [get_ports {C[27]}] [get_ports {C[26]}]           \
[get_ports {C[25]}] [get_ports {C[24]}] [get_ports {C[23]}] [get_ports         \
{C[22]}] [get_ports {C[21]}] [get_ports {C[20]}] [get_ports {C[19]}]           \
[get_ports {C[18]}] [get_ports {C[17]}] [get_ports {C[16]}] [get_ports         \
{C[15]}] [get_ports {C[14]}] [get_ports {C[13]}] [get_ports {C[12]}]           \
[get_ports {C[11]}] [get_ports {C[10]}] [get_ports {C[9]}] [get_ports {C[8]}]  \
[get_ports {C[7]}] [get_ports {C[6]}] [get_ports {C[5]}] [get_ports {C[4]}]    \
[get_ports {C[3]}] [get_ports {C[2]}] [get_ports {C[1]}] [get_ports {C[0]}]]
set_input_delay -clock clk  -max 1  [get_ports {P[63]}]
set_input_delay -clock clk  -max 1  [get_ports {P[62]}]
set_input_delay -clock clk  -max 1  [get_ports {P[61]}]
set_input_delay -clock clk  -max 1  [get_ports {P[60]}]
set_input_delay -clock clk  -max 1  [get_ports {P[59]}]
set_input_delay -clock clk  -max 1  [get_ports {P[58]}]
set_input_delay -clock clk  -max 1  [get_ports {P[57]}]
set_input_delay -clock clk  -max 1  [get_ports {P[56]}]
set_input_delay -clock clk  -max 1  [get_ports {P[55]}]
set_input_delay -clock clk  -max 1  [get_ports {P[54]}]
set_input_delay -clock clk  -max 1  [get_ports {P[53]}]
set_input_delay -clock clk  -max 1  [get_ports {P[52]}]
set_input_delay -clock clk  -max 1  [get_ports {P[51]}]
set_input_delay -clock clk  -max 1  [get_ports {P[50]}]
set_input_delay -clock clk  -max 1  [get_ports {P[49]}]
set_input_delay -clock clk  -max 1  [get_ports {P[48]}]
set_input_delay -clock clk  -max 1  [get_ports {P[47]}]
set_input_delay -clock clk  -max 1  [get_ports {P[46]}]
set_input_delay -clock clk  -max 1  [get_ports {P[45]}]
set_input_delay -clock clk  -max 1  [get_ports {P[44]}]
set_input_delay -clock clk  -max 1  [get_ports {P[43]}]
set_input_delay -clock clk  -max 1  [get_ports {P[42]}]
set_input_delay -clock clk  -max 1  [get_ports {P[41]}]
set_input_delay -clock clk  -max 1  [get_ports {P[40]}]
set_input_delay -clock clk  -max 1  [get_ports {P[39]}]
set_input_delay -clock clk  -max 1  [get_ports {P[38]}]
set_input_delay -clock clk  -max 1  [get_ports {P[37]}]
set_input_delay -clock clk  -max 1  [get_ports {P[36]}]
set_input_delay -clock clk  -max 1  [get_ports {P[35]}]
set_input_delay -clock clk  -max 1  [get_ports {P[34]}]
set_input_delay -clock clk  -max 1  [get_ports {P[33]}]
set_input_delay -clock clk  -max 1  [get_ports {P[32]}]
set_input_delay -clock clk  -max 1  [get_ports {P[31]}]
set_input_delay -clock clk  -max 1  [get_ports {P[30]}]
set_input_delay -clock clk  -max 1  [get_ports {P[29]}]
set_input_delay -clock clk  -max 1  [get_ports {P[28]}]
set_input_delay -clock clk  -max 1  [get_ports {P[27]}]
set_input_delay -clock clk  -max 1  [get_ports {P[26]}]
set_input_delay -clock clk  -max 1  [get_ports {P[25]}]
set_input_delay -clock clk  -max 1  [get_ports {P[24]}]
set_input_delay -clock clk  -max 1  [get_ports {P[23]}]
set_input_delay -clock clk  -max 1  [get_ports {P[22]}]
set_input_delay -clock clk  -max 1  [get_ports {P[21]}]
set_input_delay -clock clk  -max 1  [get_ports {P[20]}]
set_input_delay -clock clk  -max 1  [get_ports {P[19]}]
set_input_delay -clock clk  -max 1  [get_ports {P[18]}]
set_input_delay -clock clk  -max 1  [get_ports {P[17]}]
set_input_delay -clock clk  -max 1  [get_ports {P[16]}]
set_input_delay -clock clk  -max 1  [get_ports {P[15]}]
set_input_delay -clock clk  -max 1  [get_ports {P[14]}]
set_input_delay -clock clk  -max 1  [get_ports {P[13]}]
set_input_delay -clock clk  -max 1  [get_ports {P[12]}]
set_input_delay -clock clk  -max 1  [get_ports {P[11]}]
set_input_delay -clock clk  -max 1  [get_ports {P[10]}]
set_input_delay -clock clk  -max 1  [get_ports {P[9]}]
set_input_delay -clock clk  -max 1  [get_ports {P[8]}]
set_input_delay -clock clk  -max 1  [get_ports {P[7]}]
set_input_delay -clock clk  -max 1  [get_ports {P[6]}]
set_input_delay -clock clk  -max 1  [get_ports {P[5]}]
set_input_delay -clock clk  -max 1  [get_ports {P[4]}]
set_input_delay -clock clk  -max 1  [get_ports {P[3]}]
set_input_delay -clock clk  -max 1  [get_ports {P[2]}]
set_input_delay -clock clk  -max 1  [get_ports {P[1]}]
set_input_delay -clock clk  -max 1  [get_ports {P[0]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[127]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[126]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[125]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[124]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[123]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[122]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[121]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[120]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[119]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[118]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[117]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[116]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[115]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[114]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[113]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[112]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[111]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[110]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[109]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[108]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[107]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[106]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[105]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[104]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[103]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[102]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[101]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[100]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[99]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[98]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[97]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[96]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[95]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[94]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[93]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[92]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[91]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[90]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[89]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[88]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[87]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[86]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[85]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[84]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[83]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[82]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[81]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[80]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[79]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[78]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[77]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[76]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[75]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[74]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[73]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[72]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[71]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[70]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[69]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[68]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[67]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[66]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[65]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[64]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[63]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[62]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[61]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[60]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[59]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[58]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[57]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[56]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[55]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[54]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[53]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[52]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[51]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[50]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[49]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[48]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[47]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[46]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[45]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[44]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[43]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[42]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[41]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[40]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[39]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[38]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[37]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[36]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[35]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[34]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[33]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[32]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[31]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[30]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[29]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[28]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[27]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[26]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[25]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[24]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[23]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[22]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[21]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[20]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[19]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[18]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[17]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[16]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[15]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[14]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[13]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[12]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[11]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[10]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[9]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[8]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[7]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[6]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[5]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[4]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[3]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[2]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[1]}]
set_input_delay -clock clk  -max 1  [get_ports {MK[0]}]
set_input_delay -clock clk  -max 1  [get_ports reset]
set_input_delay -clock clk  -max 1  [get_ports ed]
set_output_delay -clock clk  -max 1  [get_ports {C[63]}]
set_output_delay -clock clk  -max 1  [get_ports {C[62]}]
set_output_delay -clock clk  -max 1  [get_ports {C[61]}]
set_output_delay -clock clk  -max 1  [get_ports {C[60]}]
set_output_delay -clock clk  -max 1  [get_ports {C[59]}]
set_output_delay -clock clk  -max 1  [get_ports {C[58]}]
set_output_delay -clock clk  -max 1  [get_ports {C[57]}]
set_output_delay -clock clk  -max 1  [get_ports {C[56]}]
set_output_delay -clock clk  -max 1  [get_ports {C[55]}]
set_output_delay -clock clk  -max 1  [get_ports {C[54]}]
set_output_delay -clock clk  -max 1  [get_ports {C[53]}]
set_output_delay -clock clk  -max 1  [get_ports {C[52]}]
set_output_delay -clock clk  -max 1  [get_ports {C[51]}]
set_output_delay -clock clk  -max 1  [get_ports {C[50]}]
set_output_delay -clock clk  -max 1  [get_ports {C[49]}]
set_output_delay -clock clk  -max 1  [get_ports {C[48]}]
set_output_delay -clock clk  -max 1  [get_ports {C[47]}]
set_output_delay -clock clk  -max 1  [get_ports {C[46]}]
set_output_delay -clock clk  -max 1  [get_ports {C[45]}]
set_output_delay -clock clk  -max 1  [get_ports {C[44]}]
set_output_delay -clock clk  -max 1  [get_ports {C[43]}]
set_output_delay -clock clk  -max 1  [get_ports {C[42]}]
set_output_delay -clock clk  -max 1  [get_ports {C[41]}]
set_output_delay -clock clk  -max 1  [get_ports {C[40]}]
set_output_delay -clock clk  -max 1  [get_ports {C[39]}]
set_output_delay -clock clk  -max 1  [get_ports {C[38]}]
set_output_delay -clock clk  -max 1  [get_ports {C[37]}]
set_output_delay -clock clk  -max 1  [get_ports {C[36]}]
set_output_delay -clock clk  -max 1  [get_ports {C[35]}]
set_output_delay -clock clk  -max 1  [get_ports {C[34]}]
set_output_delay -clock clk  -max 1  [get_ports {C[33]}]
set_output_delay -clock clk  -max 1  [get_ports {C[32]}]
set_output_delay -clock clk  -max 1  [get_ports {C[31]}]
set_output_delay -clock clk  -max 1  [get_ports {C[30]}]
set_output_delay -clock clk  -max 1  [get_ports {C[29]}]
set_output_delay -clock clk  -max 1  [get_ports {C[28]}]
set_output_delay -clock clk  -max 1  [get_ports {C[27]}]
set_output_delay -clock clk  -max 1  [get_ports {C[26]}]
set_output_delay -clock clk  -max 1  [get_ports {C[25]}]
set_output_delay -clock clk  -max 1  [get_ports {C[24]}]
set_output_delay -clock clk  -max 1  [get_ports {C[23]}]
set_output_delay -clock clk  -max 1  [get_ports {C[22]}]
set_output_delay -clock clk  -max 1  [get_ports {C[21]}]
set_output_delay -clock clk  -max 1  [get_ports {C[20]}]
set_output_delay -clock clk  -max 1  [get_ports {C[19]}]
set_output_delay -clock clk  -max 1  [get_ports {C[18]}]
set_output_delay -clock clk  -max 1  [get_ports {C[17]}]
set_output_delay -clock clk  -max 1  [get_ports {C[16]}]
set_output_delay -clock clk  -max 1  [get_ports {C[15]}]
set_output_delay -clock clk  -max 1  [get_ports {C[14]}]
set_output_delay -clock clk  -max 1  [get_ports {C[13]}]
set_output_delay -clock clk  -max 1  [get_ports {C[12]}]
set_output_delay -clock clk  -max 1  [get_ports {C[11]}]
set_output_delay -clock clk  -max 1  [get_ports {C[10]}]
set_output_delay -clock clk  -max 1  [get_ports {C[9]}]
set_output_delay -clock clk  -max 1  [get_ports {C[8]}]
set_output_delay -clock clk  -max 1  [get_ports {C[7]}]
set_output_delay -clock clk  -max 1  [get_ports {C[6]}]
set_output_delay -clock clk  -max 1  [get_ports {C[5]}]
set_output_delay -clock clk  -max 1  [get_ports {C[4]}]
set_output_delay -clock clk  -max 1  [get_ports {C[3]}]
set_output_delay -clock clk  -max 1  [get_ports {C[2]}]
set_output_delay -clock clk  -max 1  [get_ports {C[1]}]
set_output_delay -clock clk  -max 1  [get_ports {C[0]}]
