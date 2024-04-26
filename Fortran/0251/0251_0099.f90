implicit none
type ty
integer :: ii
end type

type,extends(ty) :: ty2
integer :: ii2
end type

class(ty),allocatable :: obj_parent,obj
allocate(ty2::obj_parent)

block
type,extends(ty) :: ty2
integer :: ii2
end type

allocate(ty2::obj)
if(extends_type_of(obj,obj_parent).eqv. .false.) then
 print*,'pass'
else
 print*,101
endif

block
type,extends(ty) :: ty2
integer :: ii2
end type

class(ty),pointer :: obj2

allocate(ty2::obj2)
if(extends_type_of(obj2,obj_parent).eqv. .false.) then
 print*,'pass'
else
 print*,101
endif
end block
end block
end

