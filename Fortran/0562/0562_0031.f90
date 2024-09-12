module m1
type ty1
integer,pointer::ptr
end type
type ty2
type(ty1)::obj1
end type
end module

program main
use m1
interface
integer function fun(d1)
import ty2
type(ty2),pointer,intent(in)::d1
end function
end interface
type(ty2),target::tar1
integer::ii
ii = fun(tar1)
if (tar1%obj1%ptr /= 2)print*,"error",102
if (.NOT.associated(tar1%obj1%ptr))print*,"error",103
if (ii==10)print*,"Pass"
end
integer function fun(ptr)
use m1
type(ty2),pointer,intent(in)::ptr
integer,target::tar2=2
if (.NOT.associated(ptr))print*,"error",101
ptr%obj1%ptr =>tar2
fun=10
end function
