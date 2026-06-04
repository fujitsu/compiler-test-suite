subroutine s1
integer(8),parameter::k1=4_8
integer(8),parameter::k2=4_8
integer(8),parameter::k3=4_8
real(8),parameter::a01   =bessel_jn( k1,    1.0_8)
real(8),parameter::a02   =bessel_jn( k2,    1.0_8)
real(8),parameter::a03   =bessel_jn( k3,    1.0_8)
real(8),parameter::a04(*)=bessel_jn( k1 ,k2,1.0_8)
real(8),parameter::b01   =bessel_yn( k1,    1.0_8)
real(8),parameter::b02   =bessel_yn( k2,    1.0_8)
real(8),parameter::b03   =bessel_yn( k3,    1.0_8)
real(8),parameter::b04(*)=bessel_yn( k1 ,k2,1.0_8)

write(1,*) a01
write(1,*) a02
write(1,*) a03
write(1,*) a04
write(1,*) b01
write(1,*) b02
write(1,*) b03
write(1,*) b04
end
call s1
print *,'pass'
end
