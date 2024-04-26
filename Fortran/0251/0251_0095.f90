implicit none
type ty
integer :: ii
end type

type,extends(ty) :: ty2
integer :: ii2
end type

class(ty),pointer :: obj_parent
type(ty2),target :: tgt
obj_parent=>tgt

block
type,extends(ty) :: ty2
integer :: ii2
end type

type(ty2),pointer :: obj1
type(ty2),target :: tgt
obj1=>tgt
if(same_type_As(obj1,obj_parent).eqv. .false.) then
 print*,'pass1/2'
else
 print*,101
endif
block
type,extends(ty) :: ty2
integer :: ii2
end type

type(ty2),pointer :: obj2
type(ty2),target :: tgt
obj2=>tgt
if((same_type_As(obj2,obj1).eqv. .false.) .and. (same_type_As(obj2,obj_parent).eqv. .false.)) then
 print*,'pass2/2'
else
 print*,102,same_type_As(obj2,obj1),same_type_As(obj2,obj_parent)
endif
end block
end block
end

