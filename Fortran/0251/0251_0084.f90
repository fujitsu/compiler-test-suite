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
type,extends(ty) :: ty3
integer :: ii2
end type

allocate(ty3::obj)
if(same_type_As(obj,obj_parent).eqv. .false.) then
 print*,'pass'
else
 print*,101
endif
end block
end

