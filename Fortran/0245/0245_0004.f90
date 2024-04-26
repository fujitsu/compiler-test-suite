character(len=3),pointer,contiguous :: ptr(:)
character(len=3),target :: arr(8)='abc'

ptr => arr

call ss(ptr)

contains
subroutine ss(dd)
 character(len=3),contiguous,pointer :: dd(:)
 if(all(dd=='abc')) print*,'pass'
end subroutine
end
