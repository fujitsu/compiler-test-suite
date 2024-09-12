subroutine s1()
use,intrinsic::iso_c_binding 
integer:: b(2)
integer:: a(c_sizeof( b ))

if (c_sizeof( b ) /=8 ) print *,101
if (size( a ) /=8 ) print *,102
end
call s1()
print *,'pass'
end
