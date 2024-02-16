complex,parameter :: cmp1 = (2,3)

real :: qq = cmp1%re
real :: rr = cmp1%im

if ( SIZEOF(cmp1) .ne. 8) print*,101
if (cmp1%re .ne. 2) print*,102
if (cmp1%im .ne. 3) print*,103
if (qq .ne. 2) print*,104
if (rr .ne. 3) print*,105
PRINT*,"PASS"

end
