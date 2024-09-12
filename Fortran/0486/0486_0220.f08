module m1
contains
subroutine s1(x)
use iso_c_binding
real ,intent(in):: x
integer :: array(  c_sizeof( x )  )

if (size(array) /=4 ) print *,101
end subroutine
end
use m1
real:: x=-1
call s1(x)
print *,'pass'
end
