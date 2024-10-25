transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Faculfodase/SD/Aula7 {D:/Faculfodase/SD/Aula7/muxdem.v}

