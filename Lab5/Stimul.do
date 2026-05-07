force D0 4'b0001
force D1 4'b0010
force D2 4'b0100
force D3 4'b1000
force D4 4'b1111

force A1 2#0 0ns

force A2 2#0 0ns, 2#1 400ns

force A3 2#0 0ns, 2#1 200ns, 2#0 400ns

force A4 2#0 0ns, 2#1 100ns, 2#0 200ns, 2#1 300ns, 2#0 400ns

run 500ns