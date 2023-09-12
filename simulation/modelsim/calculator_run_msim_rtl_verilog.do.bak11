transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/quartus/Projects/calculator {C:/altera/13.0sp1/quartus/Projects/calculator/calculator.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/quartus/Projects/calculator {C:/altera/13.0sp1/quartus/Projects/calculator/binary_to_bcd_converter.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/quartus/Projects/calculator {C:/altera/13.0sp1/quartus/Projects/calculator/seven_seg.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/quartus/Projects/calculator {C:/altera/13.0sp1/quartus/Projects/calculator/dflipflop.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/quartus/Projects/calculator {C:/altera/13.0sp1/quartus/Projects/calculator/nbitflipflop.v}

vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/quartus/Projects/calculator {C:/altera/13.0sp1/quartus/Projects/calculator/stimulus.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  stimulus

add wave *
view structure
view signals
run -all
