module m0
integer :: m_var=0
type :: ty0
integer,allocatable :: ii(:)
contains
FINAL::destructor_scalar
FINAL::destructor_array
end type

contains
subroutine destructor_scalar(dmy)
IMPLICIT NONE
TYPE(ty0):: dmy
end subroutine
subroutine destructor_array(dmy)
IMPLICIT NONE
TYPE(ty0):: dmy(:,:)
m_var=m_var+1
print*,"Array destructor called"
end subroutine
end module

use m0
call sub()
print*, "Pass"

contains
subroutine sub()
type(ty0),save :: ty0_var(3,2)
type(ty0),allocatable :: ty0_obj(:,:)
ty0_obj=func()
if( m_var .eq. 1)print*,"101",m_var
end subroutine
function func()
type(ty0),allocatable :: func(:,:)
allocate(func(3,2))
func=ty0([5])
end function
end
