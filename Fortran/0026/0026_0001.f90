subroutine s1
write(1,*)bessel_jn( 0,    1.0_8)
write(1,*)bessel_jn( 1,    0.0_8)
write(1,*)bessel_jn( 0 ,0 ,1.0_8)
write(1,*)bessel_jn( 1 ,0 ,1.0_8)
write(1,*)bessel_jn( 0 ,1 ,1.0_8)
write(1,*)bessel_jn( 1 ,1 ,0.0_8)
write(1,*)bessel_jn( 1,    -0.0_8)
write(1,*)bessel_jn( 1 ,1 ,-0.0_8)

write(1,*)bessel_yn( 0,    1.0_8)
!write(1,*)bessel_yn( 1,    0.0_8)
write(1,*)bessel_yn( 0 ,0 ,1.0_8)
write(1,*)bessel_yn( 1 ,0 ,1.0_8)
write(1,*)bessel_yn( 0 ,1 ,1.0_8)
!write(1,*)bessel_yn( 1 ,1 ,0.0_8)
!write(1,*)bessel_yn( 1,    -0.0_8)
!write(1,*)bessel_yn( 1 ,1 ,-0.0_8)
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
