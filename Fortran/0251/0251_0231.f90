type ty
integer::ii=1
end type
call sub
contains
subroutine sub
block
type ty
integer::ii=2
end type
type(ty)::obj1
obj1%ii=3
block
type(ty)::obj1
obj1%ii=4
end block
if((obj1%ii)==3)print*,"pass"
end block
end subroutine
end
