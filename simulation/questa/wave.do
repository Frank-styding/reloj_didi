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
add wave -noupdate /reloj_ajedrez_tb/i1/jugador_0/seg
add wave -noupdate /reloj_ajedrez_tb/i1/jugador_0/min
add wave -noupdate /reloj_ajedrez_tb/i1/jugador_0/hor
add wave -noupdate /reloj_ajedrez_tb/i1/ini_pausa_i0
add wave -noupdate /reloj_ajedrez_tb/i1/borrar_i0
add wave -noupdate /reloj_ajedrez_tb/i1/min_value_i0
add wave -noupdate -divider J1
add wave -noupdate /reloj_ajedrez_tb/i1/jugador_1/seg
add wave -noupdate /reloj_ajedrez_tb/i1/jugador_1/min
add wave -noupdate /reloj_ajedrez_tb/i1/jugador_1/hor
add wave -noupdate /reloj_ajedrez_tb/i1/ini_pausa_i1
add wave -noupdate /reloj_ajedrez_tb/i1/borrar_i1
add wave -noupdate /reloj_ajedrez_tb/i1/min_value_i1
add wave -noupdate -divider 1
add wave -noupdate /reloj_ajedrez_tb/i1/con1/reset_n
add wave -noupdate -expand /reloj_ajedrez_tb/i1/con1/q_reg_c
add wave -noupdate -expand /reloj_ajedrez_tb/i1/con1/q_reg_d
add wave -noupdate -expand /reloj_ajedrez_tb/i1/con1/q_reg_u
add wave -noupdate /reloj_ajedrez_tb/i1/mov_c_j1
add wave -noupdate /reloj_ajedrez_tb/i1/mov_d_j1
add wave -noupdate /reloj_ajedrez_tb/i1/mov_u_j1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1312381 ps} 0}
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
WaveRestoreZoom {1288281 ps} {1616407 ps}
