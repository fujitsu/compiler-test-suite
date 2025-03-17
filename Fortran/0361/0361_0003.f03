module m1
contains
subroutine sub
integer :: ia(2)
parameter (i1=SIZE(ia))
if(i1 /= 2) print *,"fail"
end subroutine
end module

use m1
call sub
!
print *, 'pass'
end
