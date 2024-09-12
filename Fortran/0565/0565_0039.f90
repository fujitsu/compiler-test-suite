Module m1
type ty
integer,allocatable :: c1(:)
integer :: iii(2)
character, allocatable :: ch(:,:)
end type

type ty1
type(ty),allocatable :: obj2(:)
end type

type(ty1) :: ob1
contains
subroutine s1(dmy)
    type(ty),value :: dmy
    dmy%c1 = 40
    dmy%iii = 50
    dmy%ch = 'g'
end subroutine
end module

use m1

Allocate(ob1%obj2(4))
Allocate(ob1%obj2(2)%c1(2),ob1%obj2(2)%ch(3,4))
ob1%obj2(2)%c1 = 20
ob1%obj2(2)%iii = 30
ob1%obj2(2)%ch = 'e'

call s1(ob1%obj2(2))
 if(ob1%obj2(2)%c1(1) .ne. 20) print *,202, ob1%obj2(2)%c1(1)
 if(ob1%obj2(2)%iii(1) .ne. 30) print *,203, ob1%obj2(2)%iii
 if(ob1%obj2(2)%ch(2,1) .ne. 'e') print *,204, ob1%obj2(2)%ch
print *,"Pass"
end
