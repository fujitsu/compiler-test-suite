subroutine s1
real,parameter::a01   =bessel_jn( 0_8,    1.0_16)
real,parameter::a02   =bessel_jn( 1_8,    0.0_16)
real,parameter::a03(*)=bessel_jn( 0_8 ,0_8 ,1.0_16)
real,parameter::a04(*)=bessel_jn( 1_8 ,0_8 ,1.0_16)
real,parameter::a05(*)=bessel_jn( 0_8 ,1_8 ,1.0_16)
real,parameter::a06(*)=bessel_jn( 1_8 ,1_8 ,0.0_16)
real,parameter::a07   =bessel_jn( 1_8,    -0.0_16)
real,parameter::a08(*)=bessel_jn( 1_8 ,1_8 ,-0.0_16)

real,parameter::a11   =bessel_yn( 0_8,    1.0_16)
real,parameter::a13(*)=bessel_yn( 0_8 ,0_8 ,1.0_16)
real,parameter::a14(*)=bessel_yn( 1_8 ,0_8 ,1.0_16)
real,parameter::a15(*)=bessel_yn( 0_8 ,1_8 ,1.0_16)
write(18,*) a01
write(18,*) a02
write(18,*) a03
write(18,*) a04
write(18,*) a05
write(18,*) a06
write(18,*) a07
write(18,*) a08

write(18,*) a11
write(18,*) a13
write(18,*) a14
write(18,*) a15
end
call s1
call chk
print *,'pass'
end
subroutine chk
rewind 18
read(18,*) a
if (abs(a-0.765197694)>0.001) print *,101
read(18,*) a
if (abs(a-0.0        )>0.001) print *,102
read(18,*) a
if (abs(a-0.765197694)>0.001) print *,103
read(18,*) a,b
if (abs(a-0.765197694)>0.001) print *,1041
if (abs(b-.440050572)>0.001) print *,1042
read(18,*) a
if (abs(a-0.         )>0.001) print *,105
read(18,*) a
if (abs(a-0.         )>0.001) print *,106
read(18,*) a
if (abs(a-0.         )>0.001) print *,107
read(18,*) a
if (abs(a-8.82569700E-02)>0.001) print *,108
read(18,*) a
if (abs(a-8.82569700E-02)>0.001) print *,109
read(18,*) a,b
if (abs(a-8.82569700E-02)>0.001) print *,1101
if (abs(b+0.781212807)>0.001) print *,1102
read(18,*,end=9) a
print *,120
9 return
end
