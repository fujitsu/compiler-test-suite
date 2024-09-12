type ty
integer,allocatable :: c1(:)
character, allocatable :: ch(:,:)
end type

type ty1
type(ty),allocatable :: obj2(:)
end type

type(ty1) :: ob1

Allocate(ob1%obj2(4))
Allocate(ob1%obj2(2)%c1(2),ob1%obj2(2)%ch(3,4))
ob1%obj2(2)%c1 = 20

call s1((ob1%obj2(2)))
if(.NOT. Allocated(ob1%obj2(2)%c1)) then
print *,201
else
 if(ob1%obj2(2)%c1(1) .ne. 20) print *,202, ob1%obj2(2)%c1(1)
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
