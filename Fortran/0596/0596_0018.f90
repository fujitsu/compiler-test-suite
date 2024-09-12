 module m0
 type :: ty0
 integer,allocatable :: ii
 contains
 FINAL::destructor_comp
 end type

 type   :: ty1
 integer :: jj
 integer :: kk
 type(ty0),allocatable :: ty0_obj
 contains
 FINAL::destructor_base
 end type

 type  :: ty2
 type(ty1),allocatable :: ty0_obj2
 end type

 contains
 subroutine destructor_comp(dmy)
 TYPE(ty0):: dmy
 print*,'destructor call comp '
 end subroutine
 subroutine destructor_base(dmy)
 TYPE(ty1):: dmy
 print*,'destructor call base ', dmy%jj
 end subroutine
 end module
 use m0
 call sub
 print*, "PASS"

 contains
 subroutine s1(d1,d2)
 type(ty1),INTENT(in)  :: d1
 type(ty2),INTENT(in)  :: d2
 integer :: v1, v2
 v1=d1%ty0_obj%ii
 v2=d1%jj
 v1=v1+v2
 end subroutine
 subroutine sub()
 call s1(ty1(10,10, ty0(1)),ty2(ty1(2,3,ty0(4))))
 end subroutine
 end
