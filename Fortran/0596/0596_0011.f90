 module m0
 integer :: m_var=0
 type t0
 integer :: ii
 contains
 FINAL::F0
end type

type :: ty0
integer :: ii
type(t0) :: t0_cmp
contains
FINAL::destructor
end type

contains
subroutine destructor(dmy)
IMPLICIT NONE
TYPE(ty0), INTENT(INOUT):: dmy
m_var=m_var+1
if( dmy%ii .ne. 5)print*,"101"
end subroutine

subroutine F0(dmy)
IMPLICIT NONE
TYPE(t0), INTENT(INOUT):: dmy
m_var=m_var+1
if( dmy%ii .ne. 6)print*,"102"
end subroutine
end module

use m0
call sub
if(m_var .ne. 2)print*,"103"
print*, "Pass"
contains
subroutine sub()
 type(ty0),save :: ty0_var
 type(ty0),allocatable :: ty0_obj
 ty0_var%ii=5
 ty0_var%t0_cmp%ii=6
 ty0_obj=ty0_var
end subroutine
end
