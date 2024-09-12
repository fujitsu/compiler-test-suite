subroutine s1
Logical,target::tar(6)
call sub
contains
subroutine sub
Logical::ii
ii=fun(tar)
if (.NOT.ii)print*,101
if (tar(2))print*,102
if (.NOT.tar(5))print*,103
print*,"Pass" 
end subroutine
logical function fun(ptr)
logical,pointer,intent(in)::ptr(:)
if(.NOT.associated(ptr))print*,"error"
if (size(ptr) /=6)print*,104
if (ubound(ptr,1) /=6)print*,105
ptr = (/.True.,.False.,.True.,.False.,.True.,.False./)
fun=ptr(3)
end function
end subroutine

call s1
end

