use mod1
integer :: arr(8,8)
call ss(arr(:,[1,2,3,4,5]))
end

module mod1
contains
subroutine ss(dd)
 integer :: dd(:,:)
 contiguous :: dd
 print*,dd
end subroutine
end module
