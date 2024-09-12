type ty
integer::ii
end type
type(ty),target::tar
tar%ii=20
call sub(tar)
print*,"Pass"
contains
subroutine sub(ptr)
type(ty),pointer,intent(in)::ptr
if(.NOT.associated(ptr))print*,"error",101
if(ptr%ii/=20)print*,"error",102
end subroutine
end
