onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /reloj_ajedrez_tb/clk
add wave -noupdate /reloj_ajedrez_tb/config
add wave -noupdate /reloj_ajedrez_tb/display_0
add wave -noupdate /reloj_ajedrez_tb/display_1
add wave -noupdate /reloj_ajedrez_tb/display_2
add wave -noupdate /reloj_ajedrez_tb/display_3
add wave -noupdate /reloj_ajedrez_tb/display_4
add wave -noupdate /reloj_ajedrez_tb/display_5
add wave -noupdate /reloj_ajedrez_tb/ini_pausa
add wave -noupdate /reloj_ajedrez_tb/jugador_act
add wave -noupdate /reloj_ajedrez_tb/modo
add wave -noupdate /reloj_ajedrez_tb/reset_n
add wave -noupdate /reloj_ajedrez_tb/ver_disp
add wave -noupdate -divider J0
add wave -noupdate -radix unsigned /reloj_ajedrez_tb/i1/jugador_0/seg
add wave -noupdate -radix unsigned /reloj_ajedrez_tb/i1/jugador_0/min
add wave -noupdate -radix unsigned /reloj_ajedrez_tb/i1/jugador_0/hor
add wave -noupdate -divider J1
add wave -noupdate -radix unsigned /reloj_ajedrez_tb/i1/jugador_1/seg
add wave -noupdate -radix unsigned /reloj_ajedrez_tb/i1/jugador_1/min
add wave -noupdate -radix unsigned /reloj_ajedrez_tb/i1/jugador_1/hor
add wave -noupdate -divider 1
add wave -noupdate /reloj_ajedrez_tb/i1/en_j1
add wave -noupdate /reloj_ajedrez_tb/i1/gt_16_j1
add wave -noupdate /reloj_ajedrez_tb/i1/gt_16_j0
add wave -noupdate /reloj_ajedrez_tb/i1/en_j0
add wave -noupdate /reloj_ajedrez_tb/i1/time_gt1h_j1
add wave -noupdate /reloj_ajedrez_tb/i1/reset_1h_j1
add wave -noupdate /reloj_ajedrez_tb/i1/time_gt1h_j0
add wave -noupdate /reloj_ajedrez_tb/i1/reset_1h_j0
add wave -noupdate /reloj_ajedrez_tb/i1/mov_j0_gt40
add wave -noupdate /reloj_ajedrez_tb/i1/mov_j1_gt40
add wave -noupdate -radix unsigned /reloj_ajedrez_tb/i1/con_j0/f
add wave -noupdate -radix unsigned -childformat {{/reloj_ajedrez_tb/i1/con_j1/f(7) -radix unsigned} {/reloj_ajedrez_tb/i1/con_j1/f(6) -radix unsigned} {/reloj_ajedrez_tb/i1/con_j1/f(5) -radix unsigned} {/reloj_ajedrez_tb/i1/con_j1/f(4) -radix unsigned} {/reloj_ajedrez_tb/i1/con_j1/f(3) -radix unsigned} {/reloj_ajedrez_tb/i1/con_j1/f(2) -radix unsigned} {/reloj_ajedrez_tb/i1/con_j1/f(1) -radix unsigned} {/reloj_ajedrez_tb/i1/con_j1/f(0) -radix unsigned}} -subitemconfig {/reloj_ajedrez_tb/i1/con_j1/f(7) {-height 15 -radix unsigned} /reloj_ajedrez_tb/i1/con_j1/f(6) {-height 15 -radix unsigned} /reloj_ajedrez_tb/i1/con_j1/f(5) {-height 15 -radix unsigned} /reloj_ajedrez_tb/i1/con_j1/f(4) {-height 15 -radix unsigned} /reloj_ajedrez_tb/i1/con_j1/f(3) {-height 15 -radix unsigned} /reloj_ajedrez_tb/i1/con_j1/f(2) {-height 15 -radix unsigned} /reloj_ajedrez_tb/i1/con_j1/f(1) {-height 15 -radix unsigned} /reloj_ajedrez_tb/i1/con_j1/f(0) {-height 15 -radix unsigned}} /reloj_ajedrez_tb/i1/con_j1/f
add wave -noupdate /reloj_ajedrez_tb/i1/fsm1/state_reg
add wave -noupdate -radix binary /reloj_ajedrez_tb/i1/leds
add wave -noupdate /reloj_ajedrez_tb/i1/ligth_controller1/en
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8647428 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {133875 ns}
