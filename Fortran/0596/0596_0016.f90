 module m0
 type :: ty0
 integer,allocatable :: ii
 contains
 FINAL::destructor_base
 end type

 type,extends(ty0) :: ty1
 integer,allocatable :: jj
 contains
 FINAL::destructor_extended
 end type
contains
subroutine destructor_base(dmy)
 TYPE(ty0):: dmy
 print*,'destructor base call ',dmy%ii
 end subroutine
subroutine destructor_extended(dmy)
 TYPE(ty1), INTENT(INOUT):: dmy
 print*,'destructor extended call '
 end subroutine
 end module
 use m0
 call sub
 print*, "Pass"
 contains
 subroutine sub()
 class(ty0),allocatable:: x
 allocate(ty1::x)
 allocate(x%ii)
 x%ii=5
 end subroutine
 end
