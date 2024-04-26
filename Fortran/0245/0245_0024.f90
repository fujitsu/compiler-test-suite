integer,target :: arr(8,8),arr2(8,8,8)
 integer :: dd(:,:)
 contiguous :: dd
 pointer :: dd

dd => arr(1:8:1,3:)
dd=2
if(all(dd/=2))print*,101
dd => arr(1:8:1,:2)
dd=2
if(all(dd/=2))print*,102
dd => arr(1:8:1,1:2)
dd=2
if(all(dd/=2))print*,103
dd => arr2(::1,1:2,2)

dd=2
if(all(dd/=2))print*,104
print*,'pass'
end
