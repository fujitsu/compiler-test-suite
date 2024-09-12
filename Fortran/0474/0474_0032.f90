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

type :: ty
type(ty0),pointer :: obj0P(:)
type(ty0),allocatable ::obj0(:)
end type

type(ty) :: objMain

Allocate(objMain%obj0(2))

do k = 1,2
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

call s1((objMain%obj0))


print *,"pass"
contains
subroutine s1(dmy)
    type(ty0) :: dmy(2)
    integer :: k,m
end subroutine
end

