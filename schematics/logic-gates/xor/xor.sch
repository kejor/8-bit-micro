v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -250 110 -220 {lab=VSS}
N 310 -250 310 -220 {lab=VSS}
N 110 -430 110 -400 {lab=VDD}
N 310 -430 310 -400 {lab=VDD}
N 310 -370 360 -370 {lab=VDD}
N 110 -370 160 -370 {lab=VDD}
N 310 -280 370 -280 {lab=VSS}
N 110 -280 170 -280 {lab=VSS}
N 50 -280 70 -280 {lab=A}
N 50 -370 70 -370 {lab=A}
N 550 -380 550 -350 {lab=#net1}
N 550 -290 550 -230 {lab=C}
N 730 -290 730 -230 {lab=C}
N 550 -260 730 -260 {lab=C}
N 730 -260 870 -260 {lab=C}
N 550 -170 550 -140 {lab=#net2}
N 730 -170 730 -140 {lab=#net3}
N 730 -80 730 -50 {lab=VSS}
N 550 -80 550 -50 {lab=VSS}
N 550 -110 600 -110 {lab=VSS}
N 730 -110 790 -110 {lab=VSS}
N 670 -110 690 -110 {lab=N_B}
N 670 -200 690 -200 {lab=N_A}
N 550 -200 600 -200 {lab=VSS}
N 490 -200 510 -200 {lab=A}
N 490 -110 510 -110 {lab=B}
N 490 -320 510 -320 {lab=B}
N 250 -370 270 -370 {lab=B}
N 250 -280 270 -280 {lab=B}
N 490 -410 510 -410 {lab=N_A}
N 670 -320 690 -320 {lab=N_B}
N 670 -410 690 -410 {lab=A}
N 730 -480 730 -440 {lab=VDD}
N 550 -480 550 -440 {lab=VDD}
N 730 -410 770 -410 {lab=VDD}
N 730 -320 780 -320 {lab=VDD}
N 730 -200 790 -200 {lab=VSS}
N 550 -410 610 -410 {lab=VDD}
N 550 -320 600 -320 {lab=VDD}
N 50 -370 50 -280 {lab=A}
N 40 -320 50 -320 {lab=A}
N 30 -320 40 -320 {lab=A}
N 110 -340 110 -310 {lab=N_A}
N 110 -320 140 -320 {lab=N_A}
N 310 -340 310 -310 {lab=N_B}
N 310 -320 340 -320 {lab=N_B}
N 250 -370 250 -280 {lab=B}
N 230 -320 250 -320 {lab=B}
N 970 -190 970 -160 {lab=VSS}
N 970 -370 970 -340 {lab=VDD}
N 970 -310 1020 -310 {lab=VDD}
N 970 -220 1030 -220 {lab=VSS}
N 910 -310 930 -310 {lab=C}
N 910 -220 930 -220 {lab=C}
N 970 -280 970 -250 {lab=N_C}
N 970 -260 1000 -260 {lab=N_C}
N 910 -310 910 -220 {lab=C}
N 870 -260 910 -260 {lab=C}
N 730 -380 730 -350 {lab=#net4}
C {symbols/nfet_03v3.sym} 90 -280 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 90 -370 0 0 {name=M2
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} 90 -170 0 0 {name=p17 lab=A}
C {ipin.sym} 90 -140 0 0 {name=p19 lab=B}
C {opin.sym} 70 -80 0 0 {name=p18 lab=C}
C {opin.sym} 70 -110 0 0 {name=p20 lab=N_C}
C {iopin.sym} 70 -50 0 0 {name=p21 lab=VDD}
C {iopin.sym} 70 -20 0 0 {name=p22 lab=VSS}
C {symbols/pfet_03v3.sym} 290 -370 0 0 {name=M3
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 290 -280 0 0 {name=M4
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 530 -110 0 0 {name=M5
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 710 -110 0 0 {name=M6
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 530 -200 0 0 {name=M7
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 710 -200 0 0 {name=M8
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 530 -320 0 0 {name=M9
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 710 -320 0 0 {name=M10
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 530 -410 0 0 {name=M11
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 710 -410 0 0 {name=M12
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 30 -320 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_wire.sym} 230 -320 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_wire.sym} 140 -320 2 0 {name=p4 sig_type=std_logic lab=N_A}
C {lab_wire.sym} 340 -320 2 0 {name=p5 sig_type=std_logic lab=N_B}
C {lab_wire.sym} 110 -430 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 310 -430 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 160 -370 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 360 -370 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 550 -480 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 730 -480 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 610 -410 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 770 -410 2 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 600 -320 2 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 780 -320 2 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 110 -220 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 310 -220 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 370 -280 2 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 170 -280 2 0 {name=p25 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 550 -50 2 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 600 -110 2 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 600 -200 2 0 {name=p28 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 790 -200 2 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 790 -110 2 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 730 -50 2 0 {name=p31 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 490 -200 0 0 {name=p32 sig_type=std_logic lab=A}
C {lab_wire.sym} 490 -110 0 0 {name=p33 sig_type=std_logic lab=B}
C {lab_wire.sym} 670 -200 0 0 {name=p34 sig_type=std_logic lab=N_A}
C {lab_wire.sym} 670 -110 0 0 {name=p35 sig_type=std_logic lab=N_B}
C {lab_wire.sym} 490 -410 0 0 {name=p36 sig_type=std_logic lab=N_A}
C {lab_wire.sym} 670 -410 0 0 {name=p37 sig_type=std_logic lab=A}
C {lab_wire.sym} 490 -320 0 0 {name=p38 sig_type=std_logic lab=B}
C {lab_wire.sym} 670 -320 0 0 {name=p39 sig_type=std_logic lab=N_B}
C {lab_wire.sym} 870 -260 2 0 {name=p40 sig_type=std_logic lab=C}
C {symbols/pfet_03v3.sym} 950 -310 0 0 {name=M13
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 950 -220 0 0 {name=M14
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 1000 -260 2 0 {name=p42 sig_type=std_logic lab=N_C}
C {lab_wire.sym} 970 -370 0 0 {name=p43 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1020 -310 2 0 {name=p44 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 970 -160 2 0 {name=p45 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1030 -220 2 0 {name=p46 sig_type=std_logic lab=VSS}
