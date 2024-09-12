module m1
contains
subroutine s2(ptr)
integer,pointer,intent(in)::ptr(:)
if(.NOT.associated(ptr))print*,"error"
if (size(ptr) /=4)print*,103
if (UBOUND(ptr,1) /=4)print*,104
ptr(2:3)=(/2,3/)
end subroutine
end module

use m1
call s1
contains
subroutine s1
integer,target::arr(8)
call s2(arr(1:7:2))
if (arr(3) /= 2)print*,101
if (arr(5) /= 3)print*,102
print*,"Pass" 
end subroutine
end 
