module m1
type ty1
character(LEN=20)::ch
end type
type,extends(ty1)::ty2
logical::ptr
end type
end module

program main
use m1
type(ty2),target,allocatable::tar(:)
allocate(tar(2:5))
call s2(tar(:))
if (.NOT.tar(3)%ptr)print*,"error",104
if (tar(4)%ch /= "FORTRAN")print*,105
print*,"Pass"
contains
subroutine s2(d1)
type(ty2),pointer,intent(in)::d1(:)
if (.NOT.associated(d1))print*,"error",101
if (size(d1) /= 4)print*,102
if (ubound(d1,1)/=4)print*,103
d1(2)%ptr = .TRUE.
d1(3)%ch = "FORTRAN"
end subroutine
end

