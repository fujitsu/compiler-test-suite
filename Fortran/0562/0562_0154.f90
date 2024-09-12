program main
integer,target::tar=2
call sub(tar)
print*,"Pass"
contains
subroutine sub(ptr)
integer,pointer,intent(in)::ptr
if(.NOT.associated(ptr))print*,"error",101
if(ptr/=2)print*,"error",102
end subroutine
end
