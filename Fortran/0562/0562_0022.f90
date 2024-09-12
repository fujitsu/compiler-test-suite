module m1
type ty
integer::ii
end type
end module

module m2
interface
integer function fun(d1)
use m1
type(ty),pointer,intent(in)::d1(:)
end function
end interface
end module

program main
call sub
contains
subroutine sub
use m1
use m2
type(ty),target::tar(10)
ii=fun(tar(2:4))
if (ii==10)print*,"Pass"
end subroutine
end

integer function fun(dmy)
use m1
type(ty),pointer,intent(in)::dmy(:)
if(.NOT.associated(dmy))print*,"error",101
if (size(dmy)/=3 .or. ubound(dmy,1)/=3)print*,102
fun=10
end function
