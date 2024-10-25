transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Facul/SD/Aula10 {D:/Facul/SD/Aula10/contador10.v}
vlog -vlog01compat -work work +incdir+D:/Facul/SD/Aula10 {D:/Facul/SD/Aula10/divisor.v}
vlog -vlog01compat -work work +incdir+D:/Facul/SD/Aula10 {D:/Facul/SD/Aula10/decodificador.v}

