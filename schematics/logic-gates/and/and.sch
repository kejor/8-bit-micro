v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -310 130 -310 {lab=A}
N 290 -310 320 -310 {lab=B}
N 170 -280 170 -250 {lab=N_C}
N 170 -250 360 -250 {lab=N_C}
N 360 -280 360 -250 {lab=N_C}
N 270 -250 270 -230 {lab=N_C}
N 270 -170 270 -140 {lab=#net1}
N 270 -200 340 -200 {lab=VSS}
N 270 -110 340 -110 {lab=VSS}
N 270 -80 270 -50 {lab=VSS}
N 170 -370 170 -340 {lab=VDD}
N 170 -370 360 -370 {lab=VDD}
N 360 -370 360 -340 {lab=VDD}
N 200 -200 230 -200 {lab=B}
N 200 -110 230 -110 {lab=A}
N 270 -400 270 -370 {lab=VDD}
N 170 -310 210 -310 {lab=VDD}
N 360 -310 400 -310 {lab=VDD}
N 570 -250 570 -220 {lab=C}
N 570 -290 570 -250 {lab=C}
N 570 -160 570 -130 {lab=VSS}
N 570 -190 600 -190 {lab=VSS}
N 570 -320 610 -320 {lab=VDD}
N 570 -380 570 -350 {lab=VDD}
N 510 -320 530 -320 {lab=N_C}
N 510 -190 530 -190 {lab=N_C}
N 510 -320 510 -190 {lab=N_C}
N 360 -250 510 -250 {lab=N_C}
N 570 -250 660 -250 {lab=C}
N 430 -250 430 -220 {lab=N_C}
C {symbols/nfet_03v3.sym} 250 -200 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 150 -310 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 340 -310 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 250 -110 0 0 {name=M4
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
C {symbols/pfet_03v3.sym} 550 -320 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 550 -190 0 0 {name=M6
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
C {ipin.sym} 90 -170 0 0 {name=p17 lab=A}
C {ipin.sym} 90 -140 0 0 {name=p19 lab=B}
C {opin.sym} 70 -80 0 0 {name=p18 lab=C}
C {opin.sym} 70 -110 0 0 {name=p20 lab=N_C}
C {iopin.sym} 70 -50 0 0 {name=p21 lab=VDD}
C {iopin.sym} 70 -20 0 0 {name=p22 lab=VSS}
C {lab_pin.sym} 270 -400 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 570 -380 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 210 -310 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 400 -310 2 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 610 -320 2 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -310 0 0 {name=p6 sig_type=std_logic lab=A}
C {lab_pin.sym} 200 -200 0 0 {name=p7 sig_type=std_logic lab=B}
C {lab_pin.sym} 290 -310 0 0 {name=p8 sig_type=std_logic lab=B}
C {lab_pin.sym} 200 -110 0 0 {name=p9 sig_type=std_logic lab=A}
C {lab_pin.sym} 270 -50 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 570 -130 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -200 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -110 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 -190 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 660 -250 2 0 {name=p16 sig_type=std_logic lab=C}
C {lab_pin.sym} 430 -220 2 0 {name=p23 sig_type=std_logic lab=N_C}
