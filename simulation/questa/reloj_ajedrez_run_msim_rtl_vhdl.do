transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/comparator.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/fsm.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/divisor_freq.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/my_components_reloj.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/mux4a1.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/my_components.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/hexa.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/counter.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/bintobcd.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/reg.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/comparator_gt.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/reloj_ajedrez.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/reloj.vhd}
vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/contador_ace.vhd}

vcom -93 -work work {C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/simulation/questa/reloj_ajedrez.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  reloj_ajedrez_tb

do C:/Users/Frank/Desktop/25JUNIO/25JUNIO/lab9/ep1/start.do
