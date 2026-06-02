subroutine s1
integer(8),parameter::k2=2_8
integer(8)::n1
n1=k2

write(9,*) bessel_jn( n1,    1.0_8)
end
call s1
print *,'pass'
end
