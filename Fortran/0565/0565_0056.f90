type ty
integer,allocatable :: c1(:)
integer :: iii(2)
character, allocatable :: ch
end type

type(ty) :: obj1(4)

Allocate(obj1(1)%c1(2),obj1(1)%ch)
obj1(1)%c1 = 20
obj1(1)%iii = 30
obj1(1)%ch = 'e'

call s1((obj1))
if(.NOT. Allocated(obj1(1)%c1)) then
print *,201
else
 if(obj1(1)%c1(1) .ne. 20) print *,202, obj1(1)%c1(1)
 if(obj1(1)%iii(1) .ne. 30) print *,203, obj1(1)%iii
 if(obj1(1)%ch .ne. 'e') print *,204, obj1(1)%ch
end if

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty) :: dmy(:)
    if(size(dmy(1)%c1) /= 2) print *,701
    if(LEN(dmy(1)%ch) /= 1) print *,702
    if(.NOT. Allocated(dmy(1)%c1)) print *,101
end subroutine
end
