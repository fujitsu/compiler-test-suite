module m1
contains
subroutine sub
integer :: i1(1)
integer :: ia(2)
parameter (i1=SHAPE(ia))
if(i1(1) /= 2) print *,"fail"
end subroutine
end module

use m1
call sub
!
print *, 'pass'
end
