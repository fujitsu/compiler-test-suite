module m1
type ty
integer::ii
end type
type(ty),protected,target::tar(2:8)
end module

program main
use m1
interface
integer function fun(d1)
import ty
type(ty),pointer,intent(in)::d1(:)
end function
end interface
integer::ii
ii = fun(tar(2:7:3))
if(ii==10)print*,"Pass"
end

integer function fun(ptr)
use m1
type(ty),pointer,intent(in)::ptr(:)
if (.not.associated(ptr))print*,"error",101
if (size(ptr)/=2)print*,102
if(lbound(ptr,1)/=1 .or.ubound(ptr,1)/=2)print*,103
fun=10
end function
