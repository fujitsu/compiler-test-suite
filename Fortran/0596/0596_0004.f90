module m0
integer :: m_var=0
type :: ty0
integer :: ii
contains
FINAL::destructor
end type

contains
subroutine destructor(dmy)
IMPLICIT NONE
TYPE(ty0), INTENT(INOUT):: dmy
m_var=m_var+1
end subroutine
end module

use m0
call sub
if(m_var .ne. 1)print*,"102"
print*, "Pass"

contains
subroutine sub()
type(ty0),save :: ty0_var
type(ty0),allocatable :: ty0_obj
ty0_obj=ty0(2+4)
if(m_var .eq. 1)print*,"101"
end subroutine
end
