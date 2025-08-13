subroutine s1
write(17,*)bessel_jn( 0_8,    1.0_16)
write(17,*)bessel_jn( 1_8,    0.0_16)
write(17,*)bessel_jn( 0_8 ,0_8 ,1.0_16)
write(17,*)bessel_jn( 1_8 ,0_8 ,1.0_16)
write(17,*)bessel_jn( 0_8 ,1_8 ,1.0_16)
write(17,*)bessel_jn( 1_8 ,1_8 ,0.0_16)
write(17,*)bessel_jn( 1_8,    -0.0_16)
write(17,*)bessel_jn( 1_8 ,1_8 ,-0.0_16)

write(17,*)bessel_yn( 0_8,    1.0_16)
write(17,*)bessel_yn( 0_8 ,0_8 ,1.0_16)
write(17,*)bessel_yn( 1_8 ,0_8 ,1.0_16)
write(17,*)bessel_yn( 0_8 ,1_8 ,1.0_16)
end
call s1
call chk
print *,'pass'
end
subroutine chk
rewind 17
read(17,*) a
if (abs(a-0.765197694)>0.001) print *,101
read(17,*) a
if (abs(a-0.0        )>0.001) print *,102
read(17,*) a
if (abs(a-0.765197694)>0.001) print *,103
read(17,*) a,b
if (abs(a-0.765197694)>0.001) print *,1041
if (abs(b-.440050572)>0.001) print *,1042
read(17,*) a
if (abs(a-0.         )>0.001) print *,105
read(17,*) a
if (abs(a-0.         )>0.001) print *,106
read(17,*) a
if (abs(a-0.         )>0.001) print *,107
read(17,*) a
if (abs(a-8.82569700E-02)>0.001) print *,108
read(17,*) a
if (abs(a-8.82569700E-02)>0.001) print *,109
read(17,*) a,b
if (abs(a-8.82569700E-02)>0.001) print *,1101
if (abs(b+0.781212807)>0.001) print *,1102
read(17,*,end=9) a
print *,120
9 return
end
