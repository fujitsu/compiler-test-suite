subroutine sub(i)
implicit none
integer i
real,pointer,optional,dimension(:)::ptr
i = i + 1
return 
entry ent_optional_pointer(ptr)
if (present(ptr)) then
  ptr = ptr + 1
endif
end subroutine sub
