integer :: arr(8)
call ss(arr(::2))

contains
subroutine ss(dd)
 integer,contiguous :: dd(:)
 print*,dd
end subroutine
end
