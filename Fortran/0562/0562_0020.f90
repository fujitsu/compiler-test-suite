module m1
type ty
integer::ii
end type
end module

subroutine s1
use m1
type(ty),target::tar(9)
tar = ty(0)
tar(1)%ii=1
tar(3)%ii=3
tar(5)%ii=5
tar(7)%ii=7
call s2(tar(3:6))
print*,"Pass"
contains
subroutine s2(ptr)
type(ty),pointer,intent(in)::ptr(:)
if(.NOT.associated(ptr))print*,"error",105
if (size(ptr)/=4)print*,105
if (ubound(ptr,1)/=4)print*,106
if (ptr(1)%ii/=3)print*,101
if (ptr(2)%ii/=0)print*,102
if (ptr(3)%ii/=5)print*,103
if (ptr(4)%ii/=0)print*,104
end subroutine
end subroutine

call s1
end
