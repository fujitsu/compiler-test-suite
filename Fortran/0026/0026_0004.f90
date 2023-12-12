subroutine s1
a1=1.1
a0=0
k1=1
m1=-1
k0=0
write(1,*)bessel_jn( k0 ,k0 ,a1 )
write(1,*)bessel_jn( k1 ,k0 ,a1 )
write(1,*)bessel_jn( k0 ,k1 ,a1 )
write(1,*)bessel_jn( k0,    a1 )
write(1,*)bessel_jn( k1,    a0 )
write(1,*)bessel_jn( k1,k1 ,a0 )

write(1,*)bessel_yn( k0 ,k0 ,a1 )
write(1,*)bessel_yn( k1 ,k0 ,a1 )
write(1,*)bessel_yn( k0 ,k1 ,a1 )
write(1,*)bessel_yn( k0,    a1 )
write(1,*)bessel_yn( k1,    a0 )
write(1,*)bessel_yn( k1,k1 ,a0 )
end
!!!call s1
print *,'pass'
end
