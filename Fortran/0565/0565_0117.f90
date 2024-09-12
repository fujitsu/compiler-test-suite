implicit none
type ty
integer,allocatable :: ii
end type

type(ty),pointer :: obj2(:)
type(ty),target:: trg(8)

allocate(trg(1)%ii)
allocate(trg(2)%ii)
allocate(trg(3)%ii)
trg(1)%ii = 4
trg(2)%ii = 5
trg(3)%ii = 6
obj2=>trg(1:3:2)
call s1(obj2)
if(.not.allocated(obj2(1)%ii)) print*,"121"
if(.not.allocated(obj2(2)%ii)) print*,"122"

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty),value :: dmy(2)
    if(dmy(1)%ii /= 4) print*,"221"
    if(dmy(2)%ii /= 6) print*,"222"
    deallocate(dmy(1)%ii)
    deallocate(dmy(2)%ii)
end subroutine
end
