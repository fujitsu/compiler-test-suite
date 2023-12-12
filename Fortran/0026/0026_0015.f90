subroutine s1
real,parameter::a01   =bessel_jn( 0,    1.0_16)
real,parameter::a02   =bessel_jn( 1,    0.0_16)
real,parameter::a03(*)=bessel_jn( 0 ,0 ,1.0_16)
real,parameter::a04(*)=bessel_jn( 1 ,0 ,1.0_16)
real,parameter::a05(*)=bessel_jn( 0 ,1 ,1.0_16)
real,parameter::a06(*)=bessel_jn( 1 ,1 ,0.0_16)
real,parameter::a07   =bessel_jn( 1,    -0.0_16)
real,parameter::a08(*)=bessel_jn( 1 ,1 ,-0.0_16)

real,parameter::a11   =bessel_yn( 0,    1.0_16)
!!!real,parameter::a12(*)=bessel_yn( 1,    0.0_16)
real,parameter::a13(*)=bessel_yn( 0 ,0 ,1.0_16)
real,parameter::a14(*)=bessel_yn( 1 ,0 ,1.0_16)
real,parameter::a15(*)=bessel_yn( 0 ,1 ,1.0_16)
!!!real,parameter::a16(*)=bessel_yn( 1 ,1 ,0.0 )
!!!real,parameter::a17(*)=bessel_yn( 1,    -0.0 )
!!!real,parameter::a18(*)=bessel_yn( 1 ,1 ,-0.0 )
write(1,*) a01
write(1,*) a02
write(1,*) a03
write(1,*) a04
write(1,*) a05
write(1,*) a06
write(1,*) a07
write(1,*) a08

write(1,*) a11
write(1,*) a13
write(1,*) a14
write(1,*) a15
end
call s1
call chk
print *,'pass'
end
subroutine chk
rewind 1
read(1,*) a
if (abs(a-0.765197694)>0.001) print *,101
read(1,*) a
if (abs(a-0.0        )>0.001) print *,102
read(1,*) a
if (abs(a-0.765197694)>0.001) print *,103
read(1,*) a,b
if (abs(a-0.765197694)>0.001) print *,1041
if (abs(b-.440050572)>0.001) print *,1042
read(1,*) a
if (abs(a-0.         )>0.001) print *,105
read(1,*) a
if (abs(a-0.         )>0.001) print *,106
read(1,*) a
if (abs(a-0.         )>0.001) print *,107
read(1,*) a
if (abs(a-8.82569700E-02)>0.001) print *,108
read(1,*) a
if (abs(a-8.82569700E-02)>0.001) print *,109
read(1,*) a,b
if (abs(a-8.82569700E-02)>0.001) print *,1101
if (abs(b+0.781212807)>0.001) print *,1102
read(1,*,end=9) a
print *,120
9 return
end
