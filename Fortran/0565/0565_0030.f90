type ty
integer,allocatable :: c1(:)
integer :: iii(2)
character, allocatable :: ch
complex,allocatable :: cmp(:)
logical,allocatable :: ll(:)
end type

type(ty) :: obj1(3)

Allocate(obj1(1)%c1(2),obj1(1)%ch)
Allocate(obj1(2)%c1(2),obj1(2)%ch)
Allocate(obj1(3)%c1(2),obj1(3)%ch)
Allocate(obj1(1)%cmp(2),obj1(1)%ll(2))
Allocate(obj1(2)%cmp(2),obj1(2)%ll(2))
Allocate(obj1(3)%cmp(2),obj1(3)%ll(2))
obj1(1)%c1 = 20
obj1(1)%iii = 30
obj1(1)%ch = 'e'
obj1(2)%c1 = 20
obj1(2)%iii = 30
obj1(2)%ch = 'e'
obj1(3)%c1 = 20
obj1(3)%iii = 30
obj1(3)%ch = 'e'
obj1(1)%cmp = (20.1,30.1)
obj1(2)%cmp = (20.1,30.1)
obj1(3)%cmp = (20.1,30.1)
obj1(1)%ll = .TRUE.
obj1(2)%ll = .TRUE.
obj1(3)%ll = .TRUE.

call s1(obj1)

if(any(obj1(3)%c1 /= 20))print *, 101,obj1(3)%c1
if(any(obj1(3)%iii /= 30))print *, 102,obj1(3)%iii
if(any(obj1(:)%iii(2) /= 30))print *, 102,obj1(3)%iii
if(any(obj1(3)%ll(:) .neqv. .TRUE.))print *, 102,obj1(3)%iii
if(any(obj1(3)%cmp(:) /= (20.1,30.1)))print *, 102,obj1(3)%iii
if(obj1(3)%ch /= 'e')print *, 103,obj1(3)%ch
print *,"Pass"

contains
subroutine s1(dmy)
    type(ty),value :: dmy(3)
    dmy(1)%c1 = 40
    dmy(2)%c1 = 40
    dmy(2)%c1 = 40
    dmy(1)%iii = 50
    dmy(2)%iii = 50
    dmy(3)%iii = 50
    dmy(1)%ch = 'g'
    dmy(2)%ch = 'g'
    dmy(3)%ch = 'g'
dmy(1)%cmp = (30.1,20.1)
dmy(2)%cmp = (30.1,20.1)
dmy(3)%cmp = (30.1,20.1)
dmy(1)%ll = .FALSE.
dmy(2)%ll = .FALSE.
dmy(3)%ll = .FALSE.
end subroutine
end
