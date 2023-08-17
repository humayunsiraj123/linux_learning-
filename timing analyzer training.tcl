//creat clock cosntraint
create_clock -name clk -period 1.000 [get_ports {clk}]
create_clock -name clk -period 1.000 - waveform {10.0 20.0} \ [get_ports {clk}]
set_multicycle_path -from [get_clocks clk] -to [get_clocks clk] 2
// to generate fmax summary 
report_clock_fmax_summary -panel {Fmax Summary}
// setup summary
create_timing_summary -setup -panel_name {Setup Summary}
// create_clock_summary
set_global_assignment -name SDC_FILE mysdcfile.sdc
tcl command page
************************************https://www.intel.com/content/www/us/en/programmable/quartushelp/current/index.htm#tafs/tafs/tcl_pkg_sdc_ver_1.5.htm*****************

///
create_clock -name clk1 -period 10.0Ns [get_ports {clk1}]
create_clock -name clk2 -period 5.0Ns [get_ports {clk2}]
create_generated_clock -name div_clock -source [get_ports {clk1}] -divided_by 2 [get_register inst] #here inst a regiters through which the generated clock is out
create_generated_clock -name div_clock -source [get_ports inst|clk1 ] -divided_by 2 [get_register inst|q] #here inst a regiters through which the generated clock is out clock contrains is changes

create_clock -name clk200 -period 200MHZ [get_ports clk]
create_generated_clock -name clk100 -source [get_ports clk200] -divided_by 2 [get_registers divclk]
create_generated_clock -name clk100n -source [get_ports clk200] -divided_by 2 invert [get_registers div_clkn|q] # means from div_n register output q provides the geenrated clock

#IO_PLL_IP
create_clock -name {pll_inst|iopll_0_ref_clk} -period 10 [get_ports {clk}]
#generated clock from pll clk
create_generate_clock -name {pll_inst|iopll_0_m_cnt_clk} -source [get_ports {clk}] -duty_cycle 50/1 -divided_by 16 -master_clock {inst7|iopll_0_refclk}
[get_register {pll_inst|ioll_0|startix10_altera_io_pll_i|s10_iopll}]

#set clokc uncertinatiy
set_clock_uncertainity -from {clk_in_vir} -to {clk_x1} -setup 0.2


#jitter variablity in the edge of the clock while skew is delayed in clock arrival boht are uncertaintiy of the clock 
set clock_jitter-ptp 0.7
set_clock_incertainity [exec $clock_jitter-ptp/2] -to [get_clocks clk_in] -add
#it increase the setup and hold uncertainity valuse when clk_in is capture increase both setup and hold time
set_clock_uncertainty -setup 0.2 -to [get_clock clk_in] -add  

#set_clokc_group use while clock domain cross

here i have  set clock domain group where all the timings path -from -to of clock in the group are analyzed according the clocks inside the group 
set_clock_group -logically_exculsive -physcally_exclusive -group clk_100 -group clk_200  -group clk

external clock mux example
create_clock -name clk_100 -period 10.00Ns [get_ports {clk}]
create_clock -name clk_66 -period 15 [get_ports clk] -add

set_clock_group -physically_exculsive -group [get_clock clk_100] -group [get_clock clock_66]
# io contraints 
create_clock -name base_clk -period 10Ns [get_ports {clk}]
create_clock -name virt_clk_in -period 10Ns 
create_clock -name virt_clk_out -period 10Ns  

#set_input_delay
input_delay(max) using external timing param
board_delay(max)-board_clk_skew(min)+tco(max)
board_delay(max)=tdata_pcb(max)
board_clk_skew=tclkfpga-tclk2vit
using fpga req
t-tsu
t=tlatch-tlunch
input_delay(min) using external timing param
board_delay(min)-board_clk_skew(max)+tco(min)
board_delay(min)=tdata_pcb(min)
board_clk_skew=tclkfpga-tclk2vit
using fpga req
th 
hold time//
set_input_delay -clock {clk_in_vir } -max 4 [get_ports {din_a* }]

crete_clock  -name clk  -period 10Ns [get_ports  clk]
crete_clock  -name clk_vin -period 10Ns #virtual port form input reg
crete_clock  -name clk_vout -period 10Ns #virtual port to output  reg
#input side delay setting 
                                                tpcb    tskewmin tcomax 
setup_input_delay -clock {clk_vin} -max [ expr {1 -(-0.5) + 5 } [get_port data_in*] settup
                                               tpb  tskewmax  tco_min
setup_input_delay -clock {clk_vin} -min [ expr {1 -(0.5) + 3 }  [get_port data_in*] #hold timing

#output site delay setting                                      tsu
 setup_output_delay -clock {clk_vout } -max [ expr {1 - (-0.5) + 2  } ] -clock_fall [get_port data_out*] 
 setup_output_delay -clock {clk_vout } -max [ expr {1 - (0.5) - 0.4  } ] -clock_fall [get_port data_out*] 







 

