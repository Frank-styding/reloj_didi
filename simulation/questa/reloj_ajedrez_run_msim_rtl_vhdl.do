transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/comparator.vhd}
vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/fsm.vhd}
vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/divisor_freq.vhd}
vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/my_components_reloj.vhd}
vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/mux4a1.vhd}
vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/my_components.vhd}
vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/hexa.vhd}
vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/counter.vhd}
vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/bintobcd.vhd}
vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/reg.vhd}
vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/comparator_gt.vhd}
vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/reloj_ajedrez.vhd}
vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/reloj.vhd}
vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/contador_ace.vhd}

vcom -93 -work work {C:/Users/Frank/Documents/GitHub/reloj_didi/simulation/questa/reloj_ajedrez.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  reloj_ajedrez_tb

do C:/Users/Frank/Documents/GitHub/reloj_didi/start.do
