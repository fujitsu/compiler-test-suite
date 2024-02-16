complex,allocatable :: cmp1(:)
real :: rr(2),qq(2)

allocate (cmp1(2))  

cmp1(:) = [(6.8,7.4),(8.9,9.88)] 

rr = cmp1%re
qq = cmp1%im

if (sizeof(cmp1%re) .ne. 8) print*,101
if (UBOUND(cmp1%im,1) .ne. 2) print*,102
if (LBOUND(cmp1%re,1) .ne. 1) print*,103
if ( all(rr .ne. 8.9)) print*,104
if ( all(qq .ne. 9.88)) print*,105
PRINT*,"PASS"
end
