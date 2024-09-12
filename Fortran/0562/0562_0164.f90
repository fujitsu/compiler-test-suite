subroutine s1
integer,target,allocatable::tar(:)
allocate(tar(4))
tar=0
call s2(tar(3))
if (tar(1)/=0)print*,103
if (tar(3)/=3)print*,104
print*,"Pass"
contains
subroutine s2(ptr)
integer,pointer,intent(in)::ptr
if (.NOT.associated(ptr))print*,"error",101
if (ptr/=0)print*,102
ptr=3
end subroutine
end subroutine

call s1
end
