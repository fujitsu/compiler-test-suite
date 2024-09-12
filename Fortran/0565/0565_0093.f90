module m1
type ty
integer,allocatable :: ii(:,:)
real,allocatable :: rr(:)
character(len=4),allocatable :: ch(:,:)
complex,allocatable :: cmp(:,:)
logical,allocatable :: ll(:,:)
end type

type(ty), allocatable :: obj1
end module

use m1
implicit none
Allocate(obj1)
Allocate(obj1%ii(2,2),obj1%rr(2),obj1%ch(2,2),obj1%cmp(2,2),obj1%ll(2,2))
obj1%ii = 20
obj1%rr = 20.0
obj1%ch = '20'
obj1%cmp = (20.0,20.0)
obj1%ll = .TRUE.

call s1((obj1))
if((.NOT. Allocated(obj1%ii)) .or. (.NOT. Allocated(obj1%rr))  .or. (.NOT. Allocated(obj1%ch)) .or. (.NOT. Allocated(obj1%cmp) ) .or.  (.NOT. Allocated(obj1%ll) )) then
print *,201
else
 if(Any(obj1%ii .ne. 20)) print *,202, obj1%ii
 if(Any(obj1%rr .ne. 20.0)) print *,203, obj1%rr
 if(Any(obj1%ch .ne. '20')) print *,204, obj1%ch
 if(Any(obj1%cmp .ne. (20.0,20.0))) print *,205, obj1%cmp
 if(Any(obj1%ll .neqv. .TRUE.)) print *,206, obj1%ll
end if

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty) :: dmy
    if(.NOT. Allocated(dmy%ii)) print *,101
    if(.NOT. Allocated(dmy%rr)) print *,102
    if(.NOT. Allocated(dmy%ch)) print *,103
    if(.NOT. Allocated(dmy%cmp)) print *,104
    if(.NOT. Allocated(dmy%ll)) print *,105
    if(LEN(dmy%ch) /= 4) print *,701
    if(size(dmy%ii) /= 4) print *,701
    if(size(dmy%rr) /= 2) print *,702
    if(size(dmy%ch) /= 4) print *,703
    if(size(dmy%cmp) /= 4) print *,704
    if(size(dmy%ll) /= 4) print *,705
    Deallocate(dmy%ii)
    Deallocate(dmy%rr)
    Deallocate(dmy%ch)
    Deallocate(dmy%cmp)
    Deallocate(dmy%ll)
end subroutine
end
