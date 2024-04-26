module m1
 integer :: dd(:,:)
 contiguous :: dd
 pointer :: dd
end module

use m1
integer,pointer,contiguous :: ptr(:,:)
integer,target :: arr(8,8)

ptr=>arr
dd=>ptr

 dd=2
 if(all(dd/=2))print*,101
print*,'pass'
end
