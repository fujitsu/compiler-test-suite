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

Allocate(objMain%obj0(1)%obj1(1))
Allocate(objMain%obj0(1)%obj1(1)%ii1(2,2))

call s1((objMain%obj0))


print *,"pass"
contains
subroutine s1(dmy)
    type(ty0) :: dmy(2)
    integer :: k,m
end subroutine
end

