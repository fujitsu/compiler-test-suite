module m0
integer :: m_var=10
type :: ty0
integer :: ii
contains
FINAL::destructor
end type

type ,extends(ty0) :: ty1
integer,allocatable :: jj
contains
FINAL::destructor01
end type

contains
subroutine destructor(dmy)
IMPLICIT NONE
TYPE(ty0), INTENT(INOUT):: dmy
m_var=m_var+10
end subroutine
subroutine destructor01(dmy)
IMPLICIT NONE
TYPE(ty1), INTENT(INOUT):: dmy
m_var=m_var+20
end subroutine
end module

use m0
call sub
if(m_var .ne. 40)print*,"102",m_var
print*, "Pass"

contains
subroutine sub()
type(ty1),save :: ty1_var
type(ty1),allocatable :: ty1_obj
ty1_var%jj=2
ty1_obj=ty1_var
if(m_var .eq. 30)print*,"101"
end subroutine
end
