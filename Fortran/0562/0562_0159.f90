program main
real,target::tar(8)
tar = 0
call sub(tar(2:7:2))
if (tar(1) /= 0)print*,104
if (tar(4) /= 4.50)print*,105
if (tar(6) /= 6.60)print*,106
print*,"Pass" 
contains
subroutine sub(ptr)
real,pointer,intent(in)::ptr(:)
if(.NOT.associated(ptr))print*,"error",101
if (size(ptr) /= 3)print*,"error",102
if ((LBOUND(ptr,1)/=1).and.(UBOUND(ptr,1)/=3))print*,103
ptr = (/2.20,4.50,6.60/)
end subroutine
end
