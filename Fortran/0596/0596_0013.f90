 module m0
 integer :: m_var=0
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
 m_var=m_var+1
 if(dmy%ii .ne. 10)print*,"102"
 end subroutine
 end module
 use m0
 call sub
 if(m_var .ne.1 )print*,"101",m_var
 print*, "Pass"
 contains
 subroutine sub()
 type(ty1),allocatable:: x
 allocate(x)
 allocate(x%ty0_obj)
 allocate(x%ty0_obj%ii,source=10)
 end subroutine
 end
