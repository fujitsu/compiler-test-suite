integer :: ii(5) = 2

call ss(ii)

contains
subroutine ss(dd)
integer,contiguous :: dd(:)
if(all(dd == 2)) print*,'pass'
end subroutine
end
