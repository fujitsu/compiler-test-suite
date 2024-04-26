module m0

type :: ty0
integer :: ii
contains
FINAL::destructor
end type 

contains
subroutine destructor(dmy)
IMPLICIT NONE
TYPE(ty0), INTENT(INOUT):: dmy
print*,'destructor call ', dmy%ii
end subroutine
end module

use m0
call sub
print*, "PASS"

contains 
elemental integer function f1(d1)
type(ty0),INTENT(in)  :: d1
f1=d1%ii
end function

pure subroutine sub()
integer :: ii
ii=0
ii=f1(ty0(ii))
ii=ii-10
end subroutine
end
