v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -180 170 -180 {lab=vin}
N 220 -260 220 -220 {lab=#net1}
N 220 -140 220 -90 {lab=0}
N 310 -180 360 -180 {lab=vout}
N 120 -120 120 -90 {lab=0}
N 120 -90 220 -90 {lab=0}
N 60 -220 60 -90 {lab=0}
N 60 -90 120 -90 {lab=0}
N 60 -280 220 -280 {lab=#net1}
N 220 -280 220 -260 {lab=#net1}
C {vsource.sym} 120 -150 0 0 {name=VIN value="0 PULSE('PAR_VDD' 0 PAR_DEL PAR_SLEW PAR_SLEW '0.5*PAR_PER' '1.0*PAR_PER')" savecurrent=false}
C {gnd.sym} 220 -90 0 0 {name=l2 lab=0}
C {lab_pin.sym} 360 -180 2 0 {name=p1 sig_type=std_logic lab=vout}
C {code_shown.sym} 60 -420 0 0 {name=MODELS only_toplevel=true  
format="tcleval( @value )" 
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {code_shown.sym} 550 -550 0 0 {name=NGSPICE only_toplevel=true  
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
C {vsource.sym} 60 -250 0 0 {name=VDD value=PAR_VDD savecurrent=false}
C {lab_pin.sym} 150 -180 1 0 {name=p2 sig_type=std_logic lab=vin}
C {schematics/inv.sym} 190 -140 0 0 {name=x1}
