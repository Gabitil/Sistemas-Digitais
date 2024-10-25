onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /muxdem/I0
add wave -noupdate -color {Medium Blue} -radix binary /muxdem/I1
add wave -noupdate -color Wheat -radix binary /muxdem/sel
add wave -noupdate -color White -radix binary /muxdem/S
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {600 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {1 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1600ps sim:/muxdem/I0 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 200ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/muxdem/I1 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/muxdem/sel 
wave modify -driver freeze -pattern clock -initialvalue HiZ -period 400ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/muxdem/sel 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 200ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/muxdem/I1 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 400ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/muxdem/sel 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/muxdem/I0 
{wave export -file onda -starttime 0 -endtime 1200 -format force -designunit muxdem} 
WaveCollapseAll -1
wave clipboard restore
