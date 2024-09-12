type ty
integer,allocatable :: c1(:)
integer :: iii(2)
character, allocatable :: ch(:,:)
end type

type tty
type(ty) :: obj1
end type tty

type(tty),allocatable :: ob2(:)

Allocate(ob2(4))
Allocate(ob2(2)%obj1%c1(2),ob2(2)%obj1%ch(3,4))
ob2(2)%obj1%c1 = 20
ob2(2)%obj1%iii = 30
ob2(2)%obj1%ch = 'e'

call s1((ob2(:)%obj1))
if(.NOT. Allocated(ob2(2)%obj1%ch)) then
print *,201
else
 if(ob2(2)%obj1%c1(2) .ne. 20) print *,202, ob2(2)%obj1%c1(2)
 if(ob2(2)%obj1%iii(2) .ne. 30) print *,203, ob2(2)%obj1%iii(2)
 if(ob2(2)%obj1%ch(2,3) .ne. 'e') print *,204, ob2(2)%obj1%ch(2,3)
end if

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty) :: dmy(4)
    if(size(dmy(2)%c1) /= 2) print *,701
    if(size(dmy(2)%ch) /= 12) print *,702
    if(.NOT. Allocated(dmy(2)%c1)) print *,101
end subroutine
end
