subroutine s1
write(9,*)bessel_jn( 0 ,0 ,1.0 )
write(9,*)bessel_jn( 1 ,0 ,1.0 )

write(9,*)bessel_yn( 0 ,0 ,1.0 )
write(9,*)bessel_yn( 1 ,0 ,1.0 )
end
call s1
print *,'pass'
end
