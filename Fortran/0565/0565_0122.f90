implicit none
type ty
integer,allocatable :: ii
real,allocatable :: rr
character(len=4),allocatable :: ch
complex,allocatable :: cmp
logical , allocatable :: ll
end type

type(ty) :: obj1(3)

Allocate(obj1(1)%ii,obj1(1)%rr,obj1(1)%ch,obj1(1)%cmp,obj1(1)%ll)
Allocate(obj1(2)%ii,obj1(2)%rr,obj1(2)%ch,obj1(2)%cmp,obj1(2)%ll)
Allocate(obj1(3)%ii,obj1(3)%rr,obj1(3)%ch,obj1(3)%cmp,obj1(3)%ll)
obj1(1)%ii = 21
obj1(2)%ii = 22
obj1(3)%ii = 23
obj1(1)%rr = 21.0
obj1(2)%rr = 22.0
obj1(3)%rr = 23.0
obj1(1)%ch = '21'
obj1(2)%ch = '22'
obj1(3)%ch = '23'
obj1(1)%cmp = (21.0,21.0)
obj1(2)%cmp = (22.0,22.0)
obj1(3)%cmp = (23.0,23.0)
obj1(1)%ll = .TRUE.
obj1(2)%ll = .FALSE.
obj1(3)%ll = .FALSE.

call s1(obj1(1:3:2))
if((.NOT. Allocated(obj1(3)%ii)) .or. (.NOT. Allocated(obj1(1)%rr))  .or. (.NOT. Allocated(obj1(3)%ch)) .or. (.NOT. Allocated(obj1(3)%cmp) ) .or. (.NOT. Allocated(obj1(3)%ll))) then
print *,201
else
 if(obj1(1)%ii .ne. 21) print *,202, obj1(1)%ii
 if(obj1(3)%ii .ne. 23) print *,203, obj1(3)%ii
 if(obj1(1)%rr .ne. 21.0) print *,204, obj1(1)%rr
 if(obj1(3)%rr .ne. 23.0) print *,205, obj1(3)%rr
 if(obj1(1)%ch .ne. '21') print *,206, obj1(1)%ch
 if(obj1(3)%ch .ne. '23') print *,207, obj1(3)%ch
 if(obj1(1)%cmp .ne. (21.0,21.0)) print *,208, obj1(1)%cmp
 if(obj1(3)%cmp .ne. (23.0,23.0)) print *,209, obj1(3)%cmp
 if(obj1(1)%ll .neqv. .TRUE.) print *,210, obj1(1)%ll
 if(obj1(3)%ll .neqv. .FALSE.) print *,211, obj1(3)%ll
end if

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty),value :: dmy(2)
    dmy(1)%ii = 41
    dmy(2)%ii = 42
    dmy(1)%rr = 41.0
    dmy(2)%rr = 42.0
    dmy(1)%ch = '41'
    dmy(2)%ch = '42'
    dmy(1)%cmp = (41.0,41.0)
    dmy(2)%cmp = (42.0,42.0)
    dmy(1)%ll = .FALSE.
    dmy(2)%ll = .TRUE.
    if(.NOT. Allocated(dmy(1)%ii)) print *,101
    if(.NOT. Allocated(dmy(2)%ii)) print *,102
    if(.NOT. Allocated(dmy(1)%rr)) print *,103
    if(.NOT. Allocated(dmy(2)%rr)) print *,104
    if(.NOT. Allocated(dmy(1)%ch)) print *,105
    if(.NOT. Allocated(dmy(2)%ch)) print *,106
    if(.NOT. Allocated(dmy(1)%cmp)) print *,107
    if(.NOT. Allocated(dmy(2)%cmp)) print *,108
    if(.NOT. Allocated(dmy(1)%ll)) print *,109
    if(.NOT. Allocated(dmy(2)%ll)) print *,110
    Deallocate(dmy(1)%ii)
    Deallocate(dmy(2)%ii)
    Deallocate(dmy(1)%rr)
    Deallocate(dmy(2)%rr)
    Deallocate(dmy(1)%ch)
    Deallocate(dmy(2)%ch)
    Deallocate(dmy(1)%cmp)
    Deallocate(dmy(2)%cmp)
    Deallocate(dmy(1)%ll)
    Deallocate(dmy(2)%ll)
end subroutine
end