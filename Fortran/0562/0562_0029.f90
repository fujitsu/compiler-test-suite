module m1
type ty1
integer::ii
end type
end module

program main
use m1
type,extends(ty1)::ty2
integer::jj
end type
type(ty2),target::tar1
tar1%ii=10
call s1(tar1)
print*,"Pass"
contains
subroutine s1(ptr)
type(ty2),pointer,intent(in)::ptr
if (.NOT.associated(ptr))print*,"error",101
if (ptr%ii /= 10)print*,"error",102
end subroutine
end
