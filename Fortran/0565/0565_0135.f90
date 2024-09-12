module m1
type ty
integer,allocatable :: ii(:,:)
real,allocatable :: rr(:,:)
character(len=4),allocatable :: ch(:,:)
complex,allocatable :: cmp(:,:)
logical , allocatable :: ll(:,:)
end type

type(ty) ,allocatable:: obj1(:)
end module
use m1
implicit none
Allocate(obj1(5))
Allocate(obj1(5)%ii(2,2),obj1(5)%rr(2,2),obj1(5)%ch(2,2),obj1(5)%cmp(2,2),obj1(5)%ll(2,2))
Allocate(obj1(2)%ii(2,2),obj1(2)%rr(2,2),obj1(2)%ch(2,2),obj1(2)%cmp(2,2),obj1(2)%ll(2,2))
obj1(5)%ii = 21
obj1(2)%ii = 22
obj1(5)%rr = 21.0
obj1(2)%rr = 22.0
obj1(5)%ch = '21'
obj1(2)%ch = '22'
obj1(5)%cmp = (21.0,21.0)
obj1(2)%cmp = (22.0,22.0)
obj1(5)%ll = .TRUE.
obj1(2)%ll = .FALSE.

call s1(obj1(5:1:-3))
if((.not. Allocated(obj1(2)%ii)) .or. ( .not. Allocated(obj1(2)%rr))  .or. ( .not. Allocated(obj1(2)%ch))  .or. ( .not. Allocated(obj1(2)%cmp) ) .or. ( .not. Allocated(obj1(2)%ll)))  then 
print *,201
else
if(ANY(obj1(2)%ii /= 22)) print *,202
if(ANY(obj1(2)%ch /= '22')) print *,202
if(ANY(obj1(2)%cmp /= (22.0,22.0))) print *,202
if(ANY(obj1(2)%ll .neqv. .FALSE.)) print *,202
end if
  if(( .not. Allocated(obj1(5)%ii)) .or. ( .not. Allocated(obj1(5)%rr))  .or. ( .not. Allocated(obj1(5)%ch)) .or. ( .not. Allocated(obj1(5)%cmp) ) .or. ( .not. Allocated(obj1(5)%ll))) print *,301

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty),value :: dmy(2:)

    dmy(2)%ii = 41
    dmy(3)%ii = 42
    dmy(2)%rr = 41.0
    dmy(3)%rr = 42.0
    dmy(2)%ch = '41'
    dmy(3)%ch = '42'
    dmy(2)%cmp = (41.0,41.0)
    dmy(3)%cmp = (42.0,42.0)
    dmy(2)%ll = .FALSE.
    dmy(3)%ll = .TRUE.
    if(.NOT. Allocated(dmy(2)%ii)) print *,101
    if(.NOT. Allocated(dmy(3)%ii)) print *,102
    if(.NOT. Allocated(dmy(2)%rr)) print *,103
    if(.NOT. Allocated(dmy(3)%rr)) print *,104
    if(.NOT. Allocated(dmy(2)%ch)) print *,105
    if(.NOT. Allocated(dmy(3)%ch)) print *,106
    if(.NOT. Allocated(dmy(2)%cmp)) print *,107
    if(.NOT. Allocated(dmy(3)%cmp)) print *,108
    if(.NOT. Allocated(dmy(2)%ll)) print *,109
    if(.NOT. Allocated(dmy(3)%ll)) print *,110
    Deallocate(dmy(2)%ii)
    Deallocate(dmy(3)%ii)
    Deallocate(dmy(2)%rr)
    Deallocate(dmy(3)%rr)
    Deallocate(dmy(2)%ch)
    Deallocate(dmy(3)%ch)
    Deallocate(dmy(2)%cmp)
    Deallocate(dmy(3)%cmp)
    Deallocate(dmy(2)%ll)
    Deallocate(dmy(3)%ll)
end subroutine
end
