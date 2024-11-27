module mod1
contains
subroutine ss(d1,dd)
 integer ::d1
 integer,contiguous :: dd(:)
 print*,dd,d1
end subroutine
end module

use mod1
integer :: arr(8)
call ss(3,arr(::2))
end
