complex,parameter :: cmp1(2) = (6.78,3.32)

real :: rr(2) = cmp1(2)%re
real :: qq(2) = cmp1(2)%im

if(SIZE(cmp1%re) .ne. 2) print*,101
if(SIZEOF(cmp1%im) .ne. 8) print*,102
if(UBOUND(cmp1%re,1) .ne. 2) print*,103
if(LBOUND(cmp1%im,1) .ne. 1) print*,104
if(cmp1(2)%re .ne. 6.78) print*,105
if(cmp1(2)%im .ne. 3.32) print*,106
if(all(rr .ne. 6.78)) print*,107
if(all(qq .ne. 3.32)) print*,108
print*,"PASS"
end
