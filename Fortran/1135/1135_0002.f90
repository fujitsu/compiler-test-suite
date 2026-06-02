subroutine s1
integer(8),parameter::k1=5_8
integer(8),parameter::k2=6_8
integer(8),parameter::k3=7_8
integer(8)::n1=k1
write(3,*)bessel_jn( n1,    1.0_8)
write(3,*) bessel_jn( k2,    1.0_8)
write(3,*) bessel_jn( k3,    1.0_8)
write(3,*) bessel_jn( n1 ,k2,1.0_8)
write(3,*) bessel_yn( n1,    1.0_8)
write(3,*) bessel_yn( k2,    1.0_8)
write(3,*) bessel_yn( k3,    1.0_8)
write(3,*) bessel_yn( n1 ,k2,1.0_8)

end
print *,'pass'
end
