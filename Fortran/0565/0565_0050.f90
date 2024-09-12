type ty
integer,allocatable :: c1(:)
end type

type(ty), allocatable :: obj1

Allocate(obj1)
Allocate(obj1%c1(2))
obj1%c1 = 20

call s1((obj1))
if(.NOT. Allocated(obj1%c1)) then
print *,201
else
 if(obj1%c1(1) .ne. 20) print *,202, obj1%c1(1)
end if

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty) :: dmy
    if(size(dmy%c1) /= 2) print *,301
    if(.NOT. Allocated(dmy%c1)) print *,101
    Deallocate(dmy%c1)
end subroutine
end
