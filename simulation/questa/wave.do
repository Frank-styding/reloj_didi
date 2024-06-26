onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /reloj_vhd_tb/borrar
add wave -noupdate /reloj_vhd_tb/clk
add wave -noupdate /reloj_vhd_tb/display_0
add wave -noupdate /reloj_vhd_tb/display_1
add wave -noupdate /reloj_vhd_tb/display_2
add wave -noupdate /reloj_vhd_tb/display_3
add wave -noupdate /reloj_vhd_tb/display_4
add wave -noupdate /reloj_vhd_tb/display_5
add wave -noupdate /reloj_vhd_tb/ini_pausa
add wave -noupdate /reloj_vhd_tb/min_value
add wave -noupdate /reloj_vhd_tb/reset_1h
add wave -noupdate /reloj_vhd_tb/sel
add wave -noupdate /reloj_vhd_tb/i1/reset_n
add wave -noupdate /reloj_vhd_tb/time_gt40
add wave -noupdate /reloj_vhd_tb/i1/time_gt40
add wave -noupdate -divider internal
add wave -noupdate /reloj_vhd_tb/i1/clk_en
add wave -noupdate -radix unsigned /reloj_vhd_tb/i1/seg
add wave -noupdate -radix unsigned /reloj_vhd_tb/i1/min
add wave -noupdate -radix unsigned /reloj_vhd_tb/i1/hor
add wave -noupdate /reloj_vhd_tb/i1/start_hor
add wave -noupdate /reloj_vhd_tb/i1/start_min
add wave -noupdate /reloj_vhd_tb/i1/start_seg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {153442 ps} 0}
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
WaveRestoreZoom {7900500 ps} {8110500 ps}
