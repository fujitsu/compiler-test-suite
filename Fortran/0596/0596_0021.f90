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
 print*, "pass"
 contains
 subroutine sub()
 type(ty0),allocatable:: x
  allocate(x)
  allocate(x%ii,source=10)
  end subroutine
  end
