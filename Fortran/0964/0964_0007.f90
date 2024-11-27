module m0
type :: ty0
integer :: ii
contains
FINAL::destructor
end type 

type,extends(ty0)  :: ty1
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
integer :: ii=20
call sub(ii)
contains 
elemental subroutine s1(d1)
type(ty1),INTENT(in)  :: d1
integer :: v1, v2
v1=d1%ii
v2=d1%jj
v1=v1+v2
end subroutine

pure subroutine sub(d1)
integer ,INTENT(IN) :: d1
call s1(ty1(d1,d1, 1))
end subroutine

end
