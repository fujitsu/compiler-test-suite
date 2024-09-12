type ty
integer,allocatable :: c1(:)
integer :: iii(2)
character, allocatable :: ch
end type

type(ty) :: obj1(10)

Allocate(obj1(2)%c1(2),obj1(2)%ch)
obj1(2)%c1 = 20
obj1(2)%iii = 30
obj1(2)%ch = 'e'

call s1((obj1))
if(.NOT. Allocated(obj1(2)%c1)) then
print *,201
else
 if(obj1(2)%c1(1) .ne. 20) print *,202, obj1(2)%c1(1)
 if(obj1(2)%iii(1) .ne. 30) print *,203, obj1(2)%iii
 if(obj1(2)%ch .ne. 'e') print *,204, obj1(2)%ch
end if

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty) :: dmy(:)
    if(size(dmy(2)%c1) /= 2) print *,701,size(dmy(2)%c1)
    if(LEN(dmy(2)%ch) /= 1) print *,702
    if(.NOT. Allocated(dmy(2)%c1)) print *,101
end subroutine
end
