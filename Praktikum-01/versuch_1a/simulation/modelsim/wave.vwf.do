vcom -work work wave.vwf.vht
vsim -voptargs=+acc -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.versuch_1a_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
