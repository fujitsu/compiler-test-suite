module mod1
type ty
integer::ii
end type
contains
integer function fun(ptr)
type(ty),pointer,intent(in)::ptr(:)
if(.NOT.associated(ptr))print*,"error",101
if (size(ptr)/=3 .or. ubound(ptr,1)/=3)print*,102
fun=10
end function
end module

program main
use mod1
call sub
contains
subroutine sub
type(ty),target::tar(8)
integer::ii
ii=fun(tar(2:6:2))
if (ii==10)print*,"Pass"
end subroutine
end
