type ty
integer,allocatable :: c1(:)
integer :: iii(2)
character, allocatable :: ch(:,:)
end type

type(ty) :: obj1

Allocate(obj1%c1(2),obj1%ch(3,4))
obj1%c1 = 20
obj1%iii = 30
obj1%ch = 'e'

call s1((obj1))
if(.NOT. Allocated(obj1%ch)) then
print *,201
else
 if(obj1%iii(1) .ne. 30) print *,203, obj1%iii
 if(obj1%ch(2,1) .ne. 'e') print *,204, obj1%ch
end if

if(.NOT. Allocated(obj1%c1)) then
print *,301
else
 if(obj1%c1(1) .ne. 20) print *,302, obj1%c1(1)
end if

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty) :: dmy
    if(size(dmy%c1) /= 2) print *,701
    if(size(dmy%ch) /= 12) print *,702
    if(.NOT. Allocated(dmy%c1)) print *,101
    Deallocate(dmy%c1,dmy%ch)
end subroutine
end
