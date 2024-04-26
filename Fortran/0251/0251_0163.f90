module m1 
contains
subroutine s1(n)
implicit none
integer,intent(inout) :: n
character(n+1) :: jj(n) 
n=n+1
if(size(jj)/=22) print*,101
if(len(jj)/=23) print*,201
block
character(n+1)  :: ii(n)
n=n+1
if(size(ii)/=23) print*,102
if(len(ii)/=24) print*,202
block
character(n+1) :: kk(n)
if(size(kk)/=24) print*,103
if(len(kk)/=25) print*,203
end block
print*,'pass'
end block
 
end subroutine
end module

use m1
implicit none
integer :: act=22
call s1(act)

end
