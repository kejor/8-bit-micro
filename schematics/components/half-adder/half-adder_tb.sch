v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 470 -320 470 -300 {lab=VDD}
N 490 -320 490 -300 {lab=0}
N 370 -250 410 -250 {lab=A}
N 370 -230 410 -230 {lab=B}
N 550 -250 580 -250 {lab=S}
N 550 -230 580 -230 {lab=C}
C {vsource.sym} 60 -170 0 0 {name=VIN_A value="0 PULSE('PAR_VDD' 0 PAR_DEL PAR_SLEW PAR_SLEW '0.5*PAR_PER' '1.0*PAR_PER')" savecurrent=false}
C {gnd.sym} 180 -40 0 0 {name=l2 lab=0}
C {lab_pin.sym} 580 -250 2 0 {name=p1 sig_type=std_logic lab=S}
C {lab_pin.sym} 580 -230 2 0 {name=p2 sig_type=std_logic lab=C}
C {code_shown.sym} 60 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {code_shown.sym} 660 -530 0 0 {name=NGSPICE only_toplevel=true
value="
** PARAMETERS
.PARAM PAR_VDD=3.3
.PARAM PAR_CLOAD=100f
.PARAM PAR_SLEW=100p
.PARAM PAR_PER=10n
.PARAM PAR_DEL='0.1*PAR_PER'

.control
save all
OP
TRAN 1p 40n
write TB_half-adder.raw
plot v(A) v(B) v(S) v(C)
.endc

"}
C {vsource.sym} 60 -250 0 0 {name=VDD value=PAR_VDD savecurrent=false}
C {schematics/components/half-adder/half-adder.sym} 430 -180 0 0 {name=x1}
C {vsource.sym} 60 -90 0 0 {name=VIN_B value="0 PULSE('PAR_VDD' 0 PAR_DEL PAR_SLEW PAR_SLEW '1.0*PAR_PER' '2.0*PAR_PER')" savecurrent=false}
C {lab_pin.sym} 470 -320 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 490 -320 2 0 {name=p4 sig_type=std_logic lab=0}
C {lab_pin.sym} 60 -60 2 0 {name=p6 sig_type=std_logic lab=0}
C {lab_pin.sym} 60 -140 2 0 {name=p7 sig_type=std_logic lab=0}
C {lab_pin.sym} 60 -220 2 0 {name=p8 sig_type=std_logic lab=0}
C {lab_pin.sym} 60 -280 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 60 -200 2 0 {name=p10 sig_type=std_logic lab=A}
C {lab_pin.sym} 370 -250 0 0 {name=p11 sig_type=std_logic lab=A}
C {lab_pin.sym} 370 -230 0 0 {name=p12 sig_type=std_logic lab=B}
C {lab_pin.sym} 60 -120 2 0 {name=p13 sig_type=std_logic lab=B}
