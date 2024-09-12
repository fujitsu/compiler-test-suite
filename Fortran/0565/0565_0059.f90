type ty
integer,allocatable :: c1(:)
integer :: iii(2)
character, allocatable :: ch(:,:)
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

call s1((obj2(2)%obj1))
if(.NOT. Allocated(obj2(2)%obj1%ch)) then
print *,201
else
 if(obj2(2)%obj1%c1(2) .ne. 20) print *,202, obj2(2)%obj1%c1(2)
 if(obj2(2)%obj1%iii(2) .ne. 30) print *,203, obj2(2)%obj1%iii(2)
 if(obj2(2)%obj1%ch(2,3) .ne. 'e') print *,204, obj2(2)%obj1%ch(2,3)
end if

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty) :: dmy
    if(size(dmy%c1) /= 2) print *,701
    if(size(dmy%ch) /= 12) print *,702
    if(.NOT. Allocated(dmy%c1)) print *,101
end subroutine
end
