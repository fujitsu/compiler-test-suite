type ty
integer,allocatable :: ii
end type

type(ty):: act(5)

call s2(act(1:5:2))
contains
subroutine s2(obj2)
type(ty):: obj2(:)

allocate(obj2(1)%ii)
allocate(obj2(2)%ii)
allocate(obj2(3)%ii)
obj2(1)%ii = 4
obj2(2)%ii = 5
obj2(3)%ii = 6
call s1(obj2)
if(allocated(obj2(1)%ii)) print*,"121"
if(allocated(obj2(2)%ii)) print*,"122"

print *,"Pass"
end subroutine
subroutine s1(dmy)
    type(ty) :: dmy(3)
    if(dmy(1)%ii /= 4) print*,"221"
    if(dmy(3)%ii /= 6) print*,"222"
    deallocate(dmy(1)%ii)
    deallocate(dmy(2)%ii)
    deallocate(dmy(3)%ii)
end subroutine
end
