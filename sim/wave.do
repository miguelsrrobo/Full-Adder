onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /full_adder_tb/r_A
add wave -noupdate /full_adder_tb/r_B
add wave -noupdate /full_adder_tb/r_c
add wave -noupdate /full_adder_tb/r_OUT
add wave -noupdate /full_adder_tb/w_OUT
add wave -noupdate /full_adder_tb/TIME_COUNT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 39
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ns} {1100 ns}
