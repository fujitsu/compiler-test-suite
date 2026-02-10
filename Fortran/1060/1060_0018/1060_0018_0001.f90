subroutine sub(i)
implicit none
integer i
real,pointer,dimension(:)::ptr
i = i + 1
return 
entry ent_pointer(ptr)
ptr = ptr + 1
end subroutine sub
