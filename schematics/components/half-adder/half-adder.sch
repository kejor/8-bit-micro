v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 260 -340 280 -340 {lab=A}
N 260 -300 280 -300 {lab=B}
N 350 -250 350 -230 {lab=VSS}
N 450 -210 450 -180 {lab=VDD}
N 350 -410 350 -390 {lab=VDD}
N 440 -300 480 -300 {lab=S}
N 370 -130 390 -130 {lab=A}
N 540 -100 560 -100 {lab=#net3}
N 450 -40 450 -20 {lab=VSS}
N 370 -90 390 -90 {lab=B}
C {schematics/logic-gates/xor/xor.sym} 280 -270 0 0 {name=x1}
C {schematics/logic-gates/and/and.sym} 410 -60 0 0 {name=x2}
C {ipin.sym} 100 -220 0 0 {name=p1 lab=A}
C {ipin.sym} 100 -200 0 0 {name=p2 lab=B}
C {opin.sym} 100 -180 0 0 {name=p3 lab=S}
C {opin.sym} 100 -160 0 0 {name=p4 lab=C}
C {iopin.sym} 100 -140 0 0 {name=p5 lab=VDD}
C {iopin.sym} 100 -120 0 0 {name=p6 lab=VSS}
C {lab_wire.sym} 260 -340 0 0 {name=p7 sig_type=std_logic lab=A}
C {lab_wire.sym} 370 -130 0 0 {name=p8 sig_type=std_logic lab=A}
C {lab_wire.sym} 260 -300 0 0 {name=p9 sig_type=std_logic lab=B}
C {lab_wire.sym} 370 -90 0 0 {name=p10 sig_type=std_logic lab=B}
C {lab_wire.sym} 350 -410 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 450 -210 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 -230 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 450 -20 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 480 -300 2 0 {name=p15 sig_type=std_logic lab=S}
C {lab_wire.sym} 560 -100 2 0 {name=p16 sig_type=std_logic lab=C}
