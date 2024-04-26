implicit none
type ty
integer :: ii=1
end type

type,extends(ty) :: ty2
integer :: ii2=2
end type

type(ty2),pointer:: obj_parent
type(ty2),target:: tgt
obj_parent=>tgt

block
type,extends(ty) :: ty2
integer :: ii2=3
end type

type(ty2),pointer:: obj
type(ty2),target:: tgt
obj=>tgt

block
type,extends(ty) :: ty2
integer :: ii2=4
end type

type(ty2),pointer:: obj
type(ty2),target:: tgt
obj=>tgt

if(same_type_As(obj,obj_parent).neqv. .false.) then
 print*,102
else
 print*,'pass1/2'
endif
end block

if(same_type_As(obj,obj_parent).eqv. .false.) then
 print*,'pass2/2'
else
 print*,101
endif
end block
end

