subroutine s1
integer(8),parameter::k1=5_8
integer(8),parameter::k2=6_8
integer(8),parameter::k3=7_8
integer(8)::n1=k1,n2=k2,n3=k3
write(4,*)bessel_jn( n1,    1.0_8)
write(4,*) bessel_jn( n2,    1.0_8)
write(4,*) bessel_jn( n3,    1.0_8)
write(4,*) bessel_jn( k1 ,n2,1.0_8)
write(4,*) bessel_yn( n1,    1.0_8)
write(4,*) bessel_yn( n2,    1.0_8)
write(4,*) bessel_yn( n3,    1.0_8)
write(4,*) bessel_yn( k1 ,n2,1.0_8)

end
print *,'pass'
end
