complex,parameter :: cmp1 = (2,3)
real :: ii,rr
ii= cmp1%re
rr= cmp1%im
if (cmp1%re .ne. 2) print*,101
if (sizeof(cmp1%re) .ne. 4) print*,102
if (ii .ne. 2) print*,102
if (rr .ne. 3) print*,103
PRINT*,"PASS"
End
