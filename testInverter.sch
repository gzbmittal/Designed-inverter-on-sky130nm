v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 60 -20 {}
N 140 -10 140 30 {lab=vout}
N 100 -40 100 60 {lab=#net1}
N 140 90 140 110 {lab=GND}
N 140 10 230 10 {lab=vout}
N -110 -0 40 -0 {lab=#net1}
N -30 -100 140 -100 {lab=#net2}
N 140 -100 140 -70 {lab=#net2}
N 40 -0 100 0 {lab=#net1}
C {vsource.sym} -110 30 0 0 {name=vin value="PULSE(0 1.8 1ns 1ns 1ns 5ns 10ns)" savecurrent=false}
C {vsource.sym} -30 -70 0 0 {name=vdd value=1.8 savecurrent=false}
C {sky130_fd_pr/nfet3_01v8.sym} 120 60 0 0 {name=M1
W=1
L=0.15
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 120 -40 0 0 {name=M2
W=1
L=0.15
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 230 10 2 0 {name=p2 sig_type=std_logic lab=vout}
C {gnd.sym} 140 110 0 0 {name=l1 lab=GND}
C {gnd.sym} -30 -40 0 0 {name=l2 lab=GND}
C {gnd.sym} -110 60 0 0 {name=l3 lab=GND}
C {code_shown.sym} 250 -90 0 0 {name=s1 only_toplevel=false value=".lib /home/gauravubuntu/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.1n 100n
.save all"}
