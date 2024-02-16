complex :: cmp1(2) 
real :: rr(2) ,qq(2),jj(2),kk(2)

cmp1 =[ (6,3),(4,5)] 

rr = cmp1(1)%re
qq = cmp1(1)%im
jj = cmp1(2)%re
kk = cmp1(2)%im

if(SIZE(cmp1%re) .ne. 2) print*,101
if(SIZEOF(cmp1%im) .ne. 8) print*,102
if(UBOUND(cmp1%re,1) .ne. 2) print*,103
if(LBOUND(cmp1%im,1) .ne. 1) print*,104
if(cmp1(1)%re .ne. 6) print*,105
if(cmp1(1)%im .ne. 3) print*,106
if(cmp1(2)%re .ne. 4) print*,107
if(cmp1(2)%im .ne. 5) print*,108
if(all(rr .ne. 6)) print*,109
if(all(qq .ne. 3)) print*,110
if(all(jj .ne. 4)) print*,111
if(all(kk .ne. 5)) print*,112
PRINT*,"PASS"

end
