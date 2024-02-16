complex,parameter :: cmp(2) = (6,3)
real::rr(2),qq(2)        

rr = cmp(2)%re
qq = cmp(2)%im

if (any(rr .ne. 6)) print*,101
if (any(qq .ne. 3)) print*,102
if (cmp(2)%re .ne. 6) print*,103
if (cmp(2)%im .ne. 3) print*,104
if (size(cmp%re) .ne. 2) print*,105
if (sizeof(cmp%re) .ne. 8) print*,106
PRINT*,"PASS"
end
