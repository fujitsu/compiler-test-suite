implicit none
type tt
 integer :: ii
end type

integer :: act=22
call s1(act)
 
contains
subroutine s1(n)
implicit none
integer,intent(inout) :: n
type(tt) :: jj(n,n+1) 
n=n+1
if(size(jj)/=22*23) print*,101
block
type(tt)  :: ii(n,n+1)
n=n+1
if(size(ii)/=23*24) print*,102
block
type(tt) :: kk(n+1,n+2,n+3)
kk=tt(2)
if(size(kk)/=25*26*27) print*,103
end block
print*,'pass'
end block
 
end subroutine
 
end
