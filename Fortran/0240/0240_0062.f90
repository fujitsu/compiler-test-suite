call test()
print *,'pass'
end
subroutine test()
integer,pointer,dimension(:,:)::c
contiguous::c
end
