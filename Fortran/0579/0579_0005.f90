Module m
interface
subroutine s1(d1)
integer :: d1
end subroutine
subroutine s2(d2)
integer :: d2
end subroutine
end interface
end module

use m
integer :: ii=4
integer :: jj=5
procedure(s1),pointer :: ptr
procedure(s1) :: prc
procedure(ptr),pointer:: prc_ptr
prc_ptr=>s2
call prc(jj)
call prc_ptr(ii)
if(ii .ne. 9)print*,"101"
if(jj .ne. 8)print*,"102"
print *,'pass'
end
    
subroutine s1(d1)
integer :: d1
d1=d1+2
end subroutine
subroutine s2(d2)
integer :: d2
d2=d2+5
end subroutine
subroutine prc(d3)
integer :: d3
d3=d3+3
end subroutine
