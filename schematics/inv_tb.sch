v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 130 -200 180 -200 {lab=#net1}
N 230 -280 230 -240 {lab=#net2}
N 230 -160 230 -110 {lab=0}
N 320 -200 370 -200 {lab=vout}
N 130 -140 130 -110 {lab=0}
N 130 -110 230 -110 {lab=0}
N 70 -240 70 -110 {lab=0}
N 70 -110 130 -110 {lab=0}
N 70 -300 230 -300 {lab=#net2}
N 230 -300 230 -280 {lab=#net2}
C {8-bit-micro/inv.sym} 200 -160 0 0 {name=x1}
C {vsource.sym} 130 -170 0 0 {name=VIN value="0 PULSE('PAR_VDD' 0 PAR_DEL PAR_SLEW PAR_SLEW '0.5*PAR_PER' '1.0*PAR_PER')" savecurrent=false}
C {gnd.sym} 230 -110 0 0 {name=l2 lab=0}
C {lab_pin.sym} 370 -200 2 0 {name=p1 sig_type=std_logic lab=vout}
C {code_shown.sym} 70 -440 0 0 {name=MODELS only_toplevel=true  
format="tcleval( @value )" 
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {code_shown.sym} 560 -570 0 0 {name=NGSPICE only_toplevel=true  
value="
** PARAMETERS
.PARAM PAR_VDD=3.3
.PARAM PAR_CLOAD=100f
.PARAM PAR_SLEW=100p
.PARAM PAR_PER=10n
.PARAM PAR_DEL='0.1*PAR_PER'

** Rise/Fall 10-90%
.MEASURE TRAN tr1090 TRIG v(vout) VAL='0.1*PAR_VDD' RISE=1 TARG v(vout) VAL='0.9*PAR_VDD' RISE=1
.MEASURE TRAN tf9010 TRIG v(vout) VAL='0.9*PAR_VDD' FALL=1 TARG v(vout) VAL='0.1*PAR_VDD' FALL=1

** Delay Rise Fall
.MEASURE TRAN tdrise TRIG v(vin)  VAL='0.5*PAR_VDD' FALL=1 TARG v(vout) VAL='0.5*PAR_VDD' RISE=1
.MEASURE TRAN tdfall TRIG v(vin)  VAL='0.5*PAR_VDD' RISE=1 TARG v(vout) VAL='0.5*PAR_VDD' FALL=1

**Leakage current and average current
**.MEASURE TRAN iavg AVG vsup#branch FROM=PAR_DEL TO='PAR_DEL+PAR_PER'
**.MEASURE TRAN ileak AVG vsup#branch FROM='PAR_DEL+0.4*PAR_PER' TO='PAR_DEL+0.45*PAR_PER'

.control
save all
OP
TRAN 1p 21n
write TB_inv1.raw
plot v(vin) v(vout)
.endc

"}
C {vsource.sym} 70 -270 0 0 {name=VDD value=PAR_VDD savecurrent=false}
C {lab_pin.sym} 160 -200 1 0 {name=p2 sig_type=std_logic lab=vin}
