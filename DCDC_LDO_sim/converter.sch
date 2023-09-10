v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 420 -120 420 -50 {
lab=fc1_read}
N 260 -280 300 -280 {
lab=s1}
N 260 -250 300 -250 {
lab=s2}
N 260 -220 300 -220 {
lab=s3}
N 260 -190 300 -190 {
lab=s4}
N 600 -270 650 -270 {
lab=VP}
N 600 -230 650 -230 {
lab=out}
N 600 -190 650 -190 {
lab=VN}
N 420 0 420 70 {
lab=fc1_read}
N 420 -50 420 -0 {
lab=fc1_read}
N 420 70 420 220 {
lab=fc1_read}
N 420 220 420 310 {
lab=fc1_read}
N 480 220 480 310 {
lab=fc2_read}
N 480 60 480 220 {
lab=fc2_read}
N 480 -120 480 60 {
lab=fc2_read}
C {devices/ipin.sym} 260 -280 0 0 {name=p1 lab=s1}
C {devices/ipin.sym} 260 -250 0 0 {name=p2 lab=s2}
C {devices/ipin.sym} 260 -220 0 0 {name=p3 lab=s3}
C {devices/ipin.sym} 260 -190 0 0 {name=p4 lab=s4}
C {devices/iopin.sym} 650 -270 0 0 {name=p5 lab=VP}
C {devices/iopin.sym} 650 -190 0 0 {name=p6 lab=VN}
C {devices/iopin.sym} 650 -230 0 0 {name=p14 lab=out}
C {sky130_fd_pr/cap_mim_m3_1.sym} 450 60 3 0 {name=C1 model=cap_mim_m3_1 W=30 L=30 MF=1978 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 450 220 3 0 {name=C2 model=cap_mim_m3_2 W=30 L=30 MF=1978 spiceprefix=X}
C {devices/iopin.sym} 480 310 1 0 {name=p7 lab=fc2_read}
C {devices/iopin.sym} 420 310 1 0 {name=p8 lab=fc1_read}
C {/foss/designs/PMIC_lab-on-chip_power-management/DCDC_LDO_sim/power_stage.sym} 200 -20 0 0 {name=X1}
