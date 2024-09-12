Module m1
type ty
integer,allocatable :: ii
real,allocatable :: rr
character(len=4),allocatable :: ch
complex,allocatable :: cmp
logical,allocatable :: ll
end type

type(ty) :: obj1
end module

Use m1
implicit none

Allocate(obj1%ii,obj1%rr,obj1%ch,obj1%cmp,obj1%ll)
obj1%ii = 20
obj1%rr = 20.0
obj1%ch = '20'
obj1%cmp = (20.0,20.0)
obj1%ll = .TRUE.

call s1((obj1))
if((.NOT. Allocated(obj1%ii)) .or. (.NOT. Allocated(obj1%rr))  .or. (.NOT. Allocated(obj1%ch)) .or. (.NOT. Allocated(obj1%cmp) ) .or. (.NOT. Allocated(obj1%ll))) then
print *,201
else
 if(obj1%ii .ne. 20) print *,202, obj1%ii
 if(obj1%rr .ne. 20.0) print *,203, obj1%rr
 if(obj1%ch .ne. '20') print *,204, obj1%ch
 if(obj1%cmp .ne. (20.0,20.0)) print *,205, obj1%cmp
 if(obj1%ll .neqv. .TRUE.) print *,206, obj1%ll
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
    Deallocate(dmy%ii)
    Deallocate(dmy%rr)
    Deallocate(dmy%ch)
    Deallocate(dmy%cmp)
    Deallocate(dmy%ll)
end subroutine
end
