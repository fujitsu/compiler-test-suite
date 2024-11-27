module m1
integer,protected,target::tar=10
end module

use m1
call sub(tar)
if (tar==9)print*,"Pass"
contains
subroutine sub(ptr)
integer,pointer,intent(in)::ptr
if (.not.associated(ptr))print*,"error",101
if (ptr /=10)print*,102
ptr=9
end subroutine
end
