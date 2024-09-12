
implicit none
integer :: k,m
type ty1
integer,allocatable :: ii1(:,:)
end type


type :: ty0
type(ty1),allocatable :: obj1(:)
integer,allocatable :: jj1(:,:)
end type

type :: ty
type(ty0),allocatable ::obj0(:)
end type

type(ty) :: objMain

Allocate(objMain%obj0(1))

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

