v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 280 -280 280 -250 {lab=OUT}
N 210 -220 240 -220 {lab=IN}
N 210 -310 240 -310 {lab=IN}
N 210 -310 210 -220 {lab=IN}
N 280 -220 280 -190 {lab=xxx}
N 280 -340 280 -310 {lab=VDD}
N 180 -270 210 -270 {lab=IN}
N 280 -270 460 -270 {lab=OUT}
N 280 -190 280 -140 {lab=xxx}
N 280 -390 280 -340 {lab=VDD}
C {symbols/nfet_03v3.sym} 260 -220 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 260 -310 0 0 {name=M2
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
C {ipin.sym} 180 -270 0 0 {name=p1 lab=IN}
C {opin.sym} 460 -270 0 0 {name=p2 lab=OUT}
C {iopin.sym} 280 -390 0 0 {name=p3 lab=VDD}
C {iopin.sym} 280 -140 0 0 {name=p4 lab=VSS}
