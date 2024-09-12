module mod1
type ty
integer::ii
end type
end module

program main
use mod1
interface
integer function fun(d1)
import ty
type(ty),pointer,intent(in)::d1
end function
end interface
type(ty),target::tar
tar%ii=20
call sub(tar)
contains
subroutine sub(dmy)
type(ty),target::dmy
integer::ii
ii=fun(dmy)
if(ii==10)print*,"Pass"
end subroutine 
end

integer function fun(ptr)
use mod1
type(ty),pointer,intent(in)::ptr
if(.NOT.associated(ptr))print*,"error",101
if(ptr%ii/=20)print*,"error",102
fun=10
end function

