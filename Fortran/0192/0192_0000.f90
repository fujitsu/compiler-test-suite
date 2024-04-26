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
type(ty1):: a0, a1, a2
integer::ii
a0%obj0%ii=10
a0%obj1%ii=100
a1%obj0%ii=100
a1%obj1%ii=10
a2%obj0%ii=100
a2%obj1%ii=10
ii = f1()
if(ii /= 10) print*, 101
print*, "PASS"

contains
pure subroutine sub(dt)
type(ty1),INTENT(IN):: dt(3)
integer :: ii
ii= dt(2)%obj1%ii
ii=ii+10
end subroutine

pure integer function f1()
call sub((/a0, a1, a2/))
f1=10
end function
end
