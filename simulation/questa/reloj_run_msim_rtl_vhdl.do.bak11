transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Frank/Desktop/reloj_prueva/bintobcd.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/reloj_prueva/my_components.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/reloj_prueva/hexa.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/reloj_prueva/divisor_freq.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/reloj_prueva/counter.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/reloj_prueva/comparator_gt.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/reloj_prueva/comparator.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/reloj_prueva/reloj.vhd}

vcom -93 -work work {C:/Users/Frank/Desktop/reloj_prueva/simulation/questa/reloj.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  reloj_vhd_tb

do C:/Users/Frank/Desktop/reloj_prueva/start.do
