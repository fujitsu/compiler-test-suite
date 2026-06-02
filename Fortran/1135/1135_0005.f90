subroutine s1
integer(8),parameter::k1=5_8 
integer(8),parameter::k2=4_8 
integer(8)::n1
n1=k1
kk=2147483647

write(8,*) bessel_jn( kk,    1.0_8)
write(8,*) bessel_jn( n1,    1.0_8)
end
call s1
print *,'pass'
end
