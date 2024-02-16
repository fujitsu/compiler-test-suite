module m1
complex,allocatable :: cmp
real,allocatable::rr,ii        
end module

use m1

allocate (cmp)

cmp = (2.45,3.78)

allocate(rr,source = cmp%re)
allocate(ii,source = cmp%im)


if(SIZEOF(cmp%re) .ne. 4) print*,101
if(SIZEOF(cmp%im) .ne. 4) print*,102
if(cmp%re .ne. 2.45) print*,103
if(cmp%im .ne. 3.78) print*,104
if(rr .ne. 2.45) print*,105
if(ii .ne. 3.78) print*,106
if(cmp .ne. (2.45,3.78)) print*,107
print*,"PASS"
end
