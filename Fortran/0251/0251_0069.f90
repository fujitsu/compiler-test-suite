subroutine sub()
implicit none
type ty
integer :: ii
end type
type(ty) :: obj_parent

block
type ty
integer :: ii
end type
type(ty) :: obj
if(same_type_As(obj,obj_parent).eqv. .false.) print*,'pass'
end block
end subroutine

call sub()
end

