module m1
interface
subroutine s2(ptr)
real,pointer,intent(in)::ptr(:,:)
end subroutine
end interface
end module

use m1
call s1
contains
subroutine s1
real,target::arr(4,4)
arr=0
call s2(arr(:,:))
if (arr(1,1) /= 0)print*,104
if (arr(2,1) /= 0)print*,105
if (arr(3,1) /= 2.50)print*,106
if (arr(4,1) /= 4.50)print*,107
print*,"Pass" 
end subroutine
end 

subroutine s2(ptr)
real,pointer,intent(in)::ptr(:,:)
if(.NOT.associated(ptr))print*,"error"
if (size(ptr) /= 16)print*,101
if (ubound(ptr,1)/=4)print*,102
if (ubound(ptr,2)/=4)print*,103
ptr(3,1)=2.50
ptr(4,1)=4.50
end subroutine
