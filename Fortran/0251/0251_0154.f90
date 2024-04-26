implicit none
integer :: act=22
call s1(act)
 
contains
subroutine s1(n)
implicit none
integer,intent(inout) :: n
integer :: jj(n) 
n=n+1
if(size(jj)/=22) print*,101
block
integer  :: ii(n)
n=n+1
if(size(ii)/=23) print*,102
block
integer :: kk(n)
kk=2
if(size(kk)/=24) print*,103
end block
print*,'pass'
end block
 
end subroutine
 
end
