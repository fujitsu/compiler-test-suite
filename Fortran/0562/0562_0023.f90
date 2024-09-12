module m1
type ty
integer::ii
end type
contains
integer function fun(dmy)
type(ty),pointer,intent(in)::dmy
if(.NOT.associated(dmy))print*,"error",101
dmy%ii=10
fun=dmy%ii
end function
end module

program main
use m1
interface
subroutine s1
end subroutine
end interface

call s1
end

subroutine s1
use m1
type(ty),target::tar(4)
integer::ii
ii=fun(tar(3))
if (ii /= 10)print*,"error",102
print*,"Pass"
end subroutine
