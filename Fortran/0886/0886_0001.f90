integer :: arr(8,8)
call ss(arr(:,[1,2,3,4,5]))

contains
subroutine ss(dd)
 integer :: dd(:,:)
 contiguous :: dd
 print*,dd
end subroutine
end
