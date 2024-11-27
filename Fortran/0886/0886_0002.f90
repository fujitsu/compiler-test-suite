integer,pointer :: arr(:)
allocate(arr(8))
call ss(arr)

contains
subroutine ss(dd)
 integer,contiguous,pointer :: dd(:)
 print*,dd
end subroutine
end
