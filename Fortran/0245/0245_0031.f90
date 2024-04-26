character(len=4),pointer,contiguous :: act(:,:)
allocate(act(2,2))
act = 'pass'

call sub(act,4)

contains
subroutine sub(ptr,n)
   character(len=n) , pointer, contiguous :: ptr(:,:)
   print*,ptr
end subroutine
end
