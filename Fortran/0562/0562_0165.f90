module m1
interface
subroutine s1(dmy)
REAL,pointer,intent(in)::dmy(:)
end subroutine
end interface
end module

use m1
real,allocatable,target::tar(:)
allocate(tar(5))
tar=0
call s1(tar(2:4))
if (tar(2)/=0)print*,106
if (tar(4)/=8)print*,107
print*,"Pass"
end

subroutine s1(ptr)
real,pointer,intent(in)::ptr(:)
if (.NOT.associated(ptr))print*,"error",101
if (size(ptr) /= 3)print*,102
if (lbound(ptr,1) /= 1)print*,103
if (ubound(ptr,1) /= 3)print*,104
if (ptr(2)/=0)print*,105
ptr(3)=8
end subroutine




