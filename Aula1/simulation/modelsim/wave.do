view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 400ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/alarme_carro/F 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 200ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/alarme_carro/P 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/alarme_carro/C 
WaveCollapseAll -1
wave clipboard restore
