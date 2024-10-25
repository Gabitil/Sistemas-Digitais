view wave 
wave clipboard store
wave create -driver freeze -pattern random -initialvalue zzzz -period 50ps -random_type Uniform -seed 5 -range 3 0 -starttime 0ps -endtime 1000ps sim:/soma4bit/A 
WaveExpandAll -1
wave create -driver freeze -pattern random -initialvalue zzzz -period 100ps -random_type Uniform -seed 5 -range 3 0 -starttime 0ps -endtime 1000ps sim:/soma4bit/B 
WaveExpandAll -1
wave modify -driver freeze -pattern random -initialvalue zzzz -period 50ps -random_type Uniform -seed 2 -range 3 0 -starttime 0ps -endtime 1000ps Edit:/soma4bit/B 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/soma4bit/TE 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/soma4bit/TE 
wave modify -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 1000ps Edit:/soma4bit/A 
wave modify -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction Up -period 100ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 1000ps Edit:/soma4bit/B 
WaveCollapseAll -1
wave clipboard restore
