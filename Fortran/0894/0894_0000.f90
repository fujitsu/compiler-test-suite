subroutine sub1
integer,contiguous,target::tar(4)
call sub2(tar)
contains
subroutine sub2(ptr)
integer,pointer,contiguous,intent(in)::ptr(:)
end subroutine
end subroutine

call sub1
end
