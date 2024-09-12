subroutine s1(i)
use,intrinsic::iso_c_binding 
real(4)   :: b(i)
integer(4)::i, a(c_sizeof( b ))
if (1.eq.2) then
if (c_sizeof( b ) /=40_8 ) print *,101
end if
a=1
a=a
end
call s1(10)
print *,'pass'
end
