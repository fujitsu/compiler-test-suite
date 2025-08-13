subroutine s1
write(7,*)bessel_j0(  1.0 )
write(7,*)bessel_j1(  1.0 )
write(7,*)bessel_jn( 0, 1.0 )
write(7,*)bessel_jn( 1, 1.0 )
write(7,*)bessel_jn( 0,0,1.0 )
write(7,*)bessel_jn( 1,0,1.0 )
write(7,*)bessel_jn( 1,1,1.0 )
end
call s1
print *,'pass'
end
