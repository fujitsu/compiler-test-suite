program main
integer,target::tar(4)
tar = 0
call sub(tar)
if (tar(3) /= 10)print*,"error",104
if (tar(1) /= 0)print*,"error",105
print*,"Pass"
contains
subroutine sub(ptr)
integer,pointer,intent(in)::ptr(:)
if(.NOT.associated(ptr))print*,"error",101
if(size(ptr) /= 4)print*,102
if (ubound(ptr,1) /=4)print*,103
ptr(3)=10
end subroutine
end
