transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {../../fsm.vhd}
vcom -93 -work work {../../divisor_freq.vhd}
vcom -93 -work work {../../my_components_reloj.vhd}
vcom -93 -work work {../../mux4a1.vhd}
vcom -93 -work work {../../my_components.vhd}
vcom -93 -work work {../../hexa.vhd}
vcom -93 -work work {../../counter.vhd}
vcom -93 -work work {../../comparador.vhd}
vcom -93 -work work {../../bintobcd.vhd}
vcom -93 -work work {../../reg.vhd}
vcom -93 -work work {../../reloj_ajedrez.vhd}
vcom -93 -work work {../../reloj.vhd}
vcom -93 -work work {../../contador_ace.vhd}


vcom -93 -work work {reloj_ajedrez.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  reloj_ajedrez_tb

do wave.do
#add wave *
view structure
view signals
run -all
