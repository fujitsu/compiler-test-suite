module m1
contains
subroutine s01(n)
integer :: n(3)
complex :: c(1)
write(1,*) 1
rewind 1
read(1,*) c(n(2):n(3))%re
if (c(1)%re/=1) print *,108
end subroutine
 end
 use m1
 integer :: s(3)
 s=1
 call s01(s)
 print *,'pass'
 end
