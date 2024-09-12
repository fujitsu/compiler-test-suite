type ty
integer,allocatable :: c1(:)
end type

type t2
type(ty) :: obj1
end type t2

type(t2),allocatable :: obj2

Allocate(obj2)
Allocate(obj2%obj1%c1(2))
obj2%obj1%c1 = 20

call s1((obj2%obj1))
if(.NOT. Allocated(obj2%obj1%c1)) then
print *,201
else
 if(obj2%obj1%c1(1) .ne. 20) print *,202, obj2%obj1%c1(1)
end if

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty) :: dmy
    if(size(dmy%c1) /= 2) print *,701
    if(.NOT. Allocated(dmy%c1)) print *,101
end subroutine
end
