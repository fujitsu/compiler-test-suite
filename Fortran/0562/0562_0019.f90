module mod1
type ty
integer::ii
end type
end module

program main
use mod1
type(ty),target::tar(7)
tar(1)%ii=10
tar(3)%ii=20
tar(5)%ii=30
call sub(tar(1:6:2))
print*,"Pass"
contains
subroutine sub(ptr)
type(ty),pointer,intent(in)::ptr(:)
if(.NOT.associated(ptr))print*,"error",104
if (size(ptr)/=3)print*,104
if (ubound(ptr,1)/=3)print*,105
if (ptr(1)%ii /= 10)print*,101
if (ptr(2)%ii /= 20)print*,102
if (ptr(3)%ii /= 30)print*,103
end subroutine
end
