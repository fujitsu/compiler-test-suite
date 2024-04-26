interface
subroutine ss(dd)
 integer :: dd(:,:)
 contiguous :: dd
 pointer :: dd
end subroutine
end interface

integer,pointer,contiguous :: ptr(:,:)
integer,target :: arr(8,8)

ptr=>arr
call ss(ptr)

print*,'pass'
end

subroutine ss(dd)
 integer :: dd(:,:)
 contiguous :: dd
 pointer :: dd
 dd=2
 if(all(dd/=2))print*,101
end subroutine
