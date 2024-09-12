implicit none
type ty
integer,allocatable :: ii(:,:)
real,allocatable :: rr(:,:)
character(len=4),allocatable :: ch(:,:)
complex,allocatable :: cmp(:,:)
logical , allocatable :: ll(:,:)
end type

type(ty) :: obj1(2)

Allocate(obj1(1)%ii(2,2),obj1(1)%rr(2,2),obj1(1)%ch(2,2),obj1(1)%cmp(2,2),obj1(1)%ll(2,2))
Allocate(obj1(2)%ii(2,2),obj1(2)%rr(2,2),obj1(2)%ch(2,2),obj1(2)%cmp(2,2),obj1(2)%ll(2,2))
obj1(1)%ii = 21
obj1(2)%ii = 22
obj1(1)%rr = 21.0
obj1(2)%rr = 22.0
obj1(1)%ch = '21'
obj1(2)%ch = '22'
obj1(1)%cmp = (21.0,21.0)
obj1(2)%cmp = (22.0,22.0)
obj1(1)%ll = .TRUE.
obj1(2)%ll = .FALSE.

call s1((obj1))
if((.NOT. Allocated(obj1(2)%ii)) .or. (.NOT. Allocated(obj1(2)%rr))  .or. (.NOT. Allocated(obj1(2)%ch)) .or. (.NOT. Allocated(obj1(2)%cmp) ) .or. (.NOT. Allocated(obj1(2)%ll))) then
print *,201
else
 if(ANY(obj1(1)%ii .ne. 21)) print *,202, obj1(1)%ii
 if(ANY(obj1(2)%ii .ne. 22)) print *,203, obj1(2)%ii
 if(ANY(obj1(1)%rr .ne. 21.0)) print *,204, obj1(1)%rr
 if(ANY(obj1(2)%rr .ne. 22.0)) print *,205, obj1(2)%rr
 if(ANY(obj1(1)%ch .ne. '21')) print *,206, obj1(1)%ch
 if(ANY(obj1(2)%ch .ne. '22')) print *,207, obj1(2)%ch
 if(ANY(obj1(1)%cmp .ne. (21.0,21.0))) print *,208, obj1(1)%cmp
 if(ANY(obj1(2)%cmp .ne. (22.0,22.0))) print *,209, obj1(2)%cmp
 if(ANY(obj1(1)%ll .neqv. .TRUE.)) print *,210, obj1(1)%ll
 if(ANY(obj1(2)%ll .neqv. .FALSE.)) print *,211, obj1(2)%ll
end if

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty) :: dmy(:)
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
    if(size(dmy(2)%ii) /= 4) print *,701
    if(size(dmy(2)%rr) /= 4) print *,702
    if(size(dmy(2)%ch) /= 4) print *,703
    if(size(dmy(2)%cmp) /= 4) print *,704
    if(size(dmy(2)%ll) /= 4) print *,705
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
