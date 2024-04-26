type tt
 character(len=:),pointer,contiguous :: act(:)
end type

type(tt) :: obj
allocate(character(len=4)::obj%act(3))
obj%act = 'pass'

call sub(obj%act)

contains
subroutine sub(ptr)
   character(len=:) , pointer, contiguous :: ptr(:)
   print*,ptr
end subroutine
end
