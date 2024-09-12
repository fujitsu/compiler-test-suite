implicit none
integer :: k,m
type ty1
integer,allocatable :: ii1(:,:)
character(len=:),allocatable :: ch1(:,:)
complex,allocatable :: cmp1(:,:)
logical,allocatable :: ll1(:,:)
end type

type ty2
integer,allocatable :: ii2(:,:)
character(len=:),allocatable :: ch2(:,:)
complex,allocatable :: cmp2(:,:)
logical,allocatable :: ll2(:,:)
end type

type :: ty0
type(ty1),allocatable :: obj1(:)
type(ty2),allocatable :: obj2(:)
end type

type,extends(ty0) :: ty
type(ty0),pointer :: obj0P(:)
type(ty0),allocatable ::obj0(:)
end type

type(ty) :: objMain

Allocate(objMain%obj0(3))

do k = 1,3
Allocate(objMain%obj0(k)%obj1(2),objMain%obj0(k)%obj2(2))
 do m=1,2
Allocate(objMain%obj0(k)%obj1(m)%ii1(2,2),objMain%obj0(k)%obj1(m)%cmp1(2,2),objMain%obj0(k)%obj1(m)%ll1(2,2))
Allocate(objMain%obj0(k)%obj2(m)%ii2(2,2),objMain%obj0(k)%obj2(m)%cmp2(2,2),objMain%obj0(k)%obj2(m)%ll2(2,2))
Allocate(character(len=2)::objMain%obj0(k)%obj1(m)%ch1(2,2),objMain%obj0(k)%obj2(m)%ch2(2,2))
objMain%obj0(k)%obj1(m)%ii1 = 20
objMain%obj0(k)%obj1(m)%ch1 = '20'
objMain%obj0(k)%obj1(m)%cmp1 = (20.0,20.0)
objMain%obj0(k)%obj1(m)%ll1 = .TRUE.

objMain%obj0(k)%obj2(m)%ii2 = 20
objMain%obj0(k)%obj2(m)%ch2 = '20'
objMain%obj0(k)%obj2(m)%cmp2 = (20.0,20.0)
objMain%obj0(k)%obj2(m)%ll2 = .TRUE.

 end do
end do

call s1(objMain%obj0(1:3:2))

do k=1,2
  do m=1,2
if((.NOT. Allocated(objMain%obj0(k)%obj1(m)%ii1))  .or. (.NOT. Allocated(objMain%obj0(k)%obj1(m)%ch1)) .or. (.NOT. Allocated(objMain%obj0(k)%obj1(m)%cmp1) ) .or. (.NOT. Allocated(objMain%obj0(k)%obj1(m)%ll1))) then
print *,201
else
 if(ANY(objMain%obj0(k)%obj1(m)%ii1 .ne. 20)) print *,202, objMain%obj0(k)%obj1(m)%ii1
 if(ANY(objMain%obj0(k)%obj1(m)%ch1.ne. '20')) print *,204, objMain%obj0(k)%obj1(m)%ch1
 if(ANY(objMain%obj0(k)%obj1(m)%cmp1 .ne. (20.0,20.0))) print *,205, objMain%obj0(k)%obj1(m)%cmp1
 if(ANY(objMain%obj0(k)%obj1(m)%ll1 .neqv. .TRUE.)) print *,206, objMain%obj0(k)%obj1(m)%ll1
end if

if((.NOT. Allocated(objMain%obj0(k)%obj2(m)%ii2)) .or. (.NOT. Allocated(objMain%obj0(k)%obj2(m)%ch2)) .or. (.NOT. Allocated(objMain%obj0(k)%obj2(m)%cmp2) ) .or. (.NOT. Allocated(objMain%obj0(k)%obj2(m)%ll2))) then
print *,301
else
 if(ANY(objMain%obj0(k)%obj2(m)%ii2 .ne. 20)) print *,302, objMain%obj0(k)%obj2(m)%ii2
 if(ANY(objMain%obj0(k)%obj2(m)%ch2 .ne. '20')) print *,304, objMain%obj0(k)%obj2(m)%ch2
 if(ANY(objMain%obj0(k)%obj2(m)%cmp2 .ne. (20.0,20.0))) print *,305, objMain%obj0(k)%obj2(m)%cmp2
 if(ANY(objMain%obj0(k)%obj2(m)%ll2 .neqv. .TRUE.)) print *,306, objMain%obj0(k)%obj2(m)%ll2
end if

  end do
end do

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty0),value :: dmy(2)
    integer :: k,m
do k=1,2
  do m=1,2
    dmy(k)%obj1(m)%ii1 = 40
    dmy(k)%obj2(m)%ii2 = 40
    dmy(k)%obj1(m)%ch1 = '40'
    dmy(k)%obj2(m)%ch2 = '40'
    dmy(k)%obj1(m)%cmp1 = (40.0,40.0)
    dmy(k)%obj2(m)%cmp2 = (40.0,40.0)
    dmy(k)%obj1(m)%ll1 = .FALSE.
    dmy(k)%obj2(m)%ll2 = .FALSE.
    if(.NOT. Allocated(dmy(k)%obj1(m)%ii1)) print *,101
    if(.NOT. Allocated(dmy(k)%obj2(m)%ii2)) print *,101
    if(.NOT. Allocated(dmy(k)%obj1(m)%ch1)) print *,103
    if(.NOT. Allocated(dmy(k)%obj2(m)%ch2)) print *,103
    if(.NOT. Allocated(dmy(k)%obj1(m)%cmp1)) print *,104
    if(.NOT. Allocated(dmy(k)%obj2(m)%cmp2)) print *,104
    if(.NOT. Allocated(dmy(k)%obj1(m)%ll1)) print *,105
    if(.NOT. Allocated(dmy(k)%obj2(m)%ll2)) print *,105
    Deallocate(dmy(k)%obj1(m)%ii1)
    Deallocate(dmy(k)%obj2(m)%ii2)
    Deallocate(dmy(k)%obj1(m)%ch1)
    Deallocate(dmy(k)%obj2(m)%ch2)
    Deallocate(dmy(k)%obj1(m)%cmp1)
    Deallocate(dmy(k)%obj2(m)%cmp2)
    Deallocate(dmy(k)%obj1(m)%ll1)
    Deallocate(dmy(k)%obj2(m)%ll2)
  end do
end do
end subroutine
end
