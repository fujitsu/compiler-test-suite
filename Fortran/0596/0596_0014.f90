 module m0
 type :: ty0
 integer,allocatable :: ii
 contains
 FINAL::destructor
 end type

type   :: ty1
integer :: jj
integer :: kk
type(ty0),allocatable :: ty0_obj
 contains
 FINAL::destructor1
end type
contains
subroutine destructor(dmy)
 IMPLICIT NONE
 TYPE(ty0), INTENT(INOUT):: dmy
 print*,'destructor call '
 end subroutine
subroutine destructor1(dmy)
 IMPLICIT NONE
 TYPE(ty1), INTENT(INOUT):: dmy
  print*,'destructor1 call '
 end subroutine
 end module
 use m0
 call sub
 print*, "Pass"
 contains
 subroutine sub()
 type(ty1),allocatable:: x
 allocate(x)
 allocate(x%ty0_obj)
 allocate(x%ty0_obj%ii,source=10)
 end subroutine
 end
