module m0
integer :: m_var=0
type :: ty0
integer :: ii
contains
FINAL::destructor_scalar
FINAL::destructor_array
end type

contains
subroutine destructor_scalar(dmy)
IMPLICIT NONE
TYPE(ty0), INTENT(INOUT):: dmy
end subroutine
subroutine destructor_array(dmy)
IMPLICIT NONE
TYPE(ty0), INTENT(INOUT):: dmy(3,2)
m_var=m_var+1
print*,"Correct destructor called"
end subroutine
end module

use m0
call sub
print*, "Pass"

contains
subroutine sub()
type(ty0),save :: ty0_var(3,2)
type(ty0),allocatable :: ty0_obj(:,:)
ty0_var%ii=2
ty0_obj=ty0_var
end subroutine
end
