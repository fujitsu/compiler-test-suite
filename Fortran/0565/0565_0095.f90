Module m1
integer :: k,m
type ty1
integer,allocatable :: ii1(:,:)
real,allocatable :: rr1(:,:)
character(len=:),allocatable :: ch1(:,:)
complex,allocatable :: cmp1(:,:)
logical,allocatable :: ll1(:,:)
end type

type ty2
integer,allocatable :: ii2(:,:)
real,allocatable :: rr2(:,:)
character(len=:),allocatable :: ch2(:,:)
complex,allocatable :: cmp2(:,:)
logical,allocatable :: ll2(:,:)
end type

type ty3
integer,allocatable :: ii3(:,:)
real,allocatable :: rr3(:,:)
character(len=:),allocatable :: ch3(:,:)
complex,allocatable :: cmp3(:,:)
logical,allocatable :: ll3(:,:)
end type

type :: ty0
type(ty1),allocatable :: obj1(:)
type(ty2),allocatable :: obj2(:)
type(ty3),allocatable :: obj3(:)
end type

end module
use m1
implicit none
type(ty0),pointer :: obj0(:)

Allocate(obj0(2))

do k = 1,2
Allocate(obj0(k)%obj1(2),obj0(k)%obj2(2),obj0(k)%obj3(2))
 do m=1,2
Allocate(obj0(k)%obj1(m)%ii1(2,2),obj0(k)%obj1(m)%rr1(2,2),obj0(k)%obj1(m)%cmp1(2,2),obj0(k)%obj1(m)%ll1(2,2))
Allocate(obj0(k)%obj2(m)%ii2(2,2),obj0(k)%obj2(m)%rr2(2,2),obj0(k)%obj2(m)%cmp2(2,2),obj0(k)%obj2(m)%ll2(2,2))
Allocate(obj0(k)%obj3(m)%ii3(2,2),obj0(k)%obj3(m)%rr3(2,2),obj0(k)%obj3(m)%cmp3(2,2),obj0(k)%obj3(m)%ll3(2,2))
Allocate(character(len=2)::obj0(k)%obj1(m)%ch1(2,2),obj0(k)%obj2(m)%ch2(2,2),obj0(k)%obj3(m)%ch3(2,2))
obj0(k)%obj1(m)%ii1 = 20
obj0(k)%obj1(m)%rr1 = 20.0
obj0(k)%obj1(m)%ch1 = '20'
obj0(k)%obj1(m)%cmp1 = (20.0,20.0)
obj0(k)%obj1(m)%ll1 = .TRUE.

obj0(k)%obj2(m)%ii2 = 20
obj0(k)%obj2(m)%rr2 = 20.0
obj0(k)%obj2(m)%ch2 = '20'
obj0(k)%obj2(m)%cmp2 = (20.0,20.0)
obj0(k)%obj2(m)%ll2 = .TRUE.

obj0(k)%obj3(m)%ii3 = 20
obj0(k)%obj3(m)%rr3 = 20.0
obj0(k)%obj3(m)%ch3 = '20'
obj0(k)%obj3(m)%cmp3 = (20.0,20.0)
obj0(k)%obj3(m)%ll3 = .TRUE.
 end do
end do

call s1((obj0))

do k=1,2
  do m=1,2
if((.NOT. Allocated(obj0(k)%obj1(m)%ii1)) .or. (.NOT. Allocated(obj0(k)%obj1(m)%rr1))  .or. (.NOT. Allocated(obj0(k)%obj1(m)%ch1)) .or. (.NOT. Allocated(obj0(k)%obj1(m)%cmp1) ) .or. (.NOT. Allocated(obj0(k)%obj1(m)%ll1))) then
print *,201
else
 if(ANY(obj0(k)%obj1(m)%ii1 .ne. 20)) print *,202, obj0(k)%obj1(m)%ii1
 if(ANY(obj0(k)%obj1(m)%rr1.ne. 20.0)) print *,203, obj0(k)%obj1(m)%rr1
 if(ANY(obj0(k)%obj1(m)%ch1.ne. '20')) print *,204, obj0(k)%obj1(m)%ch1
 if(ANY(obj0(k)%obj1(m)%cmp1 .ne. (20.0,20.0))) print *,205, obj0(k)%obj1(m)%cmp1
 if(ANY(obj0(k)%obj1(m)%ll1 .neqv. .TRUE.)) print *,206, obj0(k)%obj1(m)%ll1
end if

if((.NOT. Allocated(obj0(k)%obj2(m)%ii2)) .or. (.NOT. Allocated(obj0(k)%obj2(m)%rr2))  .or. (.NOT. Allocated(obj0(k)%obj2(m)%ch2)) .or. (.NOT. Allocated(obj0(k)%obj2(m)%cmp2) ) .or. (.NOT. Allocated(obj0(k)%obj2(m)%ll2))) then
print *,301
else
 if(ANY(obj0(k)%obj2(m)%ii2 .ne. 20)) print *,302, obj0(k)%obj2(m)%ii2
 if(ANY(obj0(k)%obj2(m)%rr2 .ne. 20.0)) print *,303, obj0(k)%obj2(m)%rr2
 if(ANY(obj0(k)%obj2(m)%ch2 .ne. '20')) print *,304, obj0(k)%obj2(m)%ch2
 if(ANY(obj0(k)%obj2(m)%cmp2 .ne. (20.0,20.0))) print *,305, obj0(k)%obj2(m)%cmp2
 if(ANY(obj0(k)%obj2(m)%ll2 .neqv. .TRUE.)) print *,306, obj0(k)%obj2(m)%ll2
end if

if((.NOT. Allocated(obj0(k)%obj3(m)%ii3)) .or. (.NOT. Allocated(obj0(k)%obj3(m)%rr3))  .or. (.NOT. Allocated(obj0(k)%obj3(m)%ch3)) .or. (.NOT. Allocated(obj0(k)%obj3(m)%cmp3) ) .or. (.NOT. Allocated(obj0(k)%obj3(m)%ll3))) then
print *,401
else
 if(ANY(obj0(k)%obj3(m)%ii3 .ne. 20)) print *,402, obj0(k)%obj3(m)%ii3
 if(ANY(obj0(k)%obj3(m)%rr3 .ne. 20.0)) print *,403, obj0(k)%obj3(m)%rr3
 if(ANY(obj0(k)%obj3(m)%ch3 .ne. '20')) print *,404, obj0(k)%obj3(m)%ch3
 if(ANY(obj0(k)%obj3(m)%cmp3 .ne. (20.0,20.0))) print *,405, obj0(k)%obj3(m)%cmp3
 if(ANY(obj0(k)%obj3(m)%ll3 .neqv. .TRUE.)) print *,406, obj0(k)%obj3(m)%ll3
end if
  end do
end do

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty0) :: dmy(2)
    integer :: k,m
do k=1,2
  do m=1,2
    if(.NOT. Allocated(dmy(k)%obj1(m)%ii1)) print *,101
    if(.NOT. Allocated(dmy(k)%obj2(m)%ii2)) print *,101
    if(.NOT. Allocated(dmy(k)%obj3(m)%ii3)) print *,101
    if(.NOT. Allocated(dmy(k)%obj1(m)%rr1)) print *,102
    if(.NOT. Allocated(dmy(k)%obj2(m)%rr2)) print *,102
    if(.NOT. Allocated(dmy(k)%obj3(m)%rr3)) print *,102
    if(.NOT. Allocated(dmy(k)%obj1(m)%ch1)) print *,103
    if(.NOT. Allocated(dmy(k)%obj2(m)%ch2)) print *,103
    if(.NOT. Allocated(dmy(k)%obj3(m)%ch3)) print *,103
    if(.NOT. Allocated(dmy(k)%obj1(m)%cmp1)) print *,104
    if(.NOT. Allocated(dmy(k)%obj2(m)%cmp2)) print *,104
    if(.NOT. Allocated(dmy(k)%obj3(m)%cmp3)) print *,104
    if(.NOT. Allocated(dmy(k)%obj1(m)%ll1)) print *,105
    if(.NOT. Allocated(dmy(k)%obj2(m)%ll2)) print *,105
    if(.NOT. Allocated(dmy(k)%obj3(m)%ll3)) print *,105
    if(LEN(dmy(k)%obj1(m)%ch1) /= 2) print *,701
    if(size(dmy(k)%obj1(m)%ii1) /= 4) print *,701
    if(size(dmy(k)%obj2(m)%ii2) /= 4) print *,701
    if(size(dmy(k)%obj3(m)%ii3) /= 4) print *,701
    if(size(dmy(k)%obj1(m)%rr1) /= 4) print *,701
    if(size(dmy(k)%obj2(m)%rr2) /= 4) print *,701
    if(size(dmy(k)%obj3(m)%rr3) /= 4) print *,701
    if(size(dmy(k)%obj1(m)%ch1) /= 4) print *,701
    if(size(dmy(k)%obj2(m)%ch2) /= 4) print *,701
    if(size(dmy(k)%obj3(m)%ch3) /= 4) print *,701
    if(size(dmy(k)%obj1(m)%cmp1) /= 4) print *,701
    if(size(dmy(k)%obj2(m)%cmp2) /= 4) print *,701
    if(size(dmy(k)%obj3(m)%cmp3) /= 4) print *,701
    if(size(dmy(k)%obj1(m)%ll1) /= 4) print *,701
    if(size(dmy(k)%obj2(m)%ll2) /= 4) print *,701
    if(size(dmy(k)%obj3(m)%ll3) /= 4) print *,701
    Deallocate(dmy(k)%obj1(m)%ii1)
    Deallocate(dmy(k)%obj2(m)%ii2)
    Deallocate(dmy(k)%obj3(m)%ii3)
    Deallocate(dmy(k)%obj1(m)%rr1)
    Deallocate(dmy(k)%obj2(m)%rr2)
    Deallocate(dmy(k)%obj3(m)%rr3)
    Deallocate(dmy(k)%obj1(m)%ch1)
    Deallocate(dmy(k)%obj2(m)%ch2)
    Deallocate(dmy(k)%obj3(m)%ch3)
    Deallocate(dmy(k)%obj1(m)%cmp1)
    Deallocate(dmy(k)%obj2(m)%cmp2)
    Deallocate(dmy(k)%obj3(m)%cmp3)
    Deallocate(dmy(k)%obj1(m)%ll1)
    Deallocate(dmy(k)%obj2(m)%ll2)
    Deallocate(dmy(k)%obj3(m)%ll3)
  end do
end do
end subroutine
end
