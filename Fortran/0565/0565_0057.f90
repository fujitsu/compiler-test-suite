type ty
integer,allocatable :: c1(:)
integer :: iii(2)
character, allocatable :: ch(:,:)
end type

type(ty) :: obj1(4)

Allocate(obj1(2)%c1(2),obj1(2)%ch(3,4))
obj1(2)%c1 = 20
obj1(2)%iii = 30
obj1(2)%ch = 'e'

call s1((obj1(2)))
if(.NOT. Allocated(obj1(2)%ch)) then
print *,201
else
 if(obj1(2)%c1(2) .ne. 20) print *,202, obj1(2)%c1(2)
 if(obj1(2)%iii(2) .ne. 30) print *,203, obj1(2)%iii(2)
 if(obj1(2)%ch(2,3) .ne. 'e') print *,204, obj1(2)%ch(2,3)
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
