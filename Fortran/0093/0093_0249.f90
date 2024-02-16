module m1
contains
subroutine s01(n)
complex :: c(1)
write(1,*) 1
rewind 1
read(1,*) c(n:n)%re
if (c(1)%re/=1) print *,108
end subroutine
 end
 use m1
 call s01(1)
 print *,'pass'
 end
