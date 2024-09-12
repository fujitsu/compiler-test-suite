type ty
integer,allocatable :: c1(:)
integer :: iii(2)
character, allocatable :: ch(:,:)
end type

type ty1
type(ty) :: obj2
end type

type(ty1) :: ob1

Allocate(ob1%obj2%c1(2),ob1%obj2%ch(3,4))
ob1%obj2%c1 = 20
ob1%obj2%iii = 30
ob1%obj2%ch = 'e'

call s1((ob1%obj2))
if(.NOT. Allocated(ob1%obj2%c1)) then
print *,201
else
 if(ob1%obj2%c1(1) .ne. 20) print *,202, ob1%obj2%c1(1)
 if(ob1%obj2%iii(1) .ne. 30) print *,203, ob1%obj2%iii
end if

if(.NOT. Allocated(ob1%obj2%ch)) then
print *,301
else
 if(ob1%obj2%ch(2,1) .ne. 'e') print *,204, ob1%obj2%ch
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
