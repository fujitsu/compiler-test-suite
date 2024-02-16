complex,parameter :: cmp1(2) = [(6,3),(3,4)]

real :: rr(2) = cmp1(1)%re
real :: qq(2) = cmp1(1)%im
real :: jj(2) = cmp1(2)%re
real :: kk(2) = cmp1(2)%im


if(SIZE(cmp1) .ne. 2) print*,101
if(SIZEOF(cmp1) .ne. 16) print*,102
if(UBOUND(cmp1,1) .ne. 2) print*,103
if(LBOUND(cmp1,1) .ne. 1) print*,104
if(cmp1(1)%re .ne. 6) print*,105
if(cmp1(1)%im .ne. 3) print*,106
if(cmp1(2)%re .ne. 3) print*,107
if(cmp1(2)%im .ne. 4) print*,108
if(all(rr .ne. 6)) print*,109
if(all(qq .ne. 3)) print*,110
if(all(jj .ne. 3)) print*,111
if(all(kk .ne. 4)) print*,112
PRINT*,"PASS"
end
