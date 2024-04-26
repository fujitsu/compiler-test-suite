character(len=:),pointer,contiguous :: act(:)
allocate(character(len=4)::act(3))
act = 'pass'

call sub(act)

contains
subroutine sub(ptr)
   character(len=:) , pointer, contiguous :: ptr(:)
   print*,ptr
end subroutine
end
