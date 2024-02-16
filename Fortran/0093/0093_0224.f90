module m1
complex :: cmp
end module

use m1


cmp%re = 2.45
cmp%im = 3.78



if(SIZEOF(cmp%re) .ne. 4) print*,101
if(SIZEOF(cmp%im) .ne. 4) print*,102
if(cmp%re .ne. 2.45) print*,103
if(cmp%im .ne. 3.78) print*,104
if(cmp .ne. (2.45,3.78)) print*,105
print*,"PASS"
end
