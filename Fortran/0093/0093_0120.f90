integer,allocatable :: ii(:)
allocate(ii(5))
call sub(ii)

contains
SUBROUTINE sub(a)
implicit none
integer :: a(5)
complex, DIMENSION(SIZE(a)) :: auto
real::rr(SIZE(a)),ii(SIZE(a))

auto=(2,3)
rr = auto(2) %re
ii = auto(2) %im

if(SIZE(auto%re) .ne. 5) print*,101
if(SIZEOF(auto%im) .ne. 20) print*,102
if(UBOUND(auto%re,1) .ne. 5) print*,103
if(LBOUND(auto%im,1) .ne. 1) print*,104
if(all(auto%re .ne. 2)) print*,105
if(all(auto%im .ne. 3)) print*,106
if(all(rr .ne. 2)) print*,107
if(all(ii .ne. 3)) print*,108
if(any(auto .ne. (2,3))) print*,109
print*,"PASS"
END SUBROUTINE
end
