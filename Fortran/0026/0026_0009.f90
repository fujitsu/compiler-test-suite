subroutine s1
real,parameter::a01   =bessel_jn( 0_8,    1.0 )
real,parameter::a02   =bessel_jn( 1_8,    0.0 )
real,parameter::a03(*)=bessel_jn( 0_8 ,0_8 ,1.0 )
real,parameter::a04(*)=bessel_jn( 1_8 ,0_8 ,1.0 )
real,parameter::a05(*)=bessel_jn( 0_8 ,1_8 ,1.0 )
real,parameter::a06(*)=bessel_jn( 1_8 ,1_8 ,0.0 )
real,parameter::a07   =bessel_jn( 1_8,    -0.0 )
real,parameter::a08(*)=bessel_jn( 1_8 ,1_8 ,-0.0 )

real,parameter::a11   =bessel_yn( 0_8,    1.0 )
real,parameter::a13(*)=bessel_yn( 0_8 ,0_8 ,1.0 )
real,parameter::a14(*)=bessel_yn( 1_8 ,0_8 ,1.0 )
real,parameter::a15(*)=bessel_yn( 0_8 ,1_8 ,1.0 )
write(11,*) a01
write(11,*) a02
write(11,*) a03
write(11,*) a04
write(11,*) a05
write(11,*) a06
write(11,*) a07
write(11,*) a08

write(11,*) a11
write(11,*) a13
write(11,*) a14
write(11,*) a15
end
call s1
print *,'pass'
end
