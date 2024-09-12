module m0
integer :: m_var=0
type ty1
integer :: jj
contains
FINAL::destructor01
end type

type :: ty0
integer :: ii
type(ty1),allocatable::obj
contains
FINAL::destructor02
end type

contains
subroutine destructor01(dmy)
IMPLICIT NONE
TYPE(ty1), INTENT(INOUT):: dmy
end subroutine

subroutine destructor02(dmy)
IMPLICIT NONE
TYPE(ty0), INTENT(INOUT):: dmy
m_var=m_var+2
end subroutine
end module

use m0
call sub
if(m_var .ne. 2)print*,"102",m_var
print*, "Pass"

contains
subroutine sub()
type(ty0),save :: ty0_var
type(ty0),allocatable :: ty0_obj
allocate(ty0_var%obj)
ty0_var%ii=2
ty0_var%obj%jj=3
ty0_obj=ty0_var
if(m_var .eq. 2)print*,"101"
end subroutine                     
end
