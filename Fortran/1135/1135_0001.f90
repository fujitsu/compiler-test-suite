subroutine s1
integer(8),parameter::k1=5_8
integer(8),parameter::k2=6_8
integer(8),parameter::k3=7_8
write(2,*)bessel_jn( k1,    1.0_8)
write(2,*) bessel_jn( k2,    1.0_8)
write(2,*) bessel_jn( k3,    1.0_8)
write(2,*) bessel_jn( k1 ,k2,1.0_8)
write(2,*) bessel_yn( k1,    1.0_8)
write(2,*) bessel_yn( k2,    1.0_8)
write(2,*) bessel_yn( k3,    1.0_8)
write(2,*) bessel_yn( k1 ,k2,1.0_8)

end
print *,'pass'
end
