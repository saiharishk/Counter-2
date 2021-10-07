vlib work

vlog ha.v
vlog fa.v
vlog add5.v
vlog comp1.v
vlog comp2.v
vlog comp4.v
vlog comp8.v
vlog mux.v
vlog mux3bit.v
vlog mux5.v


vlog counter.v +define+DF +acc
vlog counter_tb.v +acc

vsim work.tb
add wave -r *
run -all
