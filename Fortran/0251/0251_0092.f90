implicit none
type ty
integer :: ii
end type

type,extends(ty) :: ty2
integer :: ii2
end type

class(ty),allocatable :: obj
type(ty2),allocatable :: obj_parent
allocate(ty2::obj_parent)

block
type,extends(ty) :: ty2
integer :: ii2
end type

allocate(ty2::obj)
if(same_type_As(obj,obj_parent).eqv. .false.) then
 print*,'pass1/2'
 deallocate(obj)
else
 print*,101
endif
block
type,extends(ty) :: ty2
integer :: ii2
end type

allocate(ty2::obj)
if(same_type_As(obj,obj_parent).eqv. .false.) then
 print*,'pass2/2'
else
 print*,102
endif
end block
end block
end

