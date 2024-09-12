 module m0
 type :: ty0
 integer,allocatable :: ii
 contains
 FINAL::destructor
 end type

contains
subroutine destructor(dmy)
 IMPLICIT NONE
 TYPE(ty0), INTENT(INOUT):: dmy
 if(dmy%ii .ne. 10)print*,"101"
 end subroutine
 end module
 use m0
 call sub
 print*, "Pass"
 contains
 subroutine sub()
 type(ty0),allocatable:: x
 allocate(x)
 allocate(x%ii,source=10)
 end subroutine
 end
