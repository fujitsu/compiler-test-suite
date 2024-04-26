implicit none
type ty
integer :: ii
end type

type,extends(ty) :: ty2
integer :: ii2
end type

type(ty2),allocatable :: obj_parent
allocate(ty2::obj_parent)

block
type,extends(ty) :: ty2
integer :: ii2
end type

type(ty2),allocatable :: obj
allocate(ty2::obj)

block
type,extends(ty) :: ty2
integer :: ii2
end type

type(ty2),allocatable :: obj
allocate(ty2::obj)

if(extends_type_of(obj,obj_parent).neqv. .false.) then
 print*,102
else
 print*,'pass1/2'
endif
end block

if(extends_type_of(obj,obj_parent).eqv. .false.) then
 print*,'pass2/2'
else
 print*,101
endif
end block
end

