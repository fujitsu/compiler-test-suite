implicit none
type ty
integer :: ii
end type

type,extends(ty) :: ty2
integer :: ii2
end type

class(ty),allocatable :: obj_parent
allocate(ty2::obj_parent)

block
type,extends(ty) :: ty2
integer :: ii2
end type

type(ty2),allocatable :: obj1
allocate(ty2::obj1)
if(same_type_As(obj1,obj_parent).eqv. .false.) then
 print*,'pass1/2'
else
 print*,101
endif
block
type,extends(ty) :: ty2
integer :: ii2
end type

type(ty2),allocatable :: obj2
allocate(ty2::obj2)
if((same_type_As(obj2,obj1).eqv. .false.) .and. (same_type_As(obj2,obj_parent).eqv. .false.)) then
 print*,'pass2/2'
else
 print*,102,same_type_As(obj2,obj1),same_type_As(obj2,obj_parent)
endif
end block
end block
end

