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
print*, "destructor called !!!"
dmy%ii=10
end subroutine
end module

use m0
integer:: ii=10
call sub(ii)
print*, "PASS"

contains 
elemental subroutine s1(d1)
type(ty0),INTENT(in)  :: d1
integer :: v1
v1=d1%ii
v1=v1+10
end subroutine

elemental subroutine sub(d1)
integer,INTENT(IN) :: d1
call s1(ty0(d1))
end subroutine
end
