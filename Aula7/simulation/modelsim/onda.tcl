
set labelCount 3                                             
set uniqueLabel 190452184
#################################################################################


##Editing for Signal sim:/muxdem/I1
# "Clock Pattern" : dutyCycle = 50
# Start Time = 0 ps, End Time = 1 ns, Period = 200 ps
#################################################################################


noforce sim:/muxdem/I1
force -freeze sim:/muxdem/I1 0 0 ps,1 100 ps  -repeat 200 ps -cancel @1000 ps

when -label 190452184_1 {$now = @1000 ps} {
        set whenArray(190452184_1) 190452184_1
        noforce sim:/muxdem/I1
        force -freeze sim:/muxdem/I1 1 0 ps
}


##Editing for Signal sim:/muxdem/I0
# "Clock Pattern" : dutyCycle = 50
# Start Time = 0 ps, End Time = 1 ns, Period = 100 ps
#################################################################################


noforce sim:/muxdem/I0
force -freeze sim:/muxdem/I0 0 0 ps,1 50 ps  -repeat 100 ps -cancel @1000 ps

when -label 190452184_2 {$now = @1000 ps} {
        set whenArray(190452184_2) 190452184_2
        noforce sim:/muxdem/I0
        force -freeze sim:/muxdem/I0 1 0 ps
}


##Editing for Signal sim:/muxdem/sel
# "Clock Pattern" : dutyCycle = 50
# Start Time = 0 ps, End Time = 1 ns, Period = 400 ps
#################################################################################


noforce sim:/muxdem/sel
force -freeze sim:/muxdem/sel 0 0 ps,1 200 ps  -repeat 400 ps -cancel @1000 ps

when -label 190452184_3 {$now = @1000 ps} {
        set whenArray(190452184_3) 190452184_3
        noforce sim:/muxdem/sel
        force -freeze sim:/muxdem/sel 0 0 ps
}
