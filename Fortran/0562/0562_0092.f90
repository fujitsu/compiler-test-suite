module m1
type ty1
integer,Pointer::ptr
end type

type,extends(ty1)::ty2
integer::alc
end type
end module

use m1
interface
integer function fun(d1)
import ty2
class(ty2),pointer,intent(in)::d1
end function
end interface
integer::ii
class(ty2),allocatable,target::tar
allocate(tar)
ii = fun(tar)
if (ii==10)print*,"Pass"
if (.NOT.associated(tar%ptr))print*,102
if (tar%ptr/=10)print*,103
end

integer function fun(dmy)
use m1
class(ty2),pointer,intent(in)::dmy
integer,target::t1=10
if (.NOT.associated(dmy))print*,"Error",101
dmy%ptr =>t1
fun=t1
end function

