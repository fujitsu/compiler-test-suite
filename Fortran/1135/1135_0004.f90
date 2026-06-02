subroutine s1
integer(8),parameter::k1=5_8
real(8),parameter::a01   =bessel_jn( k1,    1.0_8)
integer(8)::n1
n1=k1

write(7,*) a01
write(7,*) bessel_jn( n1,    1.0_8)
end
call s1
print *,'pass'
end
