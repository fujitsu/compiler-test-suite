module m0
type :: ty0
integer ::ii
contains
FINAL::destructor
end type

type :: ty1
type(ty0):: obj0
type(ty0):: obj1
end type

contains
subroutine destructor(dmy)
IMPLICIT NONE
TYPE(ty0), INTENT(INOUT):: dmy
print*,'destructor call ', dmy%ii
end subroutine

end module

program main
use m0
call s1
print*, "PASS"

contains
pure subroutine sub(dt)
type(ty1),INTENT(IN):: dt(2)
integer :: ii
ii= dt(2)%obj1%ii
ii=ii-10
end subroutine

pure subroutine s1
call sub((/ty1(ty0(1), ty0(2) ),ty1(ty0(1), ty0(2))/))
end subroutine

end
