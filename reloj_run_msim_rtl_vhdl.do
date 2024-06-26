transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../bintobcd.vhd}
vcom -93 -work work {../../my_components.vhd}
vcom -93 -work work {../../hexa.vhd}
vcom -93 -work work {../../divisor_freq.vhd}
vcom -93 -work work {../../counter.vhd}
vcom -93 -work work {../../comparator_gt.vhd}
vcom -93 -work work {../../comparator.vhd}
vcom -93 -work work {../../reloj.vhd}

vcom -93 -work work {reloj.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  reloj_vhd_tb

#add wave *
do wave.do
view structure
view signals
run -all
