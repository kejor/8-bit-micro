v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 260 -240 260 -200 {lab=N_C}
N 260 -240 470 -240 {lab=N_C}
N 470 -240 470 -200 {lab=N_C}
N 360 -280 360 -240 {lab=N_C}
N 360 -390 360 -340 {lab=#net1}
N 360 -420 410 -420 {lab=VDD}
N 360 -310 410 -310 {lab=VDD}
N 290 -420 320 -420 {lab=B}
N 290 -310 320 -310 {lab=A}
N 400 -170 430 -170 {lab=B}
N 470 -170 520 -170 {lab=VSS}
N 180 -170 220 -170 {lab=A}
N 260 -140 260 -110 {lab=VSS}
N 470 -140 470 -110 {lab=VSS}
N 360 -470 360 -450 {lab=VDD}
N 260 -170 310 -170 {lab=VSS}
N 700 -260 700 -210 {lab=C}
N 700 -350 700 -320 {lab=VDD}
N 700 -150 700 -120 {lab=VSS}
N 700 -180 750 -180 {lab=VSS}
N 700 -290 750 -290 {lab=VDD}
N 620 -290 660 -290 {lab=N_C}
N 620 -180 660 -180 {lab=N_C}
N 470 -240 620 -240 {lab=N_C}
N 620 -290 620 -240 {lab=N_C}
N 620 -240 620 -180 {lab=N_C}
N 560 -270 560 -240 {lab=N_C}
N 700 -230 730 -230 {lab=C}
C {symbols/nfet_03v3.sym} 240 -170 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 340 -420 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} 450 -170 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 340 -310 0 0 {name=M4
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
C {ipin.sym} 90 -190 0 0 {name=p1 lab=A}
C {ipin.sym} 90 -160 0 0 {name=p2 lab=B}
C {opin.sym} 90 -130 0 0 {name=p3 lab=N_C}
C {opin.sym} 90 -100 0 0 {name=p4 lab=C}
C {iopin.sym} 90 -70 0 0 {name=p5 lab=VDD}
C {iopin.sym} 90 -40 0 0 {name=p6 lab=VSS}
C {lab_wire.sym} 180 -170 0 0 {name=p7 sig_type=std_logic lab=A}
C {lab_wire.sym} 290 -310 0 0 {name=p8 sig_type=std_logic lab=A}
C {lab_wire.sym} 400 -170 0 0 {name=p9 sig_type=std_logic lab=B}
C {lab_wire.sym} 290 -420 0 0 {name=p10 sig_type=std_logic lab=B}
C {lab_wire.sym} 260 -110 2 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 470 -110 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 520 -170 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 310 -170 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 410 -310 2 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 410 -420 2 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 360 -470 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 680 -180 0 0 {name=M5
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
C {symbols/pfet_03v3.sym} 680 -290 0 0 {name=M6
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
C {lab_wire.sym} 700 -350 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 750 -290 2 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 750 -180 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 700 -120 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 560 -270 0 0 {name=p22 sig_type=std_logic lab=N_C}
C {lab_wire.sym} 730 -230 2 0 {name=p23 sig_type=std_logic lab=C}
