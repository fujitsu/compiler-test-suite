integer :: arr(8,8),arr2(8,8,8)
call ss(arr(1:8:1,3:))
call ss(arr(1:8:1,:2))
call ss(arr(1:8:1,1:2))
call ss(arr2(::1,1:2,2))

print*,'pass'
contains
subroutine ss(dd)
 integer :: dd(:,:)
 contiguous :: dd
 dd=2
 if(all(dd/=2))print*,101
end subroutine
end
