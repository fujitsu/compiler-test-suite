module m0
type :: ty0
integer :: ii
contains
FINAL::destructor
end type 

type   :: ty1
integer :: jj
integer :: kk
type(ty0) :: ty0_obj
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
contains 
elemental integer function f1(d1)
type(ty1),INTENT(in)  :: d1
integer :: v1, v2
v1=d1%ty0_obj%ii
v2=d1%jj
f1=v1+v2
end function

pure subroutine sub()
integer ::ii
ii=f1(ty1(ii,10, ty0(1)))
ii=ii-10
end subroutine

end