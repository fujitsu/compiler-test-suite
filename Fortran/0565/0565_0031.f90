type ty
integer,allocatable :: c1(:)
integer :: iii(2)
character,allocatable :: ch(:,:)
end type

type tty
type(ty) :: obj1
end type tty

type(tty),allocatable :: obj2(:)

Allocate(obj2(4))
Allocate(obj2(2)%obj1%c1(2),obj2(2)%obj1%ch(3,4))
obj2(2)%obj1%c1 = 20
obj2(2)%obj1%iii = 30
obj2(2)%obj1%ch = 'e'

call s1(obj2(:)%obj1)
 if(obj2(2)%obj1%c1(2) .ne. 20) print *,202, obj2(2)%obj1%c1(2)
 if(obj2(2)%obj1%iii(2) .ne. 30) print *,203, obj2(2)%obj1%iii(2)
 if(obj2(2)%obj1%ch(2,3) .ne. 'e') print *,204, obj2(2)%obj1%ch(2,3)
print *,"Pass"
contains
subroutine s1(dmy)
    type(ty),value :: dmy(4)
    dmy(2)%c1(2) = 40
    dmy(2)%iii(2) = 50
    dmy(2)%ch(2,3) = 'g'
end subroutine
end
