module mod1
type ty
integer::ii
end type
interface
subroutine sub(d1)
import ty
type(ty),pointer,intent(in)::d1
end subroutine
end interface
end module

program main
use mod1
integer::ii
ii=fun()
if(ii==10)print*,"Pass"
contains
integer function fun()
type(ty),target::tar
tar%ii = 10
call sub(tar)
fun=10
end function
end

subroutine sub(ptr)
use mod1
type(ty),pointer,intent(in)::ptr
if(.NOT.associated(ptr))print*,"error",101
if (ptr%ii /= 10)print*,"error",102
end subroutine


