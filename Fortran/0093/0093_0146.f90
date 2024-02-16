module m1
complex,parameter :: cmp = (2.45,3.78)
end module

use m1
real::rr,ii
rr = cmp%re
ii = cmp%im
if(cmp%im .ne. 3.78) print*,101
if(cmp .ne. (2.45,3.78)) print*,102
if(rr .ne. 2.45) print*,103
if(ii .ne. 3.78) print*,104
print*,"PASS"
end
