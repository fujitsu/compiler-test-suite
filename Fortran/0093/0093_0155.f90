module m1
complex,parameter :: cmp(2) = (2.45,3.78)
end module

use m1

if(cmp(1)%im .ne. 3.78) print*,104
if(cmp(2)%re .ne. 2.45) print*,105
print*,"PASS"
end
