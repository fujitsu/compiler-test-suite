module m0

type :: ty0
integer :: ii
contains
FINAL::destructor
end type 

type, extends(ty0)  :: ty1
integer :: jj
integer :: kk
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
type(ty1),INTENT(in)  :: d1
integer :: v1, v2
v1=d1%ii
v2=d1%jj
f1=v1+v2
end function

pure subroutine sub()
integer :: ii
ii=0
ii=f1(ty1(ii,ii, 1))
ii=ii-10
end subroutine
end
