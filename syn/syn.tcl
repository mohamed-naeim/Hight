# Put the directory path of your RTL
lappend search_path "/root/Desktop/hight/rtl"

# The link_library variable should contain the "*", and the "technology file" in this case; it's worst-case
set_app_var link_library "* /Back_End_Flow/UMC130_Technoloy/fsc0h_d_generic_core_ss1p08v125c.db"

# The target_library variable should contain the technology library that you want the synthesized netlist to be synthesized from
set_app_var target_library "/Back_End_Flow/UMC130_Technoloy/fsc0h_d_generic_core_ss1p08v125c.db"

# The analyze command translates your RTL to generic boolean logic, and also checks syntax errors in your RTL
analyze -library WORK -format verilog {../rtl/hight.v ../rtl/round_funct.v ../rtl/SK_gen.v ../rtl/WK.v}

# The elaborate command just complements the function of the analyze command
elaborate hight

# checks the design in the current_design variable for its physical consistency (i.e., unconnected ports, not driven pins, .. etc)
check_design

# removing any previous constraints settings made before
reset_design

#Running the constraints script
source ../conn/yourDesignName_con.tcl

# Used to resolve any cell references found in your RTL by searching the DC memory, link_library, and search_path variables 
link

# The compile command does logic optimization and technology mapping. The output should be a gate-level netlist
compile -map_effort medium

# Estimate that your input ports are toggling 75% of the time, hence we can estimate 
# the dynamic (i.e., switching) power consumption
set_switching_activity -toggle_rate 0.75 -select inputs -hier -clock [get_clocks clk]

# The following commands are used to generate reports about your synthesized design
report_area > synth_area.rpt
report_cell > synth_cells.rpt
report_qor  > synth_qor.rpt
report_resources > synth_resources.rpt
report_power > synth_power.rpt

# You can increase 10 to a larger number to get detailed reports about all violating paths
report_timing -max_paths 10 > synth_timing.rpt 
 
# Used to output a constraints file later used by the Place and Route tool (such as SoC Encounter)
write_sdc  output/hight.sdc 

 
# Used to save the whole design database into a .ddc Design Compiler project. You can restore the design state again
# by reading this .ddc file
write -f ddc -hierarchy -output output/hight.ddc   

# Used to write the gate-level netlist which you will use later to place and route it
write -hierarchy -format verilog -output output/hight.v 
