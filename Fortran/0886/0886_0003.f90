integer,pointer :: arr(:,:,:)
allocate(arr(8,8,8))
call ss(arr)

contains
subroutine ss(dd)
 integer :: dd(:,:,:)
 contiguous :: dd
 pointer :: dd
 print*,dd
end subroutine
end
