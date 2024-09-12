Module m1
integer :: k,j
type ty1
integer,allocatable :: ii1
real,allocatable :: rr1
character(len=:),allocatable :: ch1
complex,allocatable :: cmp1
logical,allocatable :: ll1
end type

type ty2
integer,allocatable :: ii2
real,allocatable :: rr2
character(len=:),allocatable :: ch2
complex,allocatable :: cmp2
logical,allocatable :: ll2
end type

type ty3
integer,allocatable :: ii3
real,allocatable :: rr3
character(len=:),allocatable :: ch3
complex,allocatable :: cmp3
logical,allocatable :: ll3
end type

type :: ty0
type(ty1) :: obj1
type(ty2) :: obj2
type(ty3) :: obj3
end type

type(ty0) :: obj0(2,2)
contains
subroutine s1(dmy,dmy2)
    type(ty0) :: dmy(*),dmy2(*)
    integer :: k
do k=1,2
    if(.NOT. Allocated(dmy(k)%obj1%ii1)) print *,101
    if(.NOT. Allocated(dmy(k)%obj2%ii2)) print *,101
    if(.NOT. Allocated(dmy(k)%obj3%ii3)) print *,101
    if(.NOT. Allocated(dmy(k)%obj1%rr1)) print *,102
    if(.NOT. Allocated(dmy(k)%obj2%rr2)) print *,102
    if(.NOT. Allocated(dmy(k)%obj3%rr3)) print *,102
    if(.NOT. Allocated(dmy(k)%obj1%ch1)) print *,103
    if(.NOT. Allocated(dmy(k)%obj2%ch2)) print *,103
    if(.NOT. Allocated(dmy(k)%obj3%ch3)) print *,103
    if(.NOT. Allocated(dmy(k)%obj1%cmp1)) print *,104
    if(.NOT. Allocated(dmy(k)%obj2%cmp2)) print *,104
    if(.NOT. Allocated(dmy(k)%obj3%cmp3)) print *,104
    if(.NOT. Allocated(dmy(k)%obj1%ll1)) print *,105
    if(.NOT. Allocated(dmy(k)%obj2%ll2)) print *,105
    if(.NOT. Allocated(dmy(k)%obj3%ll3)) print *,105
    Deallocate(dmy(k)%obj1%ii1)
    Deallocate(dmy(k)%obj2%ii2)
    Deallocate(dmy(k)%obj3%ii3)
    Deallocate(dmy(k)%obj1%rr1)
    Deallocate(dmy(k)%obj2%rr2)
    Deallocate(dmy(k)%obj3%rr3)
    Deallocate(dmy(k)%obj1%ch1)
    Deallocate(dmy(k)%obj2%ch2)
    Deallocate(dmy(k)%obj3%ch3)
    Deallocate(dmy(k)%obj1%cmp1)
    Deallocate(dmy(k)%obj2%cmp2)
    Deallocate(dmy(k)%obj3%cmp3)
    Deallocate(dmy(k)%obj1%ll1)
    Deallocate(dmy(k)%obj2%ll2)
    Deallocate(dmy(k)%obj3%ll3)

    if(.NOT. Allocated(dmy2(k)%obj1%ii1)) print *,101
    if(.NOT. Allocated(dmy2(k)%obj2%ii2)) print *,101
    if(.NOT. Allocated(dmy2(k)%obj3%ii3)) print *,101
    if(.NOT. Allocated(dmy2(k)%obj1%rr1)) print *,102
    if(.NOT. Allocated(dmy2(k)%obj2%rr2)) print *,102
    if(.NOT. Allocated(dmy2(k)%obj3%rr3)) print *,102
    if(.NOT. Allocated(dmy2(k)%obj1%ch1)) print *,103
    if(.NOT. Allocated(dmy2(k)%obj2%ch2)) print *,103
    if(.NOT. Allocated(dmy2(k)%obj3%ch3)) print *,103
    if(.NOT. Allocated(dmy2(k)%obj1%cmp1)) print *,104
    if(.NOT. Allocated(dmy2(k)%obj2%cmp2)) print *,104
    if(.NOT. Allocated(dmy2(k)%obj3%cmp3)) print *,104
    if(.NOT. Allocated(dmy2(k)%obj1%ll1)) print *,105
    if(.NOT. Allocated(dmy2(k)%obj2%ll2)) print *,105
    if(.NOT. Allocated(dmy2(k)%obj3%ll3)) print *,105
    Deallocate(dmy2(k)%obj1%ii1)
    Deallocate(dmy2(k)%obj2%ii2)
    Deallocate(dmy2(k)%obj3%ii3)
    Deallocate(dmy2(k)%obj1%rr1)
    Deallocate(dmy2(k)%obj2%rr2)
    Deallocate(dmy2(k)%obj3%rr3)
    Deallocate(dmy2(k)%obj1%ch1)
    Deallocate(dmy2(k)%obj2%ch2)
    Deallocate(dmy2(k)%obj3%ch3)
    Deallocate(dmy2(k)%obj1%cmp1)
    Deallocate(dmy2(k)%obj2%cmp2)
    Deallocate(dmy2(k)%obj3%cmp3)
    Deallocate(dmy2(k)%obj1%ll1)
    Deallocate(dmy2(k)%obj2%ll2)
    Deallocate(dmy2(k)%obj3%ll3)
end do
end subroutine
end module

use m1
implicit none
do k = 1,2
 do j = 1,2
Allocate(obj0(k,j)%obj1%ii1,obj0(k,j)%obj1%rr1,obj0(k,j)%obj1%cmp1,obj0(k,j)%obj1%ll1)
Allocate(obj0(k,j)%obj2%ii2,obj0(k,j)%obj2%rr2,obj0(k,j)%obj2%cmp2,obj0(k,j)%obj2%ll2)
Allocate(obj0(k,j)%obj3%ii3,obj0(k,j)%obj3%rr3,obj0(k,j)%obj3%cmp3,obj0(k,j)%obj3%ll3)
Allocate(character(len=2)::obj0(k,j)%obj1%ch1,obj0(k,j)%obj2%ch2,obj0(k,j)%obj3%ch3)
obj0(k,j)%obj1%ii1 = 20
obj0(k,j)%obj1%rr1 = 20.0
obj0(k,j)%obj1%ch1 = '20'
obj0(k,j)%obj1%cmp1 = (20.0,20.0)
obj0(k,j)%obj1%ll1 = .TRUE.

obj0(k,j)%obj2%ii2 = 20
obj0(k,j)%obj2%rr2 = 20.0
obj0(k,j)%obj2%ch2 = '20'
obj0(k,j)%obj2%cmp2 = (20.0,20.0)
obj0(k,j)%obj2%ll2 = .TRUE.

obj0(k,j)%obj3%ii3 = 20
obj0(k,j)%obj3%rr3 = 20.0
obj0(k,j)%obj3%ch3 = '20'
obj0(k,j)%obj3%cmp3 = (20.0,20.0)
obj0(k,j)%obj3%ll3 = .TRUE.
  end do
end do

call s1((obj0(:,2)),(obj0(2,:)))

do k=1,2
 do j = 1,2
if((.NOT. Allocated(obj0(k,j)%obj1%ii1)) .or. (.NOT. Allocated(obj0(k,j)%obj1%rr1))  .or. (.NOT. Allocated(obj0(k,j)%obj1%ch1)) .or. (.NOT. Allocated(obj0(k,j)%obj1%cmp1) ) .or. (.NOT. Allocated(obj0(k,j)%obj1%ll1))) then
print *,201
else
 if(obj0(k,j)%obj1%ii1 .ne. 20) print *,202, obj0(k,j)%obj1%ii1
 if(obj0(k,j)%obj1%rr1.ne. 20.0) print *,203, obj0(k,j)%obj1%rr1
 if(obj0(k,j)%obj1%ch1.ne. '20') print *,204, obj0(k,j)%obj1%ch1
 if(obj0(k,j)%obj1%cmp1 .ne. (20.0,20.0)) print *,205, obj0(k,j)%obj1%cmp1
 if(obj0(k,j)%obj1%ll1 .neqv. .TRUE.) print *,206, obj0(k,j)%obj1%ll1
end if

if((.NOT. Allocated(obj0(k,j)%obj2%ii2)) .or. (.NOT. Allocated(obj0(k,j)%obj2%rr2))  .or. (.NOT. Allocated(obj0(k,j)%obj2%ch2)) .or. (.NOT. Allocated(obj0(k,j)%obj2%cmp2) ) .or. (.NOT. Allocated(obj0(k,j)%obj2%ll2))) then
print *,301
else
 if(obj0(k,j)%obj2%ii2 .ne. 20) print *,302, obj0(k,j)%obj2%ii2
 if(obj0(k,j)%obj2%rr2 .ne. 20.0) print *,303, obj0(k,j)%obj2%rr2
 if(obj0(k,j)%obj2%ch2 .ne. '20') print *,304, obj0(k,j)%obj2%ch2
 if(obj0(k,j)%obj2%cmp2 .ne. (20.0,20.0)) print *,305, obj0(k,j)%obj2%cmp2
 if(obj0(k,j)%obj2%ll2 .neqv. .TRUE.) print *,306, obj0(k,j)%obj2%ll2
end if

if((.NOT. Allocated(obj0(k,j)%obj3%ii3)) .or. (.NOT. Allocated(obj0(k,j)%obj3%rr3))  .or. (.NOT. Allocated(obj0(k,j)%obj3%ch3)) .or. (.NOT. Allocated(obj0(k,j)%obj3%cmp3) ) .or. (.NOT. Allocated(obj0(k,j)%obj3%ll3))) then
print *,401
else
 if(obj0(k,j)%obj3%ii3 .ne. 20) print *,402, obj0(k,j)%obj3%ii3
 if(obj0(k,j)%obj3%rr3 .ne. 20.0) print *,403, obj0(k,j)%obj3%rr3
 if(obj0(k,j)%obj3%ch3 .ne. '20') print *,404, obj0(k,j)%obj3%ch3
 if(obj0(k,j)%obj3%cmp3 .ne. (20.0,20.0)) print *,405, obj0(k,j)%obj3%cmp3
 if(obj0(k,j)%obj3%ll3 .neqv. .TRUE.) print *,406, obj0(k,j)%obj3%ll3
end if
  end do
end do

print *,"Pass"
end